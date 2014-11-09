
{include file="header.tpl" title=$page}
<script src="./sistema/funcoes/js/area_tecnica.js"></script>
<script src="./asstes/js/jquery-ui-timepicker-addon.js"></script>
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
                    <div class="panel-heading titulo3">Requisições</div>
                    <div class="panel-body">
                        <div class="datagrid">
                            <table class="tbGrid">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Título</th>
                                        <th>Data da requisiação</th>
                                        <th>Data estimatada</th>
                                        <th>ID do ativo</th>
                                        <th>solicitante</th>
                                        <th>status</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>               
                                <tbody>
                                    {section name=inc loop=$info_requisicoes}
                                        <tr align="center">
                                            <td id="id{$smarty.section.inc.index}">{$info_requisicoes[inc].id_servico}</td>
                                            <td id="titulo{$smarty.section.inc.index}" align="left">{$info_requisicoes[inc].titulo}</td>
                                            <td id="dataHoraInicial{$smarty.section.inc.index}">{$info_requisicoes[inc].dataHoraInicial}</td>
                                            <td id="data_estimada{$smarty.section.inc.index}">{$info_requisicoes[inc].data_estimada}</td>
                                            <td id="modelo{$smarty.section.inc.index}">{$info_requisicoes[inc].idAtivos} - {$info_requisicoes[inc].infoAtivo.modelo} - {$info_requisicoes[inc].infoAtivo.patrimonio}</td>
                                            <td id="solicitante{$smarty.section.inc.index}">{$info_requisicoes[inc].solicitante}</td>
                                            <td id="status{$smarty.section.inc.index}" >{$info_requisicoes[inc].status}</td>
                                            <td>
                                                <div id="detalhar_requisiao">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#OS">Editar</a>
                                                    </div>
                                                    <div class="modal fade" id="OS">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Ações</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">                                                                                                                                                             
                                                                                    <div class="col-md-4 navbar-form navbar-left" role="search">                                                                                        
                                                                                        <label>Estimativa para Resolução</label><br>
                                                                                        <input id="data_estimadaPost" name="data_estimada" class="form-control" type="text" size="20" maxlength="45" required placeholder="insira Data e Hora">
                                                                                        <button type="submit" class="btn btn-primary">Registrar Estimativa</button>                                                              
                                                                                    </div> 
                                                                                </form>  
                                                                            <br><br><br><br>
                                                                                <form action="#" method="POST">                                                                                    
                                                                                    <div class="col-md-12">
                                                                                        <textarea id="solucao" name="solucao" class="form-control" rows="3" required placeholder="Descreva a solução..."></textarea>
                                                                                    </div><br>
                                                                                    <div class="col-md-6">
                                                                                        <label></label>
                                                                                        <div class="">
                                                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                                                                            <button type="submit" class="btn btn-primary">Registrar Resolução</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </form>     
                                                                        </div>
                                                                    </div>
                                                                </div>                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
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
                            <table class="tbGrid">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Título</th>
                                        <th>Data da Incidente</th>
                                        <th>Data estimatada</th>
                                        <th>ID do ativo</th>
                                        <th>Solicitante</th>
                                        <th>status</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>               
                                <tbody>
                                    {section name=inc loop=$info_incidentes}
                                        <tr align="center">
                                            <td>{$info_incidentes[inc].id_servico}</td>
                                            <td align="left">{$info_incidentes[inc].titulo}</td>
                                            <td>{$info_incidentes[inc].dataHoraInicial}</td>
                                            <td>{$info_incidentes[inc].data_estimada}</td>
                                            <td>{$info_incidentes[inc].idAtivos} - {$info_requisicoes[inc].infoAtivo.modelo} - {$info_requisicoes[inc].infoAtivo.patrimonio}</td>
                                            <td>{$info_incidentes[inc].solicitante}</td>
                                            <td>{$info_incidentes[inc].status}</td>
                                            <td>                                                                                         
                                                <div id="detalhar_requisiao">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#OS">Editar</a>
                                                    </div>

                                                    <div class="modal fade" id="OS">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Ações</h4>
                                                                </div>                            
                                                                <div class="modal-body">

                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">
                                                                                <div class="col-md-4">
                                                                                    <label>Tipo</label>
                                                                                    <select id="tipo" name="tipo" class="form-control" required>
                                                                                        <option></option>
                                                                                        <option value="1">Incidentes</option>
                                                                                        <option value="2">Requisições</option>
                                                                                    </select><br>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                    <label>Ativo</label>
                                                                                    <select id="ativos" name="ativos" class="form-control" required>
                                                                                        <option></option>

                                                                                    </select><br>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                    <label>Prestador</label>
                                                                                    <select id="prestador" name="prestador" class="form-control" required>
                                                                                        <option></option>

                                                                                    </select><br>
                                                                                </div>                                            
                                                                                <div class="col-md-4">
                                                                                    <label>Título</label>
                                                                                    <input name="titulo" id="titulo" class="form-control" type="text" size="20" maxlength="45" required>
                                                                                    <br>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <label>Descrição</label><br>
                                                                                    <textarea id="descricao" name="descricao" class="form-control" rows="3" required></textarea>
                                                                                </div><br>
                                                                                <div class="col-md-4">
                                                                                    <label></label>
                                                                                    <div class="">
                                                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                                                                        <button type="submit" class="btn btn-primary">Registrar</button>
                                                                                    </div>
                                                                                </div>
                                                                            </form>     
                                                                        </div>
                                                                    </div>
                                                                </div>                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>                                              
                                            </td>
                                        </tr>
                                    {sectionelse}
                                    <td colspan="6">Não há incidentes no momento</td>
                                {/section}
                                </tbody>
                            </table>
                        </div>  
                    </div>
                </div>
            </article>                 
        </div>
        {include file="footer.tpl"}                  
    </div>        
