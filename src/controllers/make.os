Функция Index() Экспорт

		ТГ = Новый ТелеграмБот();
		Рез = ТГ.ОтправитьДанные(Новый Структура(), "getUpdates");
		
		Если Рез["ok"] Тогда
			Для Каждого Сообщение ИЗ Рез["result"] Цикл
				Для Каждого Бот ИЗ УправлениеБотами.Прочитать() Цикл
					КлассБота = ЗагрузитьСценарий(СтрШаблон("bots/%1", Бот.class));
					КлассБота.Делай(Сообщение.message.text, Сообщение.message.entities.type = "bot_command", Сообщение.message);
				КонецЦикла;
			КонецЦикла;
		Иначе
			Сообщить("Не ок");
		КонецЕсли;
			
			Возврат Содержимое("OK");
			
КонецФункции