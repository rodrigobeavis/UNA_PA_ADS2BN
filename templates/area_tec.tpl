
{include file="header.tpl" title=$page}
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
                                <table>
                                   <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Título</th>
                                            <th>Data da requisiação</th>
                                            <th>Data estimatada</th>
                                            <th>ID do ativo</th>
                                            <th>solicitante</th>
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
                                            <td>{$info_requisicoes[inc].idAtivos} -{$info_requisicoes[inc].infoAtivo.modelo} - {$info_requisicoes[inc].infoAtivo.patrimonio}</td>
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
                                            <th>Título</th>
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
                                            <td>{$info_incidentes[inc].idAtivos} - {$info_requisicoes[inc].infoAtivo.modelo} - {$info_requisicoes[inc].infoAtivo.patrimonio}</td>
                                            <td>{$info_incidentes[inc].solicitante}</td>
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
