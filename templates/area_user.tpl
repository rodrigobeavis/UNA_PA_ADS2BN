
{include file="header.tpl" title=Home}
<script src="../sistema/funcoes/js/AreaUsuario.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"><h4>&Aacute;rea do Usu&aacute;rio</h4></div>
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
                        <button type="button" class="btn btn-default">Requisi&ccedil;&otilde;es</button>
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
                                        <tr>
                                            <th>Id</th>
                                            <th>T&iacute;tulo</th>
                                            <th>Data da requisia&ccedil;&atilde;o</th>
                                            <th>Data estimatada</th>
                                            <th>ID do ativo</th>
                                            <th>Solicitante</th>
                                            <th>status</th>                                           
                                        </tr>
                                    </thead>               
                                    <tbody>
                                        {section name=inc loop=$info_requisicoes}
                                        <tr>
                                            <td>{$info_requisicoes[inc].id_servico}</td>
                                            <td>{$info_requisicoes[inc].titulo}</td>
                                            <td>{$info_requisicoes[inc].dataHoraInicial}</td>
                                            <td>{$info_requisicoes[inc].data_estimada}</td>
                                            <td>{$info_requisicoes[inc].idAtivos}</td>
                                            <td>{$info_requisicoes[inc].solicitante}</td>
                                            <td>{$info_requisicoes[inc].status}</td>
                                        </tr>
                                        {sectionelse}
                                            <td colspan="6">Não há requisições no momento</td>
                                        {/section}
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
                                        <tr>
                                            <th>Id</th>
                                            <th>T&iacute;tulo</th>
                                            <th>Data da Incidente</th>
                                            <th>Data estimatada</th>
                                            <th>ID do ativo</th>
                                            <th>Solicitante</th>
                                            <th>status</th>                                           
                                        </tr>
                                    </thead>               
                                    <tbody>
                                        {section name=inc loop=$info_incidentes}
                                        <tr>
                                            <td>{$info_incidentes[inc].id_servico}</td>
                                            <td>{$info_incidentes[inc].titulo}</td>
                                            <td>{$info_incidentes[inc].dataHoraInicial}</td>
                                            <td>{$info_incidentes[inc].data_estimada}</td>
                                            <td>{$info_incidentes[inc].idAtivos}</td>
                                            <td>{$info_incidentes[inc].solicitante}</td>
                                            <td>{$info_incidentes[inc].status}</td>
                                        </tr>
                                        {sectionelse}
                                            <td colspan="6">N&atilde;o h&aacute; requisi&ccedil;&otilde;es no momento</td>
                                        {/section}
                                    </tbody>
                                </table>
                            </div>  
                        </div>
                    </div>
                </article>            
            </div>
        </div>    
        {include file="footer.tpl"}
