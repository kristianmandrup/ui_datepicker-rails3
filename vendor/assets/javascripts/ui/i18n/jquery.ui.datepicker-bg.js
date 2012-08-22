/* Russian (UTF-8) initialisation for the jQuery UI date picker plugin. */
/* Written by Andrew Stromnov (stromnov@gmail.com). */
jQuery(function($){
	$.datepicker.regional['bg'] = {
		closeText: 'Затвори',
		prevText: '&#x3c;Пред',
		nextText: 'След&#x3e;',
		currentText: 'Днес',
		monthNames: ['Януари','Февруари','Март','Април','Май','Юни',
		'Юли','Август','Септември','Октомври','Ноември','Декември'],
		monthNamesShort: ['Яну.','Фев','Мар','Апр','Май','Юни',
		'Юли','Авг','Сеп','Окт','Ное','Дек'],
		dayNames: ['Неделя','понеделник','вторник','сряда','четвъртък','петък','събота'],
		dayNamesShort: ['нед','пон','втр','сяд','чтв','пет','съб'],
		dayNamesMin: ['Не','Пн','Вт','Ср','Чт','Пт','Сб'],
		weekHeader: 'Се',
		dateFormat: 'dd-mm-yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: 'г.'};
	$.datepicker.setDefaults($.datepicker.regional['bg']);
});
