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
Zad. 1 Znajdź w swoim katalogu domowym (bez podkatalogów) wszystkie pliki, które zostały zmodyfikowane w ciągu ostatnich dziesięciu dni i wyświetl ich nazwy.
```sh

find ~/ -maxdepth 1 -mtime -10 //maxdepth jako pierwsze//
```
Zad. 2 Znajdź wszystkie pliki zwykłe w systemie, które mają w nazwie ciąg znaków „conf” i wyświetl ich nazwy na ekranie.
```sh

find  / -name \*config\* -type f 2> /dev/null
```
Zad. 3 Znajdź w swoim katalogu domowym wszystkie pliki, które nie były używane w ciągu ostatnich 20 dni.
```sh

find ~/ -atime 20
```
Zad. 4 Znajdź w katalogu /etc wszystkie niepuste podkatalogi i pliki o nazwach zaczynających się na literę „a”.
```sh

find /etc \( -type f -and -name a* \) -or \( -type d -and ! -empty \) 2> /dev/null
```
Zad. 5 Z bieżącego katalogu usuń pliki, których nazwa zaczyna się na literę „x” i zawiera dokładnie trzy znaki.
```sh

rm x??
```
Zad. 6 Skonstruuj polecenie tworzące katalog, którego nazwą będzie aktualna (w momencie wywołania) systemowa data w formacie rrrr-mm-dd.
```sh

mkdir date +%Y-%m-%d
```
#Laboratorium 6
Zad. 1 W pliku plik.txt znajdź wiersze zawierające co najmniej jeden znak.

```sh grep . {1,} plik.txt ```

Zad. 2 Znajdź w plikach pl* wiersze rozpoczynające się od cyfry.

```sh grep ^[0-9] pl* ```

Zad. 3 Znajdź pliki, zawierające wiersz w którym na 9 pozycji występuje litera r.

```sh ls -1 | grep -E '^.{8}r.*' ```
 
Zad. 4 Policz, ilu użytkowników systemu używa powłoki bash (zgodnie z zapisami w pliku /etc/passwd).

```sh grep -c bash /etc/passwd ```

Zad. 5 Znajdź wiersze zawierające liczby rzymskie w pliku plik.txt.

```sh egrep "(X|D|C|M|V|L|I){1,}" plik.txt ```
