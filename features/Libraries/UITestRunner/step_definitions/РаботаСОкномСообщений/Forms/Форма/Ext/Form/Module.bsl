﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВЛогеСообщенийTestClientЕстьСтрока(Парам01)","ВЛогеСообщенийTestClientЕстьСтрока","Когда в логе сообщений TestClient есть строка ""Нужное сообщение пользователю""","Проверяет в логе сообщений наличие нужной строки.","UI.Сообщения пользователю.Проверка текста сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВЛогеСообщенийTestClientЕстьСтрокаПоШаблону(Парам01)","ВЛогеСообщенийTestClientЕстьСтрокаПоШаблону","Когда в логе сообщений TestClient есть строка по шаблону ""Нужное сообщение пользователю""","Проверяет в логе сообщений наличие нужной строки. Символ * заменяет произолный набор символов.","UI.Сообщения пользователю.Проверка текста сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВЛогеСообщенийTestClientНетСтроки(Парам01)","ВЛогеСообщенийTestClientНетСтроки","Когда в логе сообщений TestClient нет строки ""Нужное сообщение пользователю""","Проверяет в логе сообщений отсутствие нужной строки.","UI.Сообщения пользователю.Проверка отсутствия сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВЛогеСообщенийTestClientЕстьСтроки(ТабПарам)","ВЛогеСообщенийTestClientЕстьСтроки","Когда в логе сообщений TestClient есть строки:" + Символы.ПС + "	| 'Сообщение1' |" + Символы.ПС + "	| 'Сообщение2' |","Проверяет в логе сообщений наличие нужной строки.","UI.Сообщения пользователю.Проверка текста сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСообщенияхПользователюНетОдинаковыхСообщений()","ВСообщенияхПользователюНетОдинаковыхСообщений","И в сообщениях пользователю нет одинаковых сообщений","Проверяет, что каждое сообщение пользователю встречается только один раз","UI.Сообщения пользователю.Нет одинаковых сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВызываюИсключениеСТекстомСообщения()","ЯВызываюИсключениеСТекстомСообщения","И я вызываю исключение с текстом сообщения","Вызывает исключение с текстом сообщения из окна сообщений пользователю.","UI.Сообщения пользователю");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСохраняюТекстСообщенияВПеременную(ИмяПеременной)","ЯСохраняюТекстСообщенияВПеременную","И я сохраняю текст сообщения в переменную ""ИмяПеременной""","Сохраняет текст сообщения пользователю в переменную с именем.","UI.Сообщения пользователю");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВЛогеСообщенийTestClientЕстьСообщенияТолькоИзСписка(ТабПарам)","ВЛогеСообщенийTestClientЕстьСообщенияТолькоИзСписка","Когда в логе сообщений TestClient есть сообщения только из списка" + Символы.ПС + "	| 'Сообщение1' |" + Символы.ПС + "	| 'Сообщение2' |","Проверяет, что с сообщениях пользователя есть только те сообщения, которые указаны в списке. Порядок сообщений неважен.","UI.Сообщения пользователю.Проверка текста сообщений");
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Функция СтрокаСообщенийИзМассива(Массив)
	Стр = "";
	Для Каждого Элем Из Массив Цикл
		Стр = Стр + Элем + Символы.ПС;
	КонецЦикла;	 
	
	Возврат Стр;
КонецФункции	 

&НаКлиенте
//Когда в логе сообщений TestClient есть строка "Таблица параметров должна заканчиваться символом |"
//@ВЛогеСообщенийTestClientЕстьСтрока(Парам01)
Процедура ВЛогеСообщенийTestClientЕстьСтрока(Стр,ПоШаблону = Ложь) Экспорт
	БылаОшибка = Ложь;
	ТекстСообщения = "";
	КоличествоПопыток = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для СчетчикПопыток = 1 По КоличествоПопыток Цикл
		Попытка
			БылаОшибка = Ложь;
			Нашел = Ложь;
			МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
			Для каждого Сообщение Из МассивСообщений Цикл
				Если ПоШаблону Тогда
					Если Ванесса.СтрокаСоответствуетШаблону(НРег(Сообщение),НРег(Стр)) Тогда
						Нашел = Истина;
						Прервать;
					КонецЕсли;	 
				Иначе	
					Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
						Нашел = Истина;
						Прервать;
					КонецЕсли;	 
				КонецЕсли;	 
			КонецЦикла;
			
			Если Не Нашел Тогда
				ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> не найдена в окне сообщений пользователю. Состояние окна сообщений:%2");
				ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
				СтрокаСообщенийВДанныйМомент = СтрокаСообщенийИзМассива(МассивСообщений);
				ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + СтрокаСообщенийВДанныйМомент);
				ВызватьИсключение ТекстСообщения;
			Иначе
				Прервать;
			КонецЕсли;	 
		Исключение
			Ванесса.sleep(1);
			БылаОшибка = Истина;
		КонецПопытки;
	КонецЦикла;
	
	Если БылаОшибка Тогда
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Когда в логе сообщений TestClient есть строка по шаблону "Строка *"
//@ВЛогеСообщенийTestClientЕстьСтрокаПоШаблону(Парам01)
Процедура ВЛогеСообщенийTestClientЕстьСтрокаПоШаблону(Стр) Экспорт
	ВЛогеСообщенийTestClientЕстьСтрока(Стр,Истина);
КонецПроцедуры

&НаКлиенте
//Когда в логе сообщений TestClient нет строки "Таблица параметров должна заканчиваться символом |"
//@ВЛогеСообщенийTestClientНетСтроки(Парам01)
Процедура ВЛогеСообщенийTestClientНетСтроки(Стр) Экспорт
	БылаОшибка = Ложь;
	ТекстСообщения = "";
	КоличествоПопыток = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для СчетчикПопыток = 1 По КоличествоПопыток Цикл
		Попытка
			БылаОшибка = Ложь;
			Нашел = Ложь;
			МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
			Для каждого Сообщение Из МассивСообщений Цикл
				Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
					Нашел = Истина;
					Прервать;
				КонецЕсли;	 
			КонецЦикла;
			
			Если Нашел Тогда
				ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> найдена в окне сообщений пользователю.");
				ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
				ВызватьИсключение ТекстСообщения;
			Иначе
				Прервать;
			КонецЕсли;	 
		Исключение
			Ванесса.sleep(1);
			БылаОшибка = Истина;
		КонецПопытки;
	КонецЦикла;
	
	Если БылаОшибка Тогда
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Когда в логе сообщений TestClient есть строки:
//@ВЛогеСообщенийTestClientЕстьСтроки(Парам01)
Процедура ВЛогеСообщенийTestClientЕстьСтроки(ТабПарам) Экспорт
	БылаОшибка = Ложь;
	ТекстСообщения = "";
	КоличествоПопыток = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для СчетчикПопыток = 1 По КоличествоПопыток Цикл
		Попытка
			БылаОшибка = Ложь;
			Нашел = Ложь;
			
			МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
			Для Каждого СтрокаТабПарам Из ТабПарам Цикл
				Стр = СтрокаТабПарам.Кол1;
				
				Нашел = Ложь;
				Для каждого Сообщение Из МассивСообщений Цикл
					Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
						Нашел = Истина;
						Прервать;
					КонецЕсли;	 
				КонецЦикла;	
				
				Если Не Нашел Тогда
					ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> не найдена в окне сообщений пользователю. Состояние окна сообщений:%2");
					ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
					СтрокаСообщенийВДанныйМомент = СтрокаСообщенийИзМассива(МассивСообщений);
					ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + СтрокаСообщенийВДанныйМомент);
					ВызватьИсключение ТекстСообщения;
				Иначе
					Прервать;
				КонецЕсли;	 
			КонецЦикла;
		Исключение
			Ванесса.sleep(1);
			БылаОшибка = Истина;
		КонецПопытки;
	КонецЦикла;
	
	Если БылаОшибка Тогда
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
КонецПроцедуры


&НаСервере
Функция МассивПовторяющихсяСообщений(МассивСообщений)
	
	Массив = Новый Массив;
	
	Тзн = Новый ТаблицаЗначений;
	Тзн.Колонки.Добавить("Стр");
	Тзн.Колонки.Добавить("Количество",Новый ОписаниеТипов("Число"));
	
	Для Каждого Стр Из МассивСообщений Цикл
		СтрТзн            = Тзн.Добавить();
		СтрТзн.Стр        = Стр;
		СтрТзн.Количество = 1;
	КонецЦикла;	
	
	Тзн.Свернуть("Стр","Количество");
	
	Для Каждого СтрТзн Из Тзн Цикл
		Если СтрТзн.Количество > 1 Тогда
			Массив.Добавить(СтрТзн.Стр);
		КонецЕсли;	 
	КонецЦикла;	
	
	Возврат Массив;
КонецФункции	

&НаКлиенте
//И в сообщениях пользователю нет одинаковых сообщений
//@ВСообщенияхПользователюНетОдинаковыхСообщений()
Процедура ВСообщенияхПользователюНетОдинаковыхСообщений() Экспорт
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	МассивПовторяющихсяСообщений = МассивПовторяющихсяСообщений(МассивСообщений);
	
	Если МассивПовторяющихсяСообщений.Количество() > 0 Тогда
		Стр = "Обнаружены сообщения, которые встречаются больше одного раза:";
		Ном = 0;
		Для Каждого ТекстСообщения Из МассивПовторяющихсяСообщений Цикл
			Ном = Ном + 1;
			Стр = Стр + Символы.ПС + "Сообщение №" + Ном + ": " +  ТекстСообщения; 
		КонецЦикла;	
		ВызватьИсключение Стр;
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
//Когда в логе сообщений TestClient есть сообщения только из списка
//@ВЛогеСообщенийTestClientЕстьСообщенияТолькоИзСписка(ТабПарам)
Процедура ВЛогеСообщенийTestClientЕстьСообщенияТолькоИзСписка(ТабПарам) Экспорт
	МассивСообщенийСДублями = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	
	МассивСообщений = Новый Массив;
	Для Каждого Сообщение Из МассивСообщенийСДублями Цикл
		Если МассивСообщений.Найти(Сообщение) = Неопределено Тогда
			МассивСообщений.Добавить(Сообщение);
		КонецЕсли;	 
	КонецЦикла;	 
	
	
	МассивОшибок = Новый Массив;
	МассивИд     = Новый Массив;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = СтрокаТабПарам.Кол1;
		СтрокаТабПарам.Вставить("КоличествоВхождений",0);
		
		Нашел = Ложь;
		Ид = -1;
		Для каждого Сообщение Из МассивСообщений Цикл
			Ид = Ид + 1;
			Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
				МассивИд.Добавить(Ид);
				Нашел = Истина;
				СтрокаТабПарам.КоличествоВхождений = СтрокаТабПарам.КоличествоВхождений + 1;
				Прервать;
			КонецЕсли;	 
		КонецЦикла;	
		
		Если Не Нашел Тогда
			МассивОшибок.Добавить(Стр);
		КонецЕсли;	 
	КонецЦикла;
	
	Если МассивОшибок.Количество() > 0 Тогда
		СтрокаОшибки = Символы.ПС;
		Для Каждого Элем Из МассивОшибок Цикл
			СтрокаОшибки = СтрокаОшибки + Элем + Символы.ПС;
		КонецЦикла;	
		
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Некоторые сообщения не были найдены в окне сообщений пользователю: %1");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",СтрокаОшибки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	
	МассивЛишнихСообщений = Новый Массив;
	Ид = -1;
	Для каждого Сообщение Из МассивСообщений Цикл
		Ид = Ид + 1;
		
		Если МассивИд.Найти(Ид) = Неопределено Тогда
			МассивЛишнихСообщений.Добавить(Сообщение);
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если МассивЛишнихСообщений.Количество() > 0 Тогда
		СтрокаОшибки = Символы.ПС;
		Для Каждого Элем Из МассивЛишнихСообщений Цикл
			СтрокаОшибки = СтрокаОшибки + Элем + Символы.ПС;
		КонецЦикла;	
		
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В окне сообщений пользователю были найдены лишние сообщения: %1");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",СтрокаОшибки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

//И я вызываю исключение с текстом сообщения
//@ЯВызываюИсключениеСТекстомСообщения()
//
&НаКлиенте
Процедура ЯВызываюИсключениеСТекстомСообщения() Экспорт
	
	ТекстИсключения = "";
	
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() Тогда
		Для каждого Сообщение Из МассивСообщений Цикл
			ТекстИсключения = ТекстИсключения + Сообщение + Символы.ПС;
		КонецЦикла;
	КонецЕсли;
	
	Если ЗначениеЗаполнено(ТекстИсключения) Тогда 
		ВызватьИсключение ТекстИсключения;
	КонецЕсли;
	
КонецПроцедуры

//И я сохраняю текст сообщения в переменную "ИмяПеременной"
//@ЯСохраняюТекстСообщенияВПеременную(ИмяПеременной)
//
&НаКлиенте
Процедура ЯСохраняюТекстСообщенияВПеременную(ИмяПеременной) Экспорт
	
	НужнаяСтрока = "";
	
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() Тогда 
		Для каждого Сообщение Из МассивСообщений Цикл
			НужнаяСтрока = НужнаяСтрока + Сообщение + Символы.ПС;
		КонецЦикла;	
	КонецЕсли;
	
	Попытка
		Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, НужнаяСтрока);
	Исключение
	КонецПопытки;
	
КонецПроцедуры