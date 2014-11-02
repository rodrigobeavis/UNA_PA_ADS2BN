
{include file="header.tpl" title=$page}
<script src="../sistema/funcoes/js/"></script>
<script src="./asstes/js/jquery.complexify.js"></script>
<script src="./sistema/funcoes/js/cadastro_user.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"><h4>{$page}</h4></div>
                    <div class="panel-body">
                        <div class="col-md-2">
                            <table class="table">
                                <thead>
                                    <tr>
                                       <th>Id</th>
                                        <th>Nome</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{$info_empresa.idColaboradores}</td>
                                        <td>{$info_empresa.Nome}</td>
                                    </tr>                                   
                                </tbody>
                            </table>
                        </div>
                        <form action="sistema/funcoes/logout.php">
                            <input type="submit" value="Logout">
                        </form>     
                    </div>
                </div>
            </div>   
        </div>
        <div class="row">
            <div><div id="menu" >{include file="menu.tpl" }</div></div>
            </div>
            <div class="col-md-10">
                <header></header>
                <article>
                    <div class="panel panel-default">
                        <div class="panel-heading titulo3"></div>
                        <div class="panel-body">
                            <div class="datagrid">
                                <table boder="0">                      
                                    <!--<tfoot><tr><td colspan="4"><div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul></div></tr></tfoot> -->
                                    <tbody>
                                        <tr><td></td></tr>                                    
                                    </tbody>
                                </table>
                            </div>                            
                        </div>
                    </div>                  
                </article>                
            </div>{include file="footer.tpl"}
        </div>    
        