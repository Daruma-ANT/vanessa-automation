﻿# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Имя компьютера, Порт

	* Привет! В этом уроке я расскажу тебе про то, как устроена таблица клиентов тестирования. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		

	* Посмотрим какие ещё настройки есть в таблице.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Настройки клиентов тестирования"
		И Пауза 1

	* Поговорим про случай, когда клиент тестирования будет запущен как тонкий или толстый клиент.	
	* Тогда в этой колонке задаётся имя компьютера, на котором находится уже запущенный клиент тестирования, либо где будет запускаться новый клиент тестирования.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "Имя компьютера"
		
	* Если клиент тестирования запускается на том же ПК, что и менеджер тестирования, то в настройке надо указать значение localhost
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ИмяКомпьютера' 'localhost'
		И Пауза 0.1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "localhost"

	* При этом, если нужно запустить новый клиент тестирования, то в колонке порт запуска можно указать значение свободного порта на данном ПК.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Порт"
	* Или просто указать значение 1.	
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '1'
		И Пауза 0.1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Порт"
	* Если нужно подключиться к уже запущенному клиенту тестирования, то в поле порт надо указать реальное значение порт^а, на котором ранее был запущен клиент тестирования.
		И Пауза 2
	
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '12345'
		И Пауза 0.1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Порт"
	* Если указать порт неправильно, то подключиться к ранее запущенному клиенту не получится.
	* Важный момент. При запуске нового клиента тестирования Vanessa Automation будет проверять список доступных портов в системе и выберет тот, который сейчас свободен.
	* Также есть возможность указать диапазон портов, чтобы порт выбирался из него.

	* Это делается с помощью вот этой настройки
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускКлиентаТестирования' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "ДиапазонПортовTestclient" "Тут можно указать диапазон портов"
		И Пауза 1
		

	* При запуске нового клиента тестирования, если включено использование компоненты VanessaExt, будет заполнено поле, содержащее идентификатор процесса.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНесколькоКлиентовТестирования' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияPIDКлиента" "PID процесса"
		

	* Важный момент. Уникальность клиента тестирования для тонкого и толстого клиента будет определяться именно по порту. Другие поля не учитываются.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Уникальность по значению порта"


	* На этом всё, переходи к следующему уроку интерактивной справки.

