# 2. Flyv fremad

Nu skal vi tilbage til kode fanen for vores rumskib.

Find en "når der klikkes på start" blok, under Hændelser (gul), og sæt den ind i kodevinduet.

![Start blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaWdDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be3facfe9b0543290e8bf4bf24bedcf74cfaa5e/Screenshot%202025-04-07%20145840.png)

Derefter find en "gå trin" blok, under Bevægelse (blå), og sæt din ind under, så de klikker sammen.

![Gå trin blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaWtDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6ed73e463da8bc088d575be6b85331f2bd56281d/Screenshot%202025-04-07%20150012.png)

Så find en "for evigt" blok, under Kontrol (orange), og sæt den rundt om, den blå blok

![For evigt blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaW9DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9fa76e6286ed7b32d0d98b6d0da842cf0f1b7409/Screenshot%202025-04-07%20150157.png)

Hvis du starter spillet nu ved at trykke på det grønne flag så flyver dit skib fremad.

Lad os hellere kunne nulstille skibet når vi starter igen.

Så tag en "gå til x" blok, sæt den ind i toppen, og skriv 0 og 0 i de hvide felter.

![Gå til, for evigt og gå trin blokke](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaXNDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--c5a87c263f0a10c74c794f3a7762c81ea2af695b/Screenshot%202025-04-07%20150336.png)

Nu kan du se den flyve frem hver gang du trykker start.

Men vi vil gerne selv kunne indstille farten løbende i spillet.

Så vi går ind under Variabler og laver en ny variabel som vi giver navnet fart.

![Lav en variabel](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaXdDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--38690a2e79084a01c1774b4fd47f18935063e159/Screenshot%202025-04-07%20151013.png)

![Variabel form](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaTBDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9d4feb33261021a2a6e611acc428c2fdbc0a21e8/Screenshot%202025-04-07%20151043.png)

Derefter trækker vi den nye variabel "fart" ind i stedet for "10" i trin blokken

![Fart erstatter 0  i trin blokken](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaTRDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6fce5449cb269014ad36d6246b6ae3109634d7f8/Screenshot%202025-04-07%20151508.png)

Så skal vi under Hændelser have fat i "når du trykker på mellemrum" blokken, og sætter den ind i kodevinduet.

Derefter skal vi ændre så det er pil opad i stedet for mellemrum der aktiverer blokken.

![Når du trykker på pil opad](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaThDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4f9e024e05dec476ee6cda4ff5a46720366164ae/Screenshot%202025-04-07%20151740.png)

Så skal vi have fat i "ændre fart med 1" blokken under Variabler og sætter ind under pil opad blokken

![ændre fart blok under pil opad](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBakFDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d1ac150378c9d2072bbf209d3bdb87dd72b3c029/Screenshot%202025-04-07%20151852.png)

Du kan nu sætte din fart op ved at trykke på pil op på tastaturet!

Vi skal så sørge for at vi nulstiller farten når spillet starter

![nulstil fart på start](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBakVDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--24b55870dbb5b8fb802e0b08ddaab85c383f864e/Screenshot%202025-04-07%20152031.png)

Og til sidst skal vi også lige kunne sænke vores fart.

Det gør vi ved at kopiere eller gentage de blokke for at øge farten. Vi bruger bare pil nedad og -1.

![Sænk fart blokke](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaklDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--c2408bc7a122e9a513050164d60e0a539ac457db/Screenshot%202025-04-07%20152250.png)

Nu skulle dit rumskib kunne flyve frem og tilbage ved at trykke pil op og ned

Se alle blokke her:

![Alle blokke](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBak1DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b26828dda733db4c2332df93bc683e4a3e3c70b5/Screenshot%202025-04-07%20152319.png)
