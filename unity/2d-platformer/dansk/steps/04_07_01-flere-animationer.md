### Flere animationer (avanceret)

Hvis man har brug for flere forskellige animation til den samme figur,
som stå og løbe, så gentager man skridtene oven for hver animation.

Nu skal man tilføje nogle transitioner og parametre til at styre det med
(se video). Disse parametre kan så tilgås fra scriptet på følgende måde:

```csharp
animator = GetComponent\<Animator\>();

animator.SetTrigger("Die");

animator.SetFloat("Velocity", speed);
```

Husk, at parametrene skal staves på helt samme måde som i
**Animator**’en (Die/Velocity)!
