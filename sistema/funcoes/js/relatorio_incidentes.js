/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {


var data2 = $('#array_inc').val();
    Morris.Donut({
        element: 'graph',
        data: [
            
            {value: 1, label: 'ADSF'},
            {value: 2, label: 'dvc'},
            {value: 2, label: 'gfsd'},
            {value: 1, label: 'SCA46'},
            {value: 1, label: 'SCA56'},
            {value: 4, label: 'SCRX'}
        ]
//        ,
//        formatter: function (x) {
//            return x + "%";
//        }
    }).on('click', function (i, row) {
        console.log(i, row);
    });

    Morris.Bar({
        element: 'graph2',
        data: [
            {y: 'ADSF', a: 1},
            {y: 'dvc', a: 2},
            {y: 'gfsd', a: 2},
            {y: 'SCA46', a: 1},
            {y: 'SCA56', a: 1},
            {y: 'SCRX', a: 4}           
        ],
        xkey: 'y',
        ykeys: ['a'],
        labels: ['Series A']
    });


});