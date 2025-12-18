# Flyt forhindring

Først laver vi en bloksekvens der får vores forhindring til at starte i højre side (x position 250 eller lignende)
![Nulstillende bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdU1CIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2b9d624fc7fd0bc231e7b3043f2e38de78a44bf6/%7B980B99E6-0499-466B-BE52-CDF4E6255592%7D.png)

Så laver vi en anden bloksekvens der bevæger vores forhindring mod venstre (den negative x-retning)
![Bevægende bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdUlCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--74ca6f49fe366dc70568a73026d4e3abe69e4ef2/%7B445BD9AB-6EA2-4D1D-BA8B-95E1DF8B05CE%7D.png)

Til sidst laver vi en bloksekvens der flytter vores forhindring tilbage til højre side af skærmen når den har ramt venstre side.
![Tilbageflyttende bloksekvens](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdUVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--094a8c65e7e971c59f5f2e1e0f47b01179642090/%7B67AEF70A-1EF7-4006-84B7-06271CBE0144%7D.png)

Vores kode skulle nu se sådan ud
![Færdig kode](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdUFCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9a6ea06f6f2e8fbfa5c1415a763ef1076ca9b5ed/%7BF3245977-B213-456D-BA4C-FD2BAF9E5E59%7D.png)
