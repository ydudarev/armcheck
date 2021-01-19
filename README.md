# armcheck
Script for check ARM requirement"s
Подготовка к запуску :

1. Cоздать дирректорию C:\tmp\
2. Cкопировать https://github.com/ydudarev/armcheck/blob/master/tcping.exe  в эту папку C:\tmp\
3. Скачать АРМ по ссылке http://10.77.5.10/install/OprWS-vpn.application в случае, если АРМ не установлен
4. Запустить АРМ

Проверки и иcправления собрал в 2 скрипта :
https://github.com/ydudarev/armcheck/blob/master/step0.bat
https://github.com/ydudarev/armcheck/blob/master/step1.ps1

Для запуска используется файл step0.bat после завершения работы
в папке со скриптом будет создан файл со статистикой %computername%_result.txt
