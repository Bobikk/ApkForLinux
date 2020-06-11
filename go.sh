# !/bin/bash

dir=apk/*
files=0
for i in $dir; do
	if [[ $i == *.apk ]]; then
		files=`expr $files + 1`
	fi
done
if [ $files -eq 0 ]; then
	echo 'Ни одной программы не будет установлено! Переместите ваши APK файлы в папку' `pwd`/apk
else 
	echo 'Будут установлены данные приложения:'
	echo $dir
	echo 'Будет установлено '$files' программа'
	read -p 'Нажмите на "Enter", чтобы продолжить' any
	adb install apk/*
fi 