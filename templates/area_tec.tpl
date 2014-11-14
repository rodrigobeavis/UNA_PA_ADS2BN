
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
                                        <th>Estimar Tempo</th>
                                        <th>Status</th>
                                        <th>Solução</th>
                                    </tr>
                                </thead>               
                                <tbody>
                                    {section name=req loop=$info_requisicoes}
                                        <tr align="center">
                                            <td id="id{$smarty.section.req.index}">{$info_requisicoes[req].id_servico}</td>
                                            <td id="titulo{$smarty.section.req.index}" align="left">{$info_requisicoes[req].titulo}</td>
                                            <td id="dataHoraInicial{$smarty.section.req.index}">{$info_requisicoes[req].dataHoraInicial}</td>
                                            <td id="data_estimada{$smarty.section.req.index}">{$info_requisicoes[req].data_estimada}</td>
                                            <td id="modelo{$smarty.section.req.index}">{$info_requisicoes[req].idAtivos} - {$info_requisicoes[req].infoAtivo.modelo} - {$info_requisicoes[req].infoAtivo.patrimonio}</td>
                                            <td id="solicitante{$smarty.section.req.index}">{$info_requisicoes[req].solicitante}</td>
                                            <td id="status{$smarty.section.req.index}" >{$info_requisicoes[req].status}</td>
                                            <td>
                                                <div id="detalhar_requisiao_prazo">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#prazo{$info_requisicoes[req].id_servico}"><span class="glyphicon glyphicon-time" aria-hidden="true"></a>
                                                    </div>
                                                    <div class="modal fade" id="prazo{$info_requisicoes[req].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Defina um tempo para resolução ou verificação</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">                                                                                                                                                             
                                                                                <div class="col-md-4 navbar-form navbar-left" role="search">                                                                                        
                                                                                    <label>Estimativa para Resolução</label><br>
                                                                                    <input id="data_estimada_req{$smarty.section.req.index}" name="data_estimada" class="form-control" type="text" size="20" maxlength="45" required placeholder="insira Data e Hora">
                                                                                    <input type="hidden" name="id_servico" value="{$info_requisicoes[req].id_servico}">
                                                                                    <button type="submit" class="btn btn-primary">Registrar Estimativa</button>                                                              
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
                                            <td>
                                                <div id="detalhar_requisiao_status">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#status{$info_requisicoes[req].id_servico}"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span></a>
                                                    </div>
                                                    <div class="modal fade" id="status{$info_requisicoes[req].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Defina um status para a requisição</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">                                                                           
                                                                            <form action="#" method="POST">                                                                                                                                                             
                                                                                <div class="col-md-4 navbar-form navbar-left" role="search">                                                                                        
                                                                                    <label>Definir Status</label><br>
                                                                                    <select id="status" name="status" class="form-control" required>
                                                                                        <option></option>
                                                                                        {section name=op loop=$optionStatus}                                                                                           
                                                                                            <option value="{$smarty.section.op.index}">{$optionStatus[op]}</option>                                                                                           
                                                                                        {/section}
                                                                                    </select>
                                                                                    <input type="hidden" name="id_servico" value="{$info_requisicoes[req].id_servico}">
                                                                                    <button type="submit" class="btn btn-primary">Registrar Estimativa</button>                                                                                    
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
                                            <td>
                                                <div id="detalhar_requisiao_solucao">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#solucao{$info_requisicoes[req].id_servico}"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span></a>
                                                    </div>
                                                    <div class="modal fade" id="solucao{$info_requisicoes[req].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Solução proposta</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">                                                                                    
                                                                                <div class="col-md-12">
                                                                                    <textarea id="solucao" name="solucao" class="form-control" rows="3" required placeholder="Descreva a solução..."></textarea>
                                                                                    <input type="hidden" name="id_servico" value="{$info_requisicoes[req].id_servico}">
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
                                        <th>Estimar Tempo</th>
                                        <th>Status</th>
                                        <th>Solução</th>
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
                                                <div id="detalhar_incidentes_prazo">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#prazo{$info_incidentes[inc].id_servico}"><span class="glyphicon glyphicon-time" aria-hidden="true"></a>
                                                    </div>
                                                    <div class="modal fade" id="prazo{$info_incidentes[inc].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Defina um tempo para resolução ou verificação</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">                                                                                                                                                             
                                                                                <div class="col-md-4 navbar-form navbar-left" role="search">                                                                                        
                                                                                    <label>Estimativa para Resolução</label><br>
                                                                                    <input id="data_estimada_inc{$smarty.section.inc.index}" name="data_estimada" class="form-control" type="text" size="20" maxlength="45" required placeholder="insira Data e Hora">
                                                                                    <input type="hidden" name="id_servico" value="{$info_incidentes[inc].id_servico}">
                                                                                    <button type="submit" class="btn btn-primary">Registrar Estimativa</button>                                                              
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
                                            <td>
                                                <div id="detalhar_incidentes_status">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#status{$info_incidentes[inc].id_servico}"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span></a>
                                                    </div>
                                                    <div class="modal fade" id="status{$info_incidentes[inc].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Defina um status para o incidente</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">                                                                           
                                                                            <form action="#" method="POST">                                                                                                                                                             
                                                                                <div class="col-md-4 navbar-form navbar-left" role="search">                                                                                        
                                                                                    <label>Definir Status</label><br>
                                                                                    <select id="status" name="status" class="form-control" required>
                                                                                        <option></option>
                                                                                        {section name=op loop=$optionStatus}                                                                                           
                                                                                            <option value="{$smarty.section.op.index}">{$optionStatus[op]}</option>                                                                                           
                                                                                        {/section}
                                                                                    </select>
                                                                                    <input type="hidden" name="id_servico" value="{$info_incidentes[inc].id_servico}">
                                                                                    <button type="submit" class="btn btn-primary">Registrar Estimativa</button>                                                              
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
                                            <td>
                                                <div id="detalhar_incidentes_solucao">
                                                    <div>                                             
                                                        <a class="btn btn-default" data-toggle="modal" href="#solucao{$info_incidentes[inc].id_servico}"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span></a>
                                                    </div>
                                                    <div class="modal fade" id="solucao{$info_incidentes[inc].id_servico}">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title">Solução proposta</h4>
                                                                </div>                            
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <form action="#" method="POST">                                                                                    
                                                                                <div class="col-md-12">
                                                                                    <textarea id="solucao" name="solucao" class="form-control" rows="3" required placeholder="Descreva a solução..."></textarea>
                                                                                    <input type="hidden" name="id_servico" value="{$info_incidentes[inc].id_servico}">
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
                                    <td colspan="6">Não há incidentes no momento</td>
                                {/section}
                                </tbody>
                            </table>
                                <input type="hidden" id="total_incidentes" value="{$smarty.section.inc.total}">
                                <input type="hidden" id="total_requisicoes" value="{$smarty.section.req.total}">
                        </div>  
                    </div>
                </div>                              
            </article>                 
        </div>
        {include file="footer.tpl"}                  
    </div>        
