﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()","ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования","я открыл форму VanessaBehavoir в режиме самотестирования");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)","ЯЗагрузилСпециальнуюТестовуюФичу","Я загрузил специальную тестовую фичу ""ОсновнаяТестоваяФича""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДеревоТестовЗаполнилосьСтрокамиИзФичи()","ДеревоТестовЗаполнилосьСтрокамиИзФичи","ДеревоТестов заполнилось строками из фичи");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПолеСИменемЯУказываюПутьККаталогуФич(Парам01,Парам02)","ВПолеСИменемЯУказываюПутьККаталогуФич","И В поле с именем ""КаталогФичСлужебный"" я указываю путь к каталогу фич ""StepsRunner""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСкопировалКаталогиБиблиотекВоВторойЭкземплярVanessaBehavoir()","ЯСкопировалКаталогиБиблиотекВоВторойЭкземплярVanessaBehavoir","И я скопировал каталоги библиотек во второй экземпляр VanessaBehavoir");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯНажалНаКнопку(Парам01)","ВТестируемомЭкземпляреЯНажалНаКнопку","И в тестируемом экземпляре я нажал на кнопку ""ВыполнитьОдинШаг""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗакрываюТестируемыйЭкземплярVanessaBehavoir()","ЯЗакрываюТестируемыйЭкземплярVanessaBehavoir","И я закрываю тестируемый экземпляр VanessaBehavoir");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюДанныеПодключенияСеансаИзТестируемогоЭкземпляраВПеременную(Парам01,Парам02)","ЯЗапоминаюДанныеПодключенияСеансаИзТестируемогоЭкземпляраВПеременную","И я запоминаю порт подключения сеанса ""Кладовщик"" из тестируемого экземпляра в переменную ""ПортПодключения""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДобавилВТаблицуTestClientЗаписьСТемиЖеДаннымиПодключения(Парам01)","ЯДобавилВТаблицуTestClientЗаписьСТемиЖеДаннымиПодключения","И я добавил в таблицу TestClient запись с теми же данными подключения ""ДанныеПодключения""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюКоличествоОткрытыхСеансов1СВПеременную(Парам01)","ЯЗапоминаюКоличествоОткрытыхСеансов1СВПеременную","Дано Я запоминаю количество открытых сеансов 1С в переменную ""КоличествоНачальное2""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекунд(Парам01,Парам02,Парам03)","ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекунд","И в тестируемом экземпляре Ванессы у поля ""ФлагСценарииЗагружены""  я жду значения ""Истина"" в течение 20 секунд","","");
	
	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
		
	КонецПопытки;
КонецПроцедуры


&НаКлиенте
Процедура ЯОткрылФормуVanessaBehavoirВРежимеСамотестированияТаймер()
	ИмяОбработчика = "ЯОткрылФормуVanessaBehavoirВРежимеСамотестированияТаймер";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат;
	КонецЕсли;	 
	
	КолСекундТаймер = КолСекундТаймер + 1;
	Если КолСекундТаймер > МаксКолСекундТаймер Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,"Не получилось открыть форму обработки Vanessa Automation.");
		Возврат;
	КонецЕсли;	 
	
	Если Ванесса.СлужебнаяПеременная = Неопределено Тогда
		Возврат;
	КонецЕсли;	 
	
	Если Ванесса.СлужебнаяПеременная <> Неопределено Тогда
		Если НЕ ОткрывалиОбработку Тогда
			ОткрывалиОбработку = Истина;
			ФормаОбработки = Ванесса.СлужебнаяПеременная;
			ФормаОбработки.Объект.РежимСамотестирования = Истина;
			ФормаОбработки.Объект.DebugLog = Истина; //режим самотестирования удобен при полном консольном выводе в режиме отладки
			ФормаОбработки.ХостСистема = Ванесса;
			ФормаОбработки.Объект.ВерсияПлатформыДляГенерацииEPF = Ванесса.Объект.ВерсияПлатформыДляГенерацииEPF;
			ФормаОбработки.Объект.КаталогИнструментов = Ванесса.Объект.КаталогИнструментов;
			ФормаОбработки.Открыть();
		КонецЕсли;	 
		
		Если Ванесса.СлужебнаяПеременная.ФормаVanessaAutomationОткрылась = Истина Тогда
			ОтключитьОбработчикОжидания(ИмяОбработчика);
			ЯОткрылФормуVanessaBehavoirВРежимеСамотестированияПродолжение();
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
Процедура ЯОткрылФормуVanessaBehavoirВРежимеСамотестированияПродолжение()
	ФормаОбработки = Ванесса.СлужебнаяПеременная;
	
	Ванесса.ПроверитьРавенство(ФормаОбработки.Открыта(),Истина,"Форма обработки должна открыться.");
	
	Контекст.Вставить("ОткрытаяФормаVanessaBehavoir",ФормаОбработки);
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры 

&НаКлиенте
//я открыл форму VanessaBehavoir в режиме самотестирования
//@ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()
Процедура ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования() Экспорт
	КолСекундТаймер = 0;
	МаксКолСекундТаймер = 20;
	
	СлужебныйМодульКонфигурацииТестирования = Вычислить("СлужебныйМодуль");
	
	СлужебныйМодульКонфигурацииТестирования.УстановитьЗначениеКонстантыСлужебнойКонфигурации("ИнициализироватьVanessaEditor", Ложь);
	
	Ванесса.ЗапретитьВыполнениеШагов();
	Если Ванесса.Объект.ВерсияПоставки = "single" Тогда
		Если Ванесса.VAОткрытаКакВнешняяОбработка Тогда
			ФормаОбработки = ПолучитьФорму("ВнешняяОбработка.VanessaAutomationsingle.Форма.УправляемаяФорма",,,Истина);
		Иначе	
			ФормаОбработки = ПолучитьФорму("Обработка.VanessaAutomationsingle.Форма.УправляемаяФорма",,,Истина);
		КонецЕсли;	 
		Ванесса.СлужебнаяПеременная = ФормаОбработки;
	Иначе	
		ПутьКОбработке = Ванесса.Объект.КаталогИнструментов + "\vanessa-automation.epf";
		Если НЕ Ванесса.ЗапрещеныСинхронныеВызовы Тогда
			Файл = Новый Файл(ПутьКОбработке);
			Ванесса.ПроверитьРавенство(Файл.Существует(),Истина,"Существует файл vanessa-automation.epf");
		КонецЕсли;	 
		
		Ванесса.СлужебнаяПеременная = Неопределено;
		ДопПараметры = Новый Структура;
		ДопПараметры.Вставить("ПодключитьФормуВСлужебнуюПеременную",Истина);
		ДопПараметры.Вставить("ИмяФормы","УправляемаяФорма");
		ИмяОбработки = Ванесса.ПодключитьВнешнююОбработкуКлиент(ПутьКОбработке,ДопПараметры);
	КонецЕсли;	 
	
	ОткрывалиОбработку = Ложь;
	ПодключитьОбработчикОжидания("ЯОткрылФормуVanessaBehavoirВРежимеСамотестированияТаймер",1,Ложь);
КонецПроцедуры


&НаКлиенте
Процедура СделатьЗагрзукуФичВОткрытойФорме()
	ОткрытаяФормаVanessaBehavoir                   = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.Объект.КаталогФич = Контекст.ПутьКФиче;
	ОткрытаяФормаVanessaBehavoir.ЗагрузитьФичи();
КонецПроцедуры

&НаКлиенте
Процедура ОбработчикНачатьПроверкуСуществования(Существует,ДополнительныеПараметры) Экспорт
	Если НЕ Существует Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не существует.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.ПутьКФиче);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	СделатьЗагрзукуФичВОткрытойФорме();
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры


&НаКлиенте
//Я загрузил специальную тестовую фичу "ОсновнаяТестоваяФича"
//@ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)
Процедура ЯЗагрузилСпециальнуюТестовуюФичу(ИмяФичи) Экспорт
	Контекст.Вставить("ИмяТестовойФичи",ИмяФичи);
	
	ОткрытаяФормаVanessaBehavoir            = Контекст.ОткрытаяФормаVanessaBehavoir;
	ПутьКФиче = ОткрытаяФормаVanessaBehavoir.Объект.КаталогИнструментов + "\features\Support\Templates\" + ИмяФичи + ".feature";
	Контекст.Вставить("ПутьКФиче",ПутьКФиче);
	
	
	Если НЕ Ванесса.ЗапрещеныСинхронныеВызовы Тогда
		ФайлПроверкаСуществования = Новый Файл(ПутьКФиче);
		Если НЕ ФайлПроверкаСуществования.Существует() Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не существует.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ПутьКФиче);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
		СделатьЗагрзукуФичВОткрытойФорме();
	Иначе
		Ванесса.ЗапретитьВыполнениеШагов();
		Файл = Новый Файл(ПутьКФиче);
		ДополнительныеПараметры = Неопределено;
		ОписаниеОповещения = Вычислить("Новый ОписаниеОповещения(""ОбработчикНачатьПроверкуСуществования"",ЭтаФорма,ДополнительныеПараметры)");
		Выполнить("Файл.НачатьПроверкуСуществования(ОписаниеОповещения)");
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//ДеревоТестов заполнилось строками из фичи
//@ДеревоТестовЗаполнилосьСтрокамиИзФичи()
Процедура ДеревоТестовЗаполнилосьСтрокамиИзФичи() Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	
	ЭлементыДерева = ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы();
	
	Ванесса.ПроверитьНеРавенство(ЭлементыДерева.Количество(),0,"В дереве тестов на первом уровне должны быть строки.");
	
	ЭлементыДерева = ЭлементыДерева[0].ПолучитьЭлементы();
	Ванесса.ПроверитьНеРавенство(ЭлементыДерева.Количество(),0,"В дереве тестов на втором уровне должны быть строки.");
КонецПроцедуры

&НаКлиенте
//И В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "StepsRunner"
//@ВПолеСИменемЯУказываюПутьККаталогуФич(Парам01,Парам02)
Процедура ВПолеСИменемЯУказываюПутьККаталогуФич(ИмяПоля,ИмяФичи) Экспорт
	//Ванесса.ПосмотретьЗначение(КонтекстСохраняемый,Истина);
	ПутьКФичам = Ванесса.Объект.КаталогИнструментов + "\features\" + ИмяФичи;
	
	ЭлементФормы = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина);
	ЭлементФормы.ВвестиТекст(ПутьКФичам);
КонецПроцедуры

&НаКлиенте
//И я скопировал каталоги библиотек во второй экземпляр VanessaBehavoir
//@ЯСкопировалКаталогиБиблиотекВоВторойЭкземплярVanessaBehavoir(Парам01,Парам02)
Процедура ЯСкопировалКаталогиБиблиотекВоВторойЭкземплярVanessaBehavoir() Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.Объект.КаталогиБиблиотек.Очистить();
	Для Каждого ЭлемКаталогиБиблиотек Из Ванесса.Объект.КаталогиБиблиотек Цикл
		ОткрытаяФормаVanessaBehavoir.Объект.КаталогиБиблиотек.Добавить(ЭлемКаталогиБиблиотек.Значение);
	КонецЦикла;	
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я нажал на кнопку "ВыполнитьСценарии"
//@ВТестируемомЭкземпляреЯНажалНаКнопку(Парам01)
Процедура ВТестируемомЭкземпляреЯНажалНаКнопку(ИмяПроцедуры) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	Выполнить("ОткрытаяФормаVanessaBehavoir." + ИмяПроцедуры +"();");
КонецПроцедуры

&НаКлиенте
//И я закрываю тестируемый экземпляр VanessaBehavoir
//@ЯЗакрываюТестируемыйЭкземплярVanessaBehavoir()
Процедура ЯЗакрываюТестируемыйЭкземплярVanessaBehavoir() Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.Закрыть();
КонецПроцедуры

&НаКлиенте
//И я запоминаю данные подключения сеанса "Кладовщик" из тестируемого экземпляра в переменную "ПортПодключения"
//@ЯЗапоминаюДанныеПодключенияСеансаИзТестируемогоЭкземпляраВПеременную()
Процедура ЯЗапоминаюДанныеПодключенияСеансаИзТестируемогоЭкземпляраВПеременную(ИмяПрофиля,ИмяПеременной) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	Нашли = Ложь;
	Для Каждого ЭлемДанныеКлиентовТестирования Из ОткрытаяФормаVanessaBehavoir.ДанныеКлиентовТестирования Цикл
		Если ЭлемДанныеКлиентовТестирования.Имя = ИмяПрофиля Тогда
			Нашли = Истина;
			ДанныеПодключения = Новый Структура;
			ДанныеПодключения.Вставить("ПортЗапускаТестКлиента",ЭлемДанныеКлиентовТестирования.ПортЗапускаТестКлиента);
			ДанныеПодключения.Вставить("ПутьКИнфобазе",ЭлемДанныеКлиентовТестирования.ПутьКИнфобазе);
			ДанныеПодключения.Вставить("ТипКлиента",ЭлемДанныеКлиентовТестирования.ТипКлиента);
			ДанныеПодключения.Вставить("Имя",ЭлемДанныеКлиентовТестирования.Имя);
			Контекст.Вставить(ИмяПеременной,ДанныеПодключения);
		КонецЕсли;	 
	КонецЦикла;	
	
	Если Не Нашли Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не нашли профиль <%1> в тестируемом экземпляре Vanessa-behavior.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяПрофиля);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И я добавил в таблицу TestClient запись с теми же данными подключения "ДанныеПодключения"
//@ЯДобавилВТаблицуTestClientЗаписьСТемиЖеДаннымиПодключения(Парам01)
Процедура ЯДобавилВТаблицуTestClientЗаписьСТемиЖеДаннымиПодключения(ИмяПеременной) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	
	СтрокаДанныеКлиентовТестирования                        = ОткрытаяФормаVanessaBehavoir.ДанныеКлиентовТестирования.Добавить();	
	СтрокаДанныеКлиентовТестирования.ПортЗапускаТестКлиента = Контекст[ИмяПеременной].ПортЗапускаТестКлиента;
	СтрокаДанныеКлиентовТестирования.ПутьКИнфобазе          = Контекст[ИмяПеременной].ПутьКИнфобазе;
	СтрокаДанныеКлиентовТестирования.ТипКлиента             = Контекст[ИмяПеременной].ТипКлиента;
	СтрокаДанныеКлиентовТестирования.Имя                    = Контекст[ИмяПеременной].Имя;
КонецПроцедуры

&НаКлиенте
//Дано Я запоминаю количество открытых сеансов 1С в переменную "КоличествоНачальное"
//@ЯЗапоминаюКоличествоОткрытыхСеансов1СВПеременную(Парам01)
Процедура ЯЗапоминаюКоличествоОткрытыхСеансов1СВПеременную(ИмяПеременной) Экспорт
	МассивPIDОкон1С = Ванесса.ПолучитьМассивPIDОкон1С();
	Контекст.Вставить(ИмяПеременной,МассивPIDОкон1С.Количество());
КонецПроцедуры

&НаКлиенте
Процедура ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекундОбработчикОжидания()
	ИмяОбработчика = "ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекундОбработчикОжидания";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат;
	КонецЕсли;	 
	
	ТекЗначениеРеквизита = Неопределено;
	
	Попытка
		ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ТекЗначениеРеквизита = Строка(ОткрытаяФормаVanessaBehavoir[ИмяРеквизитаТаймер]);
	Исключение
		СтрокаОшибки = ОписаниеОшибки();
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		ВызватьИсключение СтрокаОшибки;
		Возврат;
	КонецПопытки;
	
	Если ТекЗначениеРеквизита = ЗначениеРеквизитаТаймер Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
	КолСекундТаймер = КолСекундТаймер + 1;
	Если КолСекундТаймер > МаксКолСекундТаймер Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,"Ожидали, что реквизит <" + ИмяРеквизитаТаймер + "> будет иметь значение <" 
		+ ЗначениеРеквизитаТаймер + ">. Текущее значение <" + ТекЗначениеРеквизита + ">.");
		Возврат;
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
//И в тестируемом экземпляре Ванессы у поля "ФлагСценарииЗагружены"  я жду значения "Истина" в течение 20 секунд
//@ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекунд(Парам01,Парам02,Парам03)
Процедура ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекунд(ИмяРеквизита,ЗначениеРеквизита,КолСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	КолСекундТаймер     = 0;
	МаксКолСекундТаймер = КолСекунд;
	ИмяРеквизитаТаймер = ИмяРеквизита;
	ЗначениеРеквизитаТаймер = ЗначениеРеквизита;
	ПодключитьОбработчикОжидания("ВТестируемомЭкземпляреВанессыУПоляЯЖдуЗначенияВТечениеСекундОбработчикОжидания",1,Ложь);
КонецПроцедуры

//окончание текста модуля
