
{include file="header.tpl" title=Home}
<script src="../sistema/funcoes/js/AreaUsuario.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"><h4>Área do Usuário</h4></div>
                    <div class="panel-body">
                        <div class="col-md-4">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Razao Social</th>
                                        <th>Setor</th>
                                        <th>Cargo</th>
                                        <th>Nome</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{$info_empresa.RazaoSocial}</td>
                                        <td>{$info_empresa.nome_setor}</td>
                                        <td>{$info_empresa.Cargo}</td>
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
            <div class="col-md-2">
                <div class="badge">
                    <h3><header class="label label-default">Menu</header></h3>
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-default">Incidente</button>
                        <button type="button" class="btn btn-default">Requisições</button>
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Cadastros
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Empresa</a></li>
                            <li><a href="#">Colaborador</a></li>
                            <li><a href="#">Ativos</a></li>
                            <li><a href="#">Dropdown link</a></li>
                        </ul>          
                    </div>
                    <footer><br></footer>
                </div>   
            </div>
            <div class="col-md-10">
                <header></header>
                <article>
                    <div class="panel panel-default">
                        <div class="panel-heading titulo3">Requisições</div>
                        <div class="panel-body">
                            <div class="datagrid">
                                <table>
                                    <thead>
                                        <tr><th>header</th><th>header</th><th>header</th><th>header</th></tr>
                                    </thead>
                                    <tfoot><tr><td colspan="4"><div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul></div></tr></tfoot>
                                    <tbody>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr class="alt"><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr class="alt"><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                    </tbody>
                                </table>
                            </div>                       
                        </div>
                    </div>                  
                    <div class="panel panel-default">
                        <div class="panel-heading titulo3">Incidentes</div>
                        <div class="panel-body">
                            <div class="datagrid">
                                <table>
                                    <thead>
                                        <tr><th>header</th><th>header</th><th>header</th><th>header</th></tr>
                                    </thead>
                                    <tfoot><tr><td colspan="4"><div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul></div></tr></tfoot>
                                    <tbody>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr class="alt"><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr class="alt"><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                        <tr><td>data</td><td>data</td><td>data</td><td>data</td></tr>
                                    </tbody>
                                </table>
                            </div>    

                        </div>
                    </div>
                </article>            
            </div>
        </div>    
        {include file="footer.tpl"}
