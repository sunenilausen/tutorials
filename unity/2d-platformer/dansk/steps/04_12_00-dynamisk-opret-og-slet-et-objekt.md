## Dynamisk opret og slet et objekt

Hvis man dynamisk vil oprette et objekt, fx til et skud, så skal man
gøre følgende. Lav en PreFab af objektet i GUI’en.

I scriptet laves en variabel til at holde den PreFab som man vil kreere.

```csharp
[SerializeField] GameObject objPreFab;
```

Man skal så bagefter ind i GUI’en og ’trække’ den PreFab man vil bruge
ind i det flet som er kommet i scriptet (**objPreFab**).

Derefter kan PreFab’en genereres på følgende måde:

Instantiate(objPreFab, pos, objPreFab.transform.rotation);

Hvor pos er en vektor som angiver, hvor objektet skal genereres.

Hvis et dynamisk objekt ’forsvinder’ ud af skærmen eller på anden måde
ikke er aktivet mere, er det vigtigt at det slettes igen, da der ellers
over tid vil komme alt for mange ’døde’ objekter. Man laver et script
som skal sidde fast på det objekt som skal uddø. Scriptet kan se således
ud – her undersøger man om objektet er uden for området, og i givet fald
så slettes det.

```csharp
void Update()
{
    // Destroy object if x position is less than leftLimit
    if (transform.position.x < leftLimit)
    {
        Destroy(gameObject);
    }
}
```
