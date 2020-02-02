# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Заполнение каталогов в полях основной формы и переключение флагов
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий



Сценарий: Заполнение каталогов в полях основной формы и переключение флагов
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И Я запоминаю значение выражения '"c:\temp\111\222\333\444"' в переменную "ИмяКаталога"
	И Я запоминаю значение выражения '"c:\temp\111\222\333*"' в переменную "ЗначениеШаблона"
	
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогПроекта"
	Тогда элемент формы с именем "КаталогПроекта" стал равен шаблону "$ЗначениеШаблона$"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогИнструментов"
	Тогда элемент формы с именем "КаталогИнструментов" стал равен шаблону "$ЗначениеШаблона$"
	
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я устанавливаю флаг с именем 'ДобавлятьКИмениСценарияУсловияВыгрузки'
	
	И я устанавливаю флаг с именем 'ДелатьСкриншотПриВозникновенииОшибки'
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиСкриншотов"
	Тогда элемент формы с именем "КаталогВыгрузкиСкриншотов" стал равен шаблону "$ЗначениеШаблона$"
	
	И я разворачиваю группу с именем "ГруппаЛогТекст"
	
	И я устанавливаю флаг с именем 'ДелатьЛогВыполненияСценариевВТекстовыйФайл'
	И я устанавливаю флаг с именем 'ВыводитьВЛогВыполнениеШагов'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ИмяФайлаЛогВыполненияСценариев"
	Тогда элемент формы с именем "ИмяФайлаЛогВыполненияСценариев" стал равен шаблону "$ЗначениеШаблона$"
	
	
	И я устанавливаю флаг с именем 'ДелатьЛогОшибокВТекстовыйФайл'
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ИмяКаталогаЛогОшибок"
	Тогда элемент формы с именем "ИмяКаталогаЛогОшибок" стал равен шаблону "$ЗначениеШаблона$"


	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиAllure"
	Тогда элемент формы с именем "КаталогВыгрузкиAllure" стал равен шаблону "$ЗначениеШаблона$"

	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиAllureБазовый"
	Тогда элемент формы с именем "КаталогВыгрузкиAllureБазовый" стал равен шаблону "$ЗначениеШаблона$"

	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогОтносительноКоторогоНадоСтроитьИерархию"
	Тогда элемент формы с именем "КаталогОтносительноКоторогоНадоСтроитьИерархию" стал равен шаблону "$ЗначениеШаблона$"


	И я перехожу к закладке с именем "ГруппаCucumber"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеCucumberJson'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиCucumberJson"
	Тогда элемент формы с именем "КаталогВыгрузкиCucumberJson" стал равен шаблону "$ЗначениеШаблона$"

	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиJUnit"
	Тогда элемент формы с именем "КаталогВыгрузкиJUnit" стал равен шаблону "$ЗначениеШаблона$"

	И я перехожу к закладке с именем "ГруппаСППР"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеСППР'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиСППР"
	Тогда элемент формы с именем "КаталогВыгрузкиСППР" стал равен шаблону "$ЗначениеШаблона$"

	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогиСкриптовSikuliX"
	Тогда элемент формы с именем "КаталогиСкриптовSikuliX" стал равен шаблону "$ЗначениеШаблона$"
	
	И я устанавливаю флаг с именем 'ЗаписьВидеоЭмулироватьДвиженияМышки'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогДляГенерацииКартинок"
	Тогда элемент формы с именем "КаталогДляГенерацииКартинок" стал равен шаблону "$ЗначениеШаблона$"
	
	И я устанавливаю флаг с именем 'СоздаватьИнструкциюHTML'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиИнструкцийHTML"
	Тогда элемент формы с именем "КаталогВыгрузкиИнструкцийHTML" стал равен шаблону "$ЗначениеШаблона$"
	
	И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиИнструкцийMarkdown"
	Тогда элемент формы с именем "КаталогВыгрузкиИнструкцийMarkdown" стал равен шаблону "$ЗначениеШаблона$"

	И я устанавливаю флаг с именем 'СоздаватьИнструкциюВидео'
	И я устанавливаю флаг с именем 'ЗаписьВидеоФормироватьИнструкциюТипHTML'
	И я снимаю флаг с именем 'ЗаписьВидеоФормироватьИнструкциюТипВидео'
	И я устанавливаю флаг с именем 'ЗаписьВидеоФормироватьИнструкциюТипВидео'
	
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогВыгрузкиИнструкцийВидео"
	Тогда элемент формы с именем "КаталогВыгрузкиИнструкцийВидео" стал равен шаблону "$ЗначениеШаблона$"

	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "КаталогПроекта1"
	Тогда элемент формы с именем "КаталогПроекта1" стал равен шаблону "$ЗначениеШаблона$"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоКаталогДляВременныхФайлов"
	Тогда элемент формы с именем "ЗаписьВидеоКаталогДляВременныхФайлов" стал равен шаблону "$ЗначениеШаблона$"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоКомандаConvert"
	Тогда элемент формы с именем "ЗаписьВидеоКомандаConvert" стал равен шаблону "$ЗначениеШаблона$"

	И я устанавливаю флаг с именем 'ЗаписьВидеоКэшироватьВидеоВставки'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоКэшВидеоВставок"
	Тогда элемент формы с именем "ЗаписьВидеоКэшВидеоВставок" стал равен шаблону "$ЗначениеШаблона$"

	И я перехожу к закладке с именем "СтраницаАудио"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоКаталогМузыки"
	Тогда элемент формы с именем "ЗаписьВидеоКаталогМузыки" стал равен шаблону "$ЗначениеШаблона$"

	И я устанавливаю флаг с именем 'ЗаписьВидеоДелатьНаложениеTTS'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоПутьКДвижкуTTS"
	Тогда элемент формы с именем "ЗаписьВидеоПутьКДвижкуTTS" стал равен шаблону "$ЗначениеШаблона$"

	И я устанавливаю флаг с именем 'ЗаписьВидеоКэшироватьФайлыTTS'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоКэшФайловTTS"
	Тогда элемент формы с именем "ЗаписьВидеоКэшФайловTTS" стал равен шаблону "$ЗначениеШаблона$"


	И я буду выбирать внешний файл "$ИмяКаталога$"
	И в таблице "ЗаписьВидеоСловарьЗамен" я нажимаю на кнопку с именем 'ЗаписьВидеоСловарьЗаменДобавить'
	И в таблице "ЗаписьВидеоСловарьЗамен" я завершаю редактирование строки

	Тогда таблица "ЗаписьВидеоСловарьЗамен" стала равной по шаблону
		| 'Значение'          |
		| '$ЗначениеШаблона$' |

	И я меняю значение переключателя с именем 'ЗаписьВидеоТипОзвучкиTTS' на 'Yandex SpeechKit'
	И пауза 1
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоYandexTTSOauthToken"
	Тогда элемент формы с именем "ЗаписьВидеоYandexTTSOauthToken" стал равен шаблону "$ЗначениеШаблона$"
	
	И я меняю значение переключателя с именем 'ЗаписьВидеоТипОзвучкиTTS' на 'Amazon Polly'
	И пауза 1
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоAmazonСекретныйКлюч"
	Тогда элемент формы с именем "ЗаписьВидеоAmazonСекретныйКлюч" стал равен шаблону "$ЗначениеШаблона$"


	И я перехожу к закладке с именем "СтраницаВидеоДополнительные"

	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоФайлКурсораМышки"
	Тогда элемент формы с именем "ЗаписьВидеоФайлКурсораМышки" стал равен шаблону "$ЗначениеШаблона$"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоФайлВодянойЗнак"
	Тогда элемент формы с именем "ЗаписьВидеоФайлВодянойЗнак" стал равен шаблону "$ЗначениеШаблона$"
	
	И я устанавливаю флаг с именем 'ЗаписьВидеоЗаменитьСлайдЗаголовок'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоПутьКСлайдуЗаголовок"
	Тогда элемент формы с именем "ЗаписьВидеоПутьКСлайдуЗаголовок" стал равен шаблону "$ЗначениеШаблона$"

	И я устанавливаю флаг с именем 'ЗаписьВидеоЗаменитьСлайдФинал'
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ЗаписьВидеоПутьКСлайдуФинал"
	Тогда элемент формы с именем "ЗаписьВидеоПутьКСлайдуФинал" стал равен шаблону "$ЗначениеШаблона$"

	И я перехожу к закладке с именем "ГруппаГенерацияEPF"
	
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И я нажимаю кнопку выбора у поля с именем "ВерсияПлатформыДляГенерацииEPF"
	Тогда элемент формы с именем "ВерсияПлатформыДляГенерацииEPF" стал равен шаблону "$ЗначениеШаблона$"


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'СоздаватьИнструкциюMarkdownПриИзменении(Неопределено)'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'


	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
	
	И в таблице "КаталогиБиблиотек" я нажимаю на кнопку с именем 'КаталогиБиблиотекДобавить'
	И я буду выбирать внешний файл "$ИмяКаталога$"
	И в таблице "КаталогиБиблиотек" я нажимаю кнопку выбора у реквизита с именем "КаталогиБиблиотекЗначение"
	И в таблице "КаталогиБиблиотек" я завершаю редактирование строки

	Если установлен режим совместимости "НеИспользовать" Тогда
		Тогда таблица "КаталогиБиблиотек" содержит строки по шаблону
			| 'Значение'            |
			| '$ЗначениеШаблона$'   |



	И я перехожу к закладке с именем "СтраницаКлиентыТестирования"
	И я устанавливаю флаг с именем 'ЗапускатьТестКлиентВРежимеОтладки'

	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"

	Если установлен режим совместимости "НеИспользовать" Тогда
		И в таблице "КаталогиБиблиотек" я перехожу к строке по шаблону
			| 'Значение'             |
			| 'c:\temp\111\222\333*' |
		И я запоминаю значение таблицы "КаталогиБиблиотек" поля с именем "КаталогиБиблиотекЗначение" как "КаталогиБиблиотекЗначение"
		И в таблице 'КаталогиБиблиотек' я удаляю строку
		И таблица  "КаталогиБиблиотек" не содержит строки:
			| 'Значение'                    |
			| '$КаталогиБиблиотекЗначение$' |		

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И я устанавливаю флаг с именем 'БезопасноеВыполнениеШагов'


	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ИспользоватьКомпоненту1cWinCtrl'
	Если появилось окно с заголовком "Установка внешней компоненты" Тогда
		Тогда открылось окно 'Установка внешней компоненты'
		И я нажимаю на кнопку 'Отмена'
