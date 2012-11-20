##Laboratorium 3

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
ls --sort=size -1
```
4.Wyświetl zawartość pliku /etc/passwd posortowaną według numerów UID w kolejności od największego do najmniejszego.
```sh
sort -t : -k3 -nr /etc/passwd
```
5.Wyświetl zawartość pliku /etc/passwd posortowaną najpierw według numerów GID w kolejności od największego do najmniejszego, a następnie UID.
```sh
sort -t : -k4 -nr /etc/passwd | sort -t : -k3
```
6.Podaj liczbę plików każdego użytkownika.
```sh
find / -printf "%u\n" 2> /dev/null | sort | uniq -c
```
#Laboratorium 5
Zad. 1
```sh

find ~/ -maxdepth 1 -mtime -10
```
Zad. 2
```sh

find  / -name \*config\* -type f 2> /dev/null
```
Zad. 3
```sh

find ~/ -atime 20
```
Zad. 4
```sh

find /etc \( -type f -and -name a* \) -or \( -type d -and ! -empty \) 2> /dev/null
```
Zad. 5
```sh

rm x??
```
Zad. 6
```sh

mkdir date +%Y-%m-%d
```