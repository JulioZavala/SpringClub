$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').each(function(index, elem) {
        var idPersona = $(elem).attr('ref');



        $(elem).fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            minTime: 7,
            maxTime: 21,
            slotEventOverlap: false,
            axisFormat: 'h:mmtt',
            events:
                    {
                url: '/SpringClub/socio/solicitud/eventos',
                method: 'post',
                dataType: 'json',
                data: {id: idPersona}
            }



        });

    });
});


