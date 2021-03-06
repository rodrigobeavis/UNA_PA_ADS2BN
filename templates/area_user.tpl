<script src="../sistema/funcoes/js/area_usuario.js"></script>
{include file="header.tpl" title=Home}
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
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <div class="breadcrumb">                                             
                    <a class="btn btn-default" data-toggle="modal" href="#OS">Registrar OS</a>
                </div> 
                <div class="modal fade" id="OS">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button aria-hidden="true" class="close" data-dismiss="modal" type="button">&times;</button>
                                <h4 class="modal-title">Registrar OS</h4>
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
                                                {section name=at loop=$info_ativos}
                                                    <option value="{$info_ativos[at].idAtivos}">{$info_ativos[at].idAtivos} - {$info_ativos[at].tipo} - {$info_ativos[at].modelo} - {$info_ativos[at].patrimonio}  </option>
                                                {/section}
                                            </select><br>
                                            </div>
                                            <div class="col-md-4">
                                            <label>Prestador</label>
                                            <select id="prestador" name="prestador" class="form-control" required>
                                                 <option></option>
                                                {section name=tec loop=$info_tec}
                                                    <option value="{$info_tec[tec].idColaboradores}"  data-toggle="tooltip" data-placement="right" title="{$info_tec[tec].nomeSetor}">{$info_tec[tec].nome} - {$info_tec[tec].Cargo}</option>
                                                {/section}
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
                            <table class="tbGrid" id="requisicao">
                                <thead>
                                    <tr>
                                        <th data-sort="int">Id</th>
                                        <th data-sort="string">Título</th>
                                        <th data-sort="int">Data da requisiação</th>
                                        <th>Data estimatada</th>
                                        <th>ID do ativo</th>
                                        <th>Prestador</th>
                                        <th>status</th>                                           
                                    </tr>
                                </thead>               
                                <tbody>
                                    {section name=req loop=$info_requisicoes}
                                        <tr align="center">
                                            <td>{$info_requisicoes[req].id_servico}</td>
                                            <td align="left">{$info_requisicoes[req].titulo}</td>
                                            <td>{$info_requisicoes[req].dataHoraInicial}</td>
                                            <td>{$info_requisicoes[req].data_estimada}</td>
                                            <td>{$info_requisicoes[req].idAtivos}-{$info_requisicoes[req].infoAtivo.modelo} - {$info_requisicoes[req].infoAtivo.patrimonio}</td>
                                            <td>{$info_requisicoes[req].prestador}</td>
                                            <td>{$info_requisicoes[req].status}</td>
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
                                        <th>Prestador</th>
                                        <th>status</th>                                           
                                    </tr>
                                </thead>               
                                <tbody>
                                    {section name=inc loop=$info_incidentes}
                                        <tr align="center">
                                            <td>{$info_incidentes[inc].id_servico}</td>
                                            <td align="left">{$info_incidentes[inc].titulo}</td>
                                            <td>{$info_incidentes[inc].dataHoraInicial}</td>
                                            <td>{$info_incidentes[inc].data_estimada}</td>
                                            <td>{$info_incidentes[inc].idAtivos} - {$info_incidentes[inc].infoAtivo.modelo} - {$info_incidentes[inc].infoAtivo.patrimonio}</td>
                                            <td>{$info_incidentes[inc].prestador}</td>
                                            <td>{$info_incidentes[inc].status}</td>
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
