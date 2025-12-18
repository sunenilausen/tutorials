# Tyngdekraft og Hop

Ved at trække blokke ind på kodesiden kan vi lave tyngdekraft.
Hiv "når der klikkes på" ind til at starte en ny sekvens af kode. Denne sekvens får ansvaret for vores tyngdekraft opførsel.
I sekvensen bruger vi en "forever" og en "change y by " blok til at få vores sprite til at falde nedaf.
![Kodeblokke](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdXNCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--df9d6062ef26fe86cdbff42a455ed88cc003b282/%7B651AFD17-DFCC-4863-AB11-4F46A3185AFA%7D.png)

For at få rigtig tyngdekraft skal vi accelerere mod jorden, det gør vi ved at have en variabler der bestemmer farten mod jorden.
Lav en ny variabel ved at trykke på "Lav en variable", og kald den opadhastighed.
![Make a variabel knap](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdW9CIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5a20521336c6e2ba57f1623d41f1ad8a9c709f62/%7BDBE021C0-0B34-45F4-B935-BF1F7E1E7B82%7D.png)

I vores bloksekvens, hiv en variabel blok ind i "for evigt", så opadhastigheden bliver større i hver gennemgang af forever loopen. Derefter ændrer vi y med opadhastigheden.
![Ændret bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdWtCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5234c861b723f6bc7c9a7a6eea3d294c7cb3eaf9/%7B1AE66010-3442-4BC1-8DEB-BD9BD28BAC7B%7D.png)

Så virker vores tyngdekraft!

Men for at vores figur går tilbage til start skal vi lave en ny bloksekvens.
Hiv en ny "når der klikkes på" ind, og så hiv en "gå til x,  y" ind og sæt det til 0,0. Det nulstiller vores position.
![Ny bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdWdCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6c8a9a746f2bf5934bfaf55b521ab1cd715fb4c1/%7B5CF5A617-4BB0-4098-9A6E-95574342915B%7D.png)

Nulstil også vores variabel til 0
![Ændret bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdThCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0db8c94d2e922b41950d10b420b838796d4901d3/%7B95A9E379-66EC-48BB-BCE6-3680845F1F23%7D.png)

Så laver vi en tredje bloksekvens hvor det er mellemrum tasten der starter koden.
Vi sætter vores opadhastighed til 10 hvilket betyder vores figur går opad.
![Tredje bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdWNCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--edc0960ec17f04ab7c744fe5a25fc17e2e3cc2f8/%7B3F39C55D-5C00-4E72-9413-76B97C88EE41%7D.png)

Vores kode skulle nu se sådan ud
![Alt vores kode](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdVlCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--571bcedce10c066b3874418aed1e309d9a7a78cf/%7BA9F649EB-3409-4310-9A31-79327231CBD6%7D.png)
