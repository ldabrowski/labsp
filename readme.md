Laboratorium 3

1. Zad 8. Zlicz wszystkie pliki znajdujące się w katalogu /etc i jego podkatalogach. - odp. ls -1 /etc/. | wc -l

2. Zad. 7. Kazde slowo pliku wyswietlane w osobnej linii. - odp. cat plik.txt | tr " \t" "\n"
                                                           
3. Zad. 9 Zlicz ilosc znakow z 3 pierwszych lini pliku /etc/passwd. - odp. cat /etc/passwd/ | head -n 3 | wc -m
