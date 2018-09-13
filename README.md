# mc-sas-syntax-highlight
Linux MidnightCommander подсветка синтаксиса SAS

Для использования настройки, если нет root прав администратора, в каталоге пользователя нужно создать каталог  
`mkdir -p ~/.mc/cedit`

скопировать общий для всех файл настройки Syntax  
`cp  /usr/share/mc/syntax/Syntax ~/.mc/cedit/`

добавить в этот файл строчки  
`file ..\*\\.sas$ SAS\sScript`  
`include sas.syntax`

положить файл sas.syntax в каталог `~/.mc/cedit/`

Если есть права root администратора, достаточно добавить в файл `/usr/share/mc/syntax/Syntax` строчки  
`file ..\*\\.sas$ SAS\sScript`  
`include sas.syntax`  

и скопировать свой файл sas.syntax в каталог `/usr/share/mc/syntax/`

Можно воспользоваться готовым файлом синтаксиса
[sas.syntax](https://github.com/axxName/mc-sas-syntax-highlight/tree/master/cedit)

Либо, сформировать свой набор ключевых слов и цветов SAS, отредактировав `syntax.sh` и сформировав свой набор ключевых слов
`keywords`

Текущий набор ключевых слов импортирован из плагинов 
[Notepad++ SAS syntax](http://notepad-plus.sourceforge.net/commun/userDefinedLang/userDefineLang_SAS.xml)
