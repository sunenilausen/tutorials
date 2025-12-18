#!/usr/bin/env ruby
# Webscraper to download images from Coding Pirates guide

require 'net/http'
require 'uri'
require 'nokogiri'
require 'fileutils'

URL = 'https://guides.codingpirates.dk/lectures/20'
OUTPUT_DIR = File.join(__dir__, 'images')

# Ensure output directory exists
FileUtils.mkdir_p(OUTPUT_DIR)

# Fetch the page HTML
def fetch_page(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  # Follow redirects
  while response.is_a?(Net::HTTPRedirection)
    uri = URI.parse(response['location'])
    response = Net::HTTP.get_response(uri)
  end

  response.body.force_encoding('UTF-8')
end

# Download an image and return the binary data
def download_image(url)
  uri = URI.parse(url)

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = (uri.scheme == 'https')

  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)

  # Follow redirects (up to 10 times)
  redirect_count = 0
  while response.is_a?(Net::HTTPRedirection) && redirect_count < 10
    redirect_count += 1
    location = response['location']
    # Handle relative redirects
    if location.start_with?('/')
      location = "#{uri.scheme}://#{uri.host}#{location}"
    end
    uri = URI.parse(location)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == 'https')
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
  end

  response.body
end

# Sanitize filename - replace danish chars and remove invalid characters
def sanitize_filename(name)
  name = name.strip
  # Replace danish characters
  name = name.gsub('æ', 'ae').gsub('ø', 'oe').gsub('å', 'aa')
  name = name.gsub('Æ', 'Ae').gsub('Ø', 'Oe').gsub('Å', 'Aa')
  # Remove or replace invalid filename characters
  name = name.gsub(/[\/\\:*?"<>|]/, '_')
  # Replace spaces with underscores
  name = name.gsub(/\s+/, '_')
  name
end

# Get file extension from URL or content type
def get_extension(url)
  ext = File.extname(URI.parse(url).path).downcase
  ext.empty? ? '.png' : ext
end

puts "Fetching page: #{URL}"
html = fetch_page(URL)
doc = Nokogiri::HTML(html)

# Find all images with alt text
images = doc.css('img[alt]')

puts "Found #{images.length} images with alt text"
puts "-" * 50

# Track used filenames to handle duplicates
used_filenames = {}

images.each_with_index do |img, index|
  src = img['src']
  alt = img['alt']

  next if alt.nil? || alt.strip.empty?
  next if src.nil? || src.strip.empty?

  # Make absolute URL if relative
  unless src.start_with?('http')
    base_uri = URI.parse(URL)
    src = URI.join("#{base_uri.scheme}://#{base_uri.host}", src).to_s
  end

  ext = get_extension(src)
  base_filename = sanitize_filename(alt)

  # Handle duplicate filenames
  if used_filenames[base_filename]
    used_filenames[base_filename] += 1
    filename = "#{base_filename}_#{used_filenames[base_filename]}#{ext}"
  else
    used_filenames[base_filename] = 1
    filename = "#{base_filename}#{ext}"
  end

  filepath = File.join(OUTPUT_DIR, filename)

  puts "Downloading: #{alt}"
  puts "  From: #{src}"
  puts "  To: #{filename}"

  begin
    image_data = download_image(src)
    File.binwrite(filepath, image_data)
    puts "  Success!"
  rescue => e
    puts "  Error: #{e.message}"
  end

  puts
end

puts "-" * 50
puts "Done! Images saved to: #{OUTPUT_DIR}"
