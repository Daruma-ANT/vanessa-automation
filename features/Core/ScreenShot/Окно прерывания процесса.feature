﻿# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA41_формировать_текстовые_инструкции

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOnWeb
@IgnoreOnNoSyncBuilds

Функционал: Окно прерывания процесса

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я перехожу к закладке "Сервис"
	И я перехожу к закладке "Основные"
	И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'

Сценарий: Показать окно прерывания процесса

	* Показать окно прерывания
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		"""bsl
		СкриптЗакрытияОкна = "ВнешняяКомпонентаДляСкриншотов.ЗакрытьОкноПрерывания()";
		ПараметрыВызова = ЗаписатьОбъектJSON(Новый Структура("eventName,eventData", "EXECUTE_SCRIPT", СкриптЗакрытияОкна));
		ВнешняяКомпонентаДляСкриншотов.ПоказатьОкноПрерывания(ПараметрыВызова, "Заголовок окна прерывания", "Стоп");
		"""
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1

	* Проверить существование окна прерывания
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		"""bsl
		РазмерыОкна = Неопределено;
		ТекстJSON = ВнешняяКомпонентаДляСкриншотов.ПолучитьСписокОкон();
		Для каждого Стр из ПрочитатьОбъектJSON(ТекстJSON) Цикл
			Если Стр.Class = "VanessaTerminator" Тогда
				ТекстJSON = ВнешняяКомпонентаДляСкриншотов.ПолучитьРазмерОкна(Стр.Window);
				РазмерыОкна = ПрочитатьОбъектJSON(ТекстJSON);
				ВнешняяКомпонентаДляСкриншотов.УстановитьПозициюКурсора(
					РазмерыОкна.Right - РазмерыОкна.Height / 2, 
					РазмерыОкна.Top + РазмерыОкна.Height / 2);
				ВнешняяКомпонентаДляСкриншотов.ЭмуляцияНажатияМыши();
				Сообщить("Открыто окно прерывания процесса");
				Прервать;
			КонецЕсли;
		КонецЦикла;
		"""
		И я очищаю окно сообщений пользователю
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		Тогда в логе сообщений TestClient есть строка "Открыто окно прерывания процесса"

	* Проверить закрытие окна прерывания
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		"""bsl
		ТекстJSON = ВнешняяКомпонентаДляСкриншотов.ПолучитьСписокОкон();
		Для каждого Стр из ПрочитатьОбъектJSON(ТекстJSON) Цикл
			Если Стр.Class = "VanessaTerminator" Тогда
				Сообщить("Открыто окно прерывания процесса");
			КонецЕсли;
		КонецЦикла;
		"""
		И я очищаю окно сообщений пользователю
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		Тогда в логе сообщений TestClient нет строки "Открыто окно прерывания процесса"
