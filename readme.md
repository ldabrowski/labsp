#Laboratorium 3

1. Zad 8. Zlicz wszystkie pliki znajdujące się w katalogu /etc i jego podkatalogach.
```sh
find /etc/ -type f 2> errors | wc -l
```

2. Zad. 7. Kazde slowo pliku wyswietlane w osobnej linii.
```sh
cat plik.txt | tr " \t" "\n"
```                                              
3. Zad. 9 Zlicz ilosc znakow z 3 pierwszych lini pliku /etc/passwd.
```sh
cat /etc/passwd | head -n 3 | wc -m
```

#Laboratorium 4

1.Wyświetl listę plików z aktualnego katalogu, zamieniając wszystkie małe litery na duże.
```sh
ls|tr [:lower:] [:upper:]
```
2.Wyświetl listę praw dostępu do plików w aktualnym katalogu, ich rozmiar i nazwę.
```sh
find . -printf "Plik: %f Rozmiar: %s Prawa: %M \n" -maxdepth 1
```
3.Wyświetl listę plików w aktualnym katalogu, posortowaną według rozmiaru pliku.
```sh
ls -S
```
4.Wyświetl zawartość pliku /etc/passwd posortowaną według numerów UID w kolejności od największego do najmniejszego.
```sh
sort -t : -n -k3 -r /etc/passwd
```

