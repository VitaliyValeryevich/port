
&НаКлиенте
Процедура Расчет(Команда) 
	Т=0;
	кву=0;
	кэ=0;
	квг=0;
	кппто=0;
	ксс=0;
	
	если КоличествоМест < 20 тогда
		Т=1000000;
	иначеесли КоличествоМест < 100 тогда
		Т=30000000;
	иначеесли КоличествоМест < 200 тогда
		Т=50000000;
	иначе Т=100000000;
	конецесли ;
	сообщить (Т);
	
	если КоличествоЧасовНалетаСамолета < 3000 тогда
		кву=0.1;
	иначеесли КоличествоЧасовНалетаСамолета < 10000 тогда
		кву=0.5;
	иначе кву=0.8;
	КонецЕсли;
	сообщить (кву);
	
	если НалетКомандира < 3000 тогда
		кэ=2;
	иначеесли НалетКомандира < 7000 тогда
		кэ=1.2;
	иначеесли НалетКомандира < 10000 тогда
		кэ=0.8;
	иначе кэ=0.1;
	КонецЕсли;     
	сообщить (кэ);
	
	если КолвоРейсовВГод < 100 тогда
		квг=0.2;
	иначеесли КолвоРейсовВГод < 600 тогда
		квг=0.9;
	иначе квг=1.3;
	конецесли;     
	сообщить (квг);
	
	если КолвоМесяцевТО < 12 тогда
		кппто=0.1;
	иначеесли КолвоМесяцевТО < 36 тогда
		кппто=0.5;
	иначе кппто=0.8;
	конецесли;     
	сообщить (кппто);
	
	если СрокСтрахования > 3 тогда
		ксс=0.4;
	иначеесли СрокСтрахования > 6 тогда 
		ксс=0.6;
	иначеесли СрокСтрахования > 9 тогда
		ксс=0.8;
	иначе ксс=1;
	конецесли;   
	
		сообщить (ксс);
	СтраховаяПремия=Т*кву*кэ*квг*кппто*ксс;
КонецПроцедуры
