
{include file="header.tpl" title=$page}
<script src="../sistema/funcoes/js/cadastro_empresa.js"></script>
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
                            <input class="btn btn-default" type="submit" value="Logout">
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
                    <div class="panel-heading titulo3">Dados dos ativos</div>
                    <div class="panel-body">
                        <div class="datagrid">
                            <table boder="0">                      
                                <!--<tfoot><tr><td colspan="4"><div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul></div></tr></tfoot> -->
                                <tbody>
                                    <tr><td></td></tr>
                                <form action="#" method="POST">
                                    <tr class="alt"><td colspan="4"></td></tr> 
                                    <tr><td>Tipo</td><td><input name="tipo" type="text" size="30" maxlength="90"></td></tr>
                                    <tr><td>Modelo</td><td><input name="modelo" type="text" size="30" maxlength="90"></td></tr>
                                    <tr><td>Patrimonio</td><td><input name="patrimonio" type="text" size="20" maxlength="15"></td></tr>
                                    <tr class="alt"><td colspan="4"></td></tr> 
                                     <tr><td colspan="4"><input class="btn btn-default" type="submit" value="Gravar"></td></tr>  
                                    <tr><td></td></tr>                                                                            
                                </form>
                                </tbody>
                            </table>
                        </div>                       
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading titulo3">Dados Organizacionais</div>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li><a href="#ativos" data-toggle="tab">Ativos</a></li>
                            <li><a href="#caracteristicas" data-toggle="tab">Caracteristicas</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="ativos">
                            
                            </div>
                            <div class="tab-pane" id="caracteristicas">
                            
                            </div>                          
                        </div>
                    </div>                       
                </div>
            </div>        
    </article> 
            {include file="footer.tpl"}
</div>
</div>    

