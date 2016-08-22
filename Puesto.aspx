<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Puesto.aspx.vb" Inherits="Puesto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/FunTablas.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
           <h2 class="titulos jumbotron">Puestos Actuales</h2>
            <h3>
               <span style="float:left;"><asp:Label ID="lblInfo" runat="server" /></span>                
           </h3>
        </div>
    </div>
<div class="row">
    <div class="table-responsive col-md-10">
        <form runat="server">
            <%--Tabla GridView con diseño Display DAtaTAbleJQuery...--%>
            <%--Ultima Actualizacion 22/08/2016...--%> 
              <asp:GridView ID="Puesto" runat="server" DataSourceID="Conn"
                AutoGenerateColumns="False"
                Class="gvv display" 
                DataKeyNames="Id_Puesto" 
                OnRowDeleted="GridView_Clientes_RowDeleted" 
                OnRowUpdated="GridView_Clientes_RowUpdated" 
                OnRowEditing="GridView_Clientes_RowEditing" GridLines="None"
                ShowHeaderWhenEmpty="true"
                EmptyDataText = "No hay Registros">
                <EditRowStyle BackColor="#ffffcc" />
                <Columns>
 
                    <%--campos no editables...--%>
                    <asp:BoundField DataField="Id_Puesto" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="Id_Puesto" ControlStyle-Width="70px" />
                     
                    <%--campos editables...--%>
                    <asp:TemplateField HeaderStyle-Width="300px" HeaderText="Puesto">
                        <ItemTemplate>
                            <asp:Label id="lblnombre" runat="server"><%# Eval("Nombre")%></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="Txtnombre" runat="server" Text='<%# Bind("Nombre")%>' CssClass="form-control" ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Width="150px" HeaderText="Disponible">
                        <ItemTemplate>
                            <asp:Label id="lblDisponible" runat="server"><%# Eval("Disponible")%></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtDisponible" runat="server" Text='<%# Bind("Disponible")%>' CssClass="form-control" ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Width="150px" HeaderText="Departamento">
                        <ItemTemplate>
                            <asp:Label id="lblDepartamento" runat="server"><%# Eval("Departamento")%></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtDepartamento" runat="server" Text='<%# Bind("Departamento")%>' CssClass="form-control" ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <%--botones de acción sobre los registros...--%>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" HeaderText="Acciones">
                        <ItemTemplate>
                            <%--Botones de eliminar y editar cliente...--%>
                            <div class="row">
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnDelete" runat="server" Text='<i class="fa fa-trash"></i>' CssClass="btn btn-danger" CommandName="Delete" OnClientClick="return confirm('¿Eliminar cliente?');"/>
                              </div>
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnEdit" runat="server" Text='<i class="fa fa-pencil"></i>' CssClass="btn btn-info" CommandName="Edit"/>
                              </div>
                            </div> 
                        </ItemTemplate>
                        <edititemtemplate>
                            <%--Botones de grabar y cancelar la edición de registro...--%>
                            <div class="row">
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnCancel" runat="server" Text='<i class="fa fa-times"></i>' CssClass="btn btn-danger" CommandName="Cancel" />
                              </div>
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnUpdate" runat="server" Text='<i class="fa fa-floppy-o"></i>' CssClass="btn btn-success" CommandName="Update" OnClientClick="return confirm('¿Seguro que quiere modificar?');" />                            
                              </div>                              
                            </div>
                        </edititemtemplate>
                    </asp:TemplateField>
                </Columns>                
            </asp:GridView>
                
            <asp:SqlDataSource ID="Conn" runat="server" 
                ConnectionString="Data Source=192.168.100.102; Initial Catalog=GestionRH; User id=sa; Password=B1Admin" 
                DeleteCommand="DELETE FROM GestionRH.dbo.TPD WHERE Id_Puesto = @Id_Puesto" 
                SelectCommand="Select T0.Id_Puesto,T0.Nombre,Disponible=(CASE WHEN T0.Disponible=1 THEN 'SI' ELSE 'NO' END),Departamento=T1.Nombre From GestionRH.dbo.TPD T0 Inner Join GestionRH.dbo.TDE T1 ON (T1.Id_Departamento=T0.Id_Departamento)" 
                UpdateCommand="UPDATE GestionRH.dbo.TPD SET Nombre = @Nombre, Disponible = (CASE WHEN @Disponible='SI' THEN 1 ELSE 0 END),Id_Departamento=(Select T0.Id_Departamento From GestionRH.dbo.TDE T0 Where T0.Nombre=@Departamento) WHERE Id_Puesto = @Id_Puesto">
                <DeleteParameters>
                    <asp:Parameter Name="Id_Puesto" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Disponible" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                </UpdateParameters>                               
            </asp:SqlDataSource>
        </form>
    </div>
    <div class="table-responsive col-md-2">
        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal"><span><i class="fa fa-plus" aria-hidden="true"></i></span></button>
     </div>        
</div>
<%--Script java...--%>
    <%--Cargar tabla con opciones y traducir al español...--%>
    <%--Ultima actualizacion 22/08/2016...--%>
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
            $('#Puesto').DataTable();
    } );
</script>
<%--llamar funcion js add y cargar envior a json...--%>
    <%--Ultima actualizacion 22/08/2016...--%>
<script>
    $(function () { // Código de Añadir, Guardar, editar y eliminar funciones 
    $("#btnAdd").bind("click", Add);
    });
</script>
</asp:Content>

