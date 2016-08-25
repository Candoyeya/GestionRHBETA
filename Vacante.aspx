<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Vacante.aspx.vb" Inherits="Vacante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
           <h2 class="titulos jumbotron">Vacantes Disponibles</h2>
            <h3>
               <span style="float:left;"><asp:Label ID="lblInfo" runat="server" /></span>                
           </h3>
        </div>
    </div>
<div class="row">
    <div class="table-responsive col-md-10">
        <form runat="server">
            <%--Tabla GridView con diseño Display DAtaTAbleJQuery...--%>
            <%--Ultima Actualizacion 23/08/2016...--%> 
              <asp:GridView ID="Vacantes" runat="server" DataSourceID="Conn"
                AutoGenerateColumns="False"
                Class="gvv display" 
                DataKeyNames="Id_Puesto"
                GridLines="None"                 
                ShowHeaderWhenEmpty="true"
                EmptyDataText = "No hay Registros">
                <EditRowStyle BackColor="#ffffcc" />
                <Columns>
 
                    <%--campos no editables...--%>
                    <asp:BoundField DataField="Id_Puesto" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="Id_Puesto" ControlStyle-Width="70px" />
                    <asp:BoundField DataField="Puesto" HeaderText="Puesto" InsertVisible="False" ReadOnly="True" SortExpression="Puesto" ControlStyle-Width="70px" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" InsertVisible="False" ReadOnly="True" SortExpression="Departamento" ControlStyle-Width="70px" />
                                         
                    <%--botones de acción sobre los registros...--%>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" HeaderText="Acciones">
                        <ItemTemplate>
                            <%--Botones de eliminar y editar cliente...--%>
                            <div class="row">                              
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnEdit" runat="server" Text="Ver Prospectos" CssClass="btn btn-info"/>
                              </div>
                            </div> 
                        </ItemTemplate>                        
                    </asp:TemplateField>
                </Columns>                
            </asp:GridView>
                
            <asp:SqlDataSource ID="Conn" runat="server" 
                ConnectionString="Data Source=192.168.100.102; Initial Catalog=GestionRH; User id=sa; Password=B1Admin"                 
                SelectCommand="Select T0.Id_Puesto,Puesto=T0.Nombre,Departamento=T1.Nombre From GestionRH.dbo.TPD T0 Inner Join GestionRH.dbo.TDE T1 ON (T1.Id_Departamento=T0.Id_Departamento) WHERE T0.Disponible=1">                                            
            </asp:SqlDataSource>            
        </form>
    </div>
    
        <form action="empleado" method="POST">
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Alta Departamento</h4>
                  </div>
                  <div class="modal-body">
                      <div class="form-group">
                        <label for="recipient-name" class="control-label">Nombre</label>
                        <input type="text" class="form-control" name="nombre" id="recipient-name"/>
                      </div>
                      <div class="form-group">
                        <label for="message-text" class="control-label">Departamento</label>
                        <!--<select class="form-control" name="departamento">
                            <option value="#">-Departamento-</option>
                            @foreach($departamentos as $departamento)
                            <option value="{{$departamento->id}}">{{$departamento->nombre}}</option>
                            @endforeach
                        </select>-->
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Registrar</button>
                  </div>
                </div>
              </div>
            </div>
        </form>
    </div>
<%--Script java...--%>
    <%--Cargar tabla con opciones y traducir al español...--%>
    <%--Ultima actualizacion 23/08/2016...--%>
<script type="text/javascript">
            $('#exampleModal').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this)
          modal.find('.modal-title').text('New message to ' + recipient)
          modal.find('.modal-body input').val(recipient)
        })
</script>

<script>
        $(document).ready(function () {
            $(".gvv").prepend($("<thead></thead><tfoot></tfoot>").append($(this).find("tr:first"))).dataTable({
                "language":
                {
                    "sProcessing": "Procesando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "No se encontraron resultados",
                    "sEmptyTable": "Ningún dato disponible en esta tabla",
                    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "sInfoThousands": ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast": "Último",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
                }
            });
            $('#Vacantes').DataTable();
    } );
</script>
</asp:Content>

