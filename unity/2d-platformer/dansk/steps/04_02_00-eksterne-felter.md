## Eksterne felter

I mange tilfælde har man brug for at kunne se eller tilgå script
variable fra Unity GUI’en. Ved at skrive \[SerializeField\] foran en
variabel, bliver den synlig i **Inspector**’en.

\[SerializeField\] Text xxtext;

\[SerializeField\] GameObject\[\] xxList;

Den første linje laver et enkelt felt, mens den anden laver en liste af
felter.

Hvis man har mange forskellige felter kan man indsætte nogle kosmetiske
tekster for at gøre det mere overskueligt i **Inspector**’en.

\[Header("Texts")\] // Laver en tekst boks

\[Space\] // Laver en tom linje (afstand)

\[Tooltip("tip")\] // Laver et tooltip for næste linje, hvis man

holder musen over feltet

![](media/image52.png){ width=5.92708in height=2.61597in }

Her er **Texts** og **Sounds** eksempler på Header felter.
