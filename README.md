Detta �r ett par skript f�r att underl�tta n�rvarorapportering f�r Nacka Equmenia.

Problemet
---------
Tidsrapportering ska ske b�de i Equmenias system Repet och i Nacka kommuns system Aktivitetskortet.

L�sning
-------
0. I Repet:
    0. Rapportera n�rvaro
    0. G� till Rapporter > Skapa rapport och ange f�ljande:
        * Rapport: N�rvarokort
        * Huvudgrupp: Scout
        * Undergrupp: Inget val
        * Grupp: Inget val, eller en specifik patrull
        * �r och termin: (Sj�lvf�rklarande!)
        * Exportera som: EXCEL (men valet spelar ev. ingen roll)
    0. Tryck p� K�r rapport (knapp som ser inaktiverad ut men som inte �r det)
    0. Klicka p� den bl� diskettikonen i �verkanten av f�nstret som �ppnas.
    0. V�lj XML-alternativet h�gst upp och spara filen som genereras.
0. P� n�got s�tt ska nu den sparade XML-filen kombineras med "repet_G7_narvarolista_to_birthdates_by_event.xsl" i detta projekt. Om du k�r Windows kan detta g�ras p� f�ljande s�tt:
    0. S�k efter "k�r" p� startmenyn och v�lj "K�r".
    0. Ange "PowerShell.exe -ExecutionPolicy Unrestricted" och tryck p� OK.
    0. Ett bl�tt f�nster �ppnas och du ser n�got i stil med "PS C:\Users\Mikael>".
    0. G� till den h�r mappen som den h�r filen ligger i mha cd-kommandot (cd = Change Directory). Exempel: "cd D:\Dokument\Utveckling\repet-verktyg\"
    0. F�rs�k k�ra kommandot ".\process_xslt.ps1".
    0. PS D:\Dokument\Utveckling\repet-verktyg> .\process_xslt.ps1 -xml G7%5Fn%C3%A4rvarolista.xml -xsl repet_G7_narvarolista_to_birthdates_by_event.xsl -output .\narvarolista.txt
0. Starta Firefox och installera till�gget Greasemonkey
0. G� till https://github.com/mikaelsvensson/repet-verktyg/raw/master/kryssa_aktivitetskortet.user.js
    0. Firefox ska nu fr�ga dig om du vill installera skriptet. G�r det.
0. G� till https://aktivitetskort.se/?ftag=0182 och logga in
    0. Nu ska knappen "Fyll i snabbt och smidigt!?" dyka upp n�r du skapar nya sammankomster.
    0. Klicka p� knappen "Fyll i..."
    0. Kopiera listan med f�delsedatum (6-siffriga) fr�n den genererade n�rvarolistan (textfilen som skapades f�r ett par steg sedan) och klistra in i inmatningsrutan som visas n�r du klickar p� "Fyll i...".
    0. Tryck p� SPARA
    0. Tryck p� Ny sammankomst
    0. Fyll i datum och klockslag f�r n�sta m�te. Tryck p� "Skapa ny sammankomst"
    0. Repetera tills allt �r klart =)
    
Dessutom:

* Kom ih�g att skicka in statistiken i Repet. Detta g�rs i slutet av varje �r.
* Kom ih�g att skicka in statistiken i Aktivitetskortet (det finns tv� bidrag, dels verksamhetsbidrag och dels administrativt bidrag). Detta g�rs varje halv�r.