
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
                    <div class="panel-heading titulo3">Dados da Empresa</div>
                    <div class="panel-body">
                        <div class="datagrid">
                            <table boder="0">                      
                                <!--<tfoot><tr><td colspan="4"><div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul></div></tr></tfoot> -->
                                <tbody>
                                    <tr><td></td></tr>
                                <form action="#" method="POST">
                                    <tr><td>Raz&atilde;o Social</td><td><input name="RazaoSocial" type="text" size="90" maxlength="150" required></td></tr>
                                    <tr><td>CNPJ</td><td><input name="CNPJ" type="text" size="15" maxlength="15" required required></td></tr>
                                    <tr><td>Inc.Municipal</td><td><input name="IncMunicipal" type="text" size="15" maxlength="10" required></td></tr>
                                    <tr class="alt"><td colspan="4">Endere&ccedil;o</td></tr>
                                    <tr><td>Logradouro</td><td><input name="Logradouro" type="text" size="90" maxlength="100" required></td>
                                        <td>N&ordm;</td><td><input name="Numero" type="text" size="6" maxlength="6" required></td></tr>
                                    <tr><td>Bairro</td><td><input name="Cidade" type="text" size="15" maxlength="30" required>
                                        </td><td>Cidade</td><td><input name="Cidade" type="text" size="15" maxlength="30" required></td></tr>
                                    <tr><td>CEP</td><td><input name="CEP" type="text" size="15" maxlength="10" required>
                                        </td><td>Estado</td><td><select placeholder="UF" name="UF" id="Estado"  required>
                                                <option placeholder="UF"></option>
                                                <option value="AC">AC</option>
                                                <option value="AL">AL</option>
                                                <option value="AM">AM</option>
                                                <option value="AP">AP</option>
                                                <option value="BA">BA</option>
                                                <option value="CE">CE</option>
                                                <option value="DF">DF</option>
                                                <option value="ES">ES</option>
                                                <option value="GO">GO</option>
                                                <option value="MA">MA</option>
                                                <option value="MG">MG</option>
                                                <option value="MS">MS</option>
                                                <option value="MT">MT</option>
                                                <option value="PA">PA</option>
                                                <option value="PB">PB</option>
                                                <option value="PE">PE</option>
                                                <option value="PI">PI</option>
                                                <option value="PR">PR</option>
                                                <option value="RJ">RJ</option>
                                                <option value="RN">RN</option>
                                                <option value="RO">RO</option>
                                                <option value="RR">RR</option>
                                                <option value="RS">RS</option>
                                                <option value="SC">SC</option>
                                                <option value="SE">SE</option>
                                                <option value="SP">SP</option>
                                                <option value="TO">TO</option>
                                            </select></td></tr>
                                    <tr><td></td></tr>
                                    <tr class="alt"><td colspan="4"><input class="btn btn-default" type="submit" value="Gravar"></td></tr>                                        
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
                            <li><a href="#contatos" data-toggle="tab">Contatos</a></li>
                            <li><a href="#setores" data-toggle="tab">Setores</a></li>
                            <li><a href="#cargos" data-toggle="tab">Cargos</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="contatos">
                                <div class="datagrid" >
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Nome</th><th>email</th><th>Telefone</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td><td></td><td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="setores">
                                <div class="datagrid">
                                <table border="1">
                                        <thead>
                                            <tr>
                                                <th>id</th><th>Setor</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td><td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    </div>
                            </div>
                            <div class="tab-pane" id="cargos">
                                <div class="datagrid" >
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>id</th><th>Cargo</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td><td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>                       
                </div>
        </div>        
    </article>
            {include file="footer.tpl"}
</div>
</div>    

