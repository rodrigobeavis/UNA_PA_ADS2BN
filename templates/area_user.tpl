
{include file="header.tpl" title=Home}
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
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>{$info_empresa.RazaoSocial}</td>
                                    <td>{$info_empresa.nome_setor}</td>
                                    <td>{$info_empresa.Cargo}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>   
    </div>
    <div class="row">
        <div class="col-md-2">
            <h3><header class="label label-default">Menu</header></h3>
            <div class="btn-group-vertical">
                <div class="btn-group">
                    <button type="button" class="btn btn-default">Incidente</button>
                    <button type="button" class="btn btn-default">Requisições</button>
                    <button type="button" class="btn btn-default">Veficar requisições</button>
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Dropdown
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Dropdown link</a></li>
                            <li><a href="#">Dropdown link</a></li>
                            <li><a href="#">Dropdown link</a></li>
                            <li><a href="#">Dropdown link</a></li>
                        </ul>
                    
                </div>   
            </div>
            <footer></footer>
        </div>
        <div class="col-md-10">
            <article>
                Termos de uso

                O site leitura social é um serviço interativo oferecido em por meio de página eletrônica na internet que oferece uma forma destinar exemplares de livros que não são utilizados para outras pessoas. O acesso representa a aceitação expressa e irrestrita dos termos de uso abaixo descritos. Se você não concorda com os termos, por favor, não acesse nem utilize este website. 
                visitante poderá usar este site apenas para finalidades lícitas. Este espaço não poderá ser utilizado para publicar, enviar, distribuir ou divulgar conteúdos ou informação de caráter difamatório, obsceno ou ilícito, inclusive informações de propriedade exclusiva pertencentes a outras pessoas ou empresas, bem como marcas registradas ou informações protegidas por direitos autorais, sem a expressa autorização do detentor desses direitos. 
                acesso ao Leitura Social é gratuito. Os criadores e colaboradores do Leitura Social poderão a seu exclusivo critério e em qualquer tempo, modificar ou desativar o site, bem como limitar, cancelar ou suspender seu uso ou o acesso. Estes Termos de Uso poderão ser alterados a qualquer tempo. Visite regularmente esta página e consulte os Termos então vigentes.

                Limitação da responsabilidade 
                materiais são fornecidos neste website sem nenhuma garantia explícita ou implícita de comercialização ou adequação a qualquer objetivo específico. Em nenhum caso o Leitura Social ou os seus colaboradores serão responsabilizados por quaisquer danos, incluindo lucros cessantes, interrupção de negócio, ou perda de informação que resultem do uso ou da incapacidade de usar os materiais. O Leitura Social não garante a precisão ou integridade das informações, textos, gráficos, links e outros itens dos materiais e não se responsabiliza pelas informações aqui publicadas, uma vez que os textos são de autoria de terceiros e não traduzem, necessariamente, a opinião do website.
                Leitura Social tampouco é responsável pela violação de direitos autorais decorrente de informações, documentos e materiais publicados neste website, comprometendo-se a retirá-los do ar assim que notificado da infração. 

                Reclamações sobre violação de direitos autorais
                Leitura Social respeita a propriedade intelectual de outras pessoas ou empresas e solicitamos aos nossos membros que façam o mesmo. Toda e qualquer violação de direitos autorais deverá ser notificada ao Administrador e acompanhada dos documentos e informações que confirmam a autoria. A notificação poderá ser enviada pelos e-mails constantes do site ou via postal para o seguinte endereço @social.com.br    
            </article>            
        </div>

    </div>
    <div class="row">
        <footer class="col-md-12 jumbotron">

        </footer>  
    </div>
    {include file="footer.tpl"}
