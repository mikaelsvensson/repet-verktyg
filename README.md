Detta är ett par skript för att underlätta närvarorapportering för Nacka Equmenia.

Problemet
---------
Tidsrapportering ska ske både i Equmenias system Repet och i Nacka kommuns system Aktivitetskortet.

Lösning
-------
0. I Repet:
    0. Rapportera närvaro
    0. Gå till Rapporter > Skapa rapport och ange följande:
        * Rapport: Närvarokort
        * Huvudgrupp: Scout
        * Undergrupp: Inget val
        * Grupp: Inget val, eller en specifik patrull
        * År och termin: (Självförklarande!)
        * Exportera som: EXCEL (men valet spelar ev. ingen roll)
    0. Tryck på Kör rapport (knapp som ser inaktiverad ut men som inte är det)
    0. Klicka på den blå diskettikonen i överkanten av fönstret som öppnas.
    0. Välj XML-alternativet högst upp och spara filen som genereras.
0. På något sätt ska nu den sparade XML-filen kombineras med "repet_G7_narvarolista_to_birthdates_by_event.xsl" i detta projekt. Om du kör Windows kan detta göras på följande sätt:
    0. Sök efter "kör" på startmenyn och välj "Kör".
    0. Ange "PowerShell.exe -ExecutionPolicy Unrestricted" och tryck på OK.
    0. Ett blått fönster öppnas och du ser något i stil med "PS C:\Users\Mikael>".
    0. Gå till den här mappen som den här filen ligger i mha cd-kommandot (cd = Change Directory). Exempel: "cd D:\Dokument\Utveckling\repet-verktyg\"
    0. Försök köra kommandot ".\process_xslt.ps1".
    0. PS D:\Dokument\Utveckling\repet-verktyg> .\process_xslt.ps1 -xml G7%5Fn%C3%A4rvarolista.xml -xsl repet_G7_narvarolista_to_birthdates_by_event.xsl -output .\narvarolista.txt
0. Starta Firefox och installera tillägget Greasemonkey
0. Gå till https://github.com/mikaelsvensson/repet-verktyg/raw/master/kryssa_aktivitetskortet.user.js
    0. Firefox ska nu fråga dig om du vill installera skriptet. Gör det.
0. Gå till https://aktivitetskort.se/?ftag=0182 och logga in
    0. Nu ska knappen "Fyll i snabbt och smidigt!?" dyka upp när du skapar nya sammankomster.
    0. Klicka på knappen "Fyll i..."
    0. Kopiera listan med födelsedatum (6-siffriga) från den genererade närvarolistan (textfilen som skapades för ett par steg sedan) och klistra in i inmatningsrutan som visas när du klickar på "Fyll i...".
    0. Tryck på SPARA
    0. Tryck på Ny sammankomst
    0. Fyll i datum och klockslag för nästa möte. Tryck på "Skapa ny sammankomst"
    0. Repetera tills allt är klart =)
    
Dessutom:

* Kom ihåg att skicka in statistiken i Repet. Detta görs i slutet av varje år.
* Kom ihåg att skicka in statistiken i Aktivitetskortet (det finns två bidrag, dels verksamhetsbidrag och dels administrativt bidrag). Detta görs varje halvår.