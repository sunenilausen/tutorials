## Particles

Particles are set up in the GUI and can then be controlled from a script in the following
way.

```csharp
[SerializeField] ParticleSystem explosionParticle;

explosionParticle.Play();

explosionParticle.Stop();
```