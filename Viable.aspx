<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Viable.aspx.vb" Inherits="Viable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
           <h2 class="titulos jumbotron">Prospectos Viables</h2>
        </div>
    </div>
<div class="row">
    <div class="table-responsive col-md-10">
        <form runat="server">
            <%--Tabla GridView con diseño Display DAtaTAbleJQuery...--%>
            <%--Ultima Actualizacion 25/08/2016...--%> 
              <asp:GridView ID="Viable" runat="server" DataSourceID="Conn"
                AutoGenerateColumns="False"
                Class="gvv display" 
                DataKeyNames="Id_Reg"
                GridLines="None"                 
                ShowHeaderWhenEmpty="true"
                EmptyDataText = "No hay Registros">
                <EditRowStyle BackColor="#ffffcc" />
                <Columns>
 
                    <%--campos no editables...--%>
                    <asp:BoundField DataField="Id_Reg" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="Id_Puesto" ControlStyle-Width="70px" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" InsertVisible="False" ReadOnly="True" SortExpression="Nombre" ControlStyle-Width="70px" />
                    <asp:BoundField DataField="Puesto" HeaderText="Puesto" InsertVisible="False" ReadOnly="True" SortExpression="Puesto" ControlStyle-Width="70px" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" InsertVisible="False" ReadOnly="True" SortExpression="Departamento" ControlStyle-Width="70px" />
                    <asp:ImageField HeaderText="Foto" DataImageUrlField="Foto" ControlStyle-Width="40px">                        
                    </asp:ImageField>
                                         
                    <%--botones de acción sobre los registros...--%>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" HeaderText="Acciones">
                        <ItemTemplate>
                            <%--Botones de eliminar y editar cliente...--%>
                            <div class="row">                              
                              <div class="col-md-4">
                                  <asp:LinkButton ID="btnEdit" runat="server" Text='<i class="fa fa-pencil"></i>' CssClass="btn btn-info"/>
                              </div>
                            </div> 
                        </ItemTemplate>                        
                    </asp:TemplateField>
                </Columns>                
            </asp:GridView>
                
            <asp:SqlDataSource ID="Conn" runat="server" 
                ConnectionString="Data Source=192.168.100.102; Initial Catalog=GestionRH; User id=sa; Password=B1Admin"                 
                SelectCommand="Select T0.Id_Reg,Nombre=(T0.Nombre+' '+T0.Ap_paterno+' '+T0.Ap_materno),Puesto=T1.Nombre,Departamento=T2.Nombre,Foto=(Select T3.Url From GestionRH.dbo.TFPR T3 Where T3.Id_Reg=T0.Id_Reg) From GestionRH.dbo.TRM T0 Inner join GestionRH.dbo.TPD T1 ON (T1.Id_Puesto=T0.Id_Puesto) Inner Join GestionRH.dbo.TDE T2 ON (T2.Id_Departamento=T1.Id_Departamento) Where t0.Id_Status=3">
            </asp:SqlDataSource>            
        </form>
    </div>
    </div>

<%--Script java...--%>
    <%--Cargar tabla con opciones y traducir al español...--%>
    <%--Ultima actualizacion 25/08/2016...--%>
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
            $('#Viable').DataTable();
    } );
</script>
</asp:Content>

