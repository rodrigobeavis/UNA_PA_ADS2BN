/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {


    Morris.Donut({
        element: 'graph',
        data: [
            {value: 1, label: 'ADSF'},
            {value: 1, label: 'dvc'},
            {value: 2, label: 'SCA56'},
            {value: 2, label: 'gfsd'},
            {value: 1, label: 'sxc'},
            {value: 2, label: 'SXC878'}
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
            {y: 'dvc', a: 1},
            {y: 'gfsd', a: 2},
            {y: 'SCA56', a: 2},
            {y: 'sxc', a: 1},
            {y: 'SXC878', a: 2}           
        ],
        xkey: 'y',
        ykeys: ['a'],
        labels: ['Series A']
    });


});