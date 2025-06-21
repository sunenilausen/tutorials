## Tidshåndtering

For hver frame i spillet, er der gået tid siden sidste frame. Denne tid
er god at bruge når man i hver loop fx bevæger en figur. Tiden er i
sekunder (dvs. et kommatal):

Time.deltaTime;

Så hvis man skal lave en hastighed, som er uafhængig af frameraten, så
kan det gøres på følgende måde:

```csharp
move = speed * Time.deltaTime;
```

hvor speed angiver en faktor for hvor hurtigt noget skal flytte sig.

Hvad man skal lave et delay mellem fx to skud, kan man gøre følgende:

```csharp
tidVent += Time.deltaTime;

if (tidVent > 2) { // 2 sekunder
    // <skud>
    tidVent = 0;
}
```
