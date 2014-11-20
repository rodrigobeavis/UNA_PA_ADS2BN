/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {

    var T_req = $('#total_incidentes').val();
    var T_inc = $('#total_requisicoes').val();

    for (var i = 0; i < T_inc; i++) {
        $('#data_estimada_inc' + i).datetimepicker();
    }

    for (var i = 0; i < T_req; i++) {
        $('#data_estimada_req' + i).datetimepicker();
    }
}
);

$(function sinalizaAtraso() {
    var T_req = $('#total_incidentes').val();
    var T_inc = $('#total_requisicoes').val();
    var hoje = new Date();
    var data_req = 0;
    var data_inc = 0;
    var hora_req = 0;
    var hora_inc = 0;

    for (var i = 0; i < T_req; i++) {
        if ($('#data_estimada_req_real' + i).html() != "Aguardando") {
            data_req = $('#data_estimada_req_real' + i).html();
            data_req = data_req.split("-");
            hora_req = data_req[1].split(":");
            data_req = data_req[0].split("/");
            data_req = new Date(data_req[2], data_req[1] - 1, data_req[0], hora_req[0], hora_req[1]);
        }

        if ($('#status_req' + i).html() != "Concluído" && $('#status_req' + i).html() != "Concluido") {
            if (data_req.getFullYear() < hoje.getFullYear()) {
                $('#status_req' + i).css({"background-color": "#FF0000"});
            } else if (data_req.getMonth() < hoje.getMonth()) {
                $('#status_req' + i).css({"background-color": "#FF4500"});
            } else if (data_req.getDate() < hoje.getDate()) {
                $('#status_req' + i).css({"background-color": "#FFD700"});
            } else if (data_req === hoje) {
                $('#status_req' + i).css({"background-color": "blue"});
            }

        }
    }

    for (var i = 0; i < T_inc; i++) {
        if ($('#data_estimada_inc_real' + i).html() != "Aguardando") {
            data_inc = $('#data_estimada_inc_real' + i).html();
            data_inc = data_inc.split("-");
            hora_inc = data_inc[1].split(":");
            data_inc = data_inc[0].split("/");
            data_inc = new Date(data_inc[2], data_inc[1] - 1, data_inc[0], hora_inc[0], hora_inc[1]);
        }

        if ($('#status_inc' + i).html() != "Concluído" && $('#status_inc' + i).html() != "Concluido") {
            if (data_inc.getFullYear() < hoje.getFullYear()) {
                $('#status_inc' + i).css({"background-color": "#FF0000"});
            } else if (data_inc.getMonth() < hoje.getMonth()) {
                $('#status_inc' + i).css({"background-color": "#FF4500"});
            } else if (data_inc.getDate() < hoje.getDate()) {
                $('#status_inc' + i).css({"background-color": "#FFD700"});
            } else if (data_inc === hoje) {
                $('#status_inc' + i).css({"background-color": "blue"});
            }
        }
    }


});
