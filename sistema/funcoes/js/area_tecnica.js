/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {

    var T_req = $('#total_incidentes').val();
    var T_inc = $('#total_requisicoes').val();

    for (var i = 0; i <= T_inc; i++) {
        $('#data_estimada_inc'+i).datetimepicker();
    }
    
     for (var i = 0; i <= T_req; i++) {
        $('#data_estimada_req'+i).datetimepicker();
    }
}
);
