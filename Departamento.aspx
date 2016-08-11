<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Departamento.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <h3>Lista de Departamentos</h3>
</div>
<div class="row"> 
    <div class="table-responsive col-md-10"> 
    <form runat="server">            
        <h3>
            <br />
            <span style="float:left;"><asp:Label ID="lblInfo" runat="server" /></span>
            <span style="float:right;"><small>Total Departamentos:</small> <asp:Label ID="lblTotalDepartamentos" runat="server" CssClass="label label-warning" /></span>
        </h3>
        <p>&nbsp;</p><p>&nbsp;</p>
        <asp:GridView ID="GVDepartamento" runat="server" DataSourceID="conn"
            AutoGenerateColumns="False" 
            CssClass="table table-striped table-bordered table-hover"
            DataKeyNames="Id_Departamento"        
            OnRowDeleted="GVDepartamento_RowDeleted" 
            OnRowUpdated="GVDepartamento_RowUpdated" 
            OnRowEditing="GVDepartamento_RowEditing" 
            OnDataBound="GVDepartamento_DataBound" 
            allowpaging="true" >
 
            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#ffffcc" />
            <EmptyDataRowStyle forecolor="Red" CssClass="table table-bordered" />
            <emptydatatemplate>
                ¡No hay Departamentos!  
            </emptydatatemplate>           
 
            <%--Paginador...--%>        
            <pagertemplate>
            <div class="row" style="margin-top:20px;">
                <div class="col-lg-1" style="text-align:right;">
                    <h5><asp:label id="MessageLabel" text="Ir a la pág." runat="server" /></h5>
                </div>
                 <div class="col-lg-1" style="text-align:left;">
                    <asp:dropdownlist id="PageDropDownList" Width="50px" autopostback="true" onselectedindexchanged="PageDropDownList_SelectedIndexChanged" runat="server" CssClass="form-control" /></h3>
                </div>
                <div class="col-lg-10" style="text-align:right;">
                    <h3><asp:label id="CurrentPageLabel" runat="server" CssClass="label label-warning" /></h3>
                </div>
            </div>        
            </pagertemplate>             
 
            <Columns>
                <%--CheckBox para seleccionar varios registros...--%>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkEliminar" runat="server" AutoPostBack="true" OnCheckedChanged="chk_OnCheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>            
 
                <%--botones de acción sobre los registros...--%>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px">
                    <ItemTemplate>
                        <%--Botones de eliminar y editar departamento...--%>
                        <asp:Button ID="btnDelete" runat="server" Text="Quitar" CssClass="btn btn-danger" CommandName="Delete" OnClientClick="return confirm('¿Eliminar cliente?');" />
                        <asp:Button ID="btnEdit" runat="server" Text="Editar" CssClass="btn btn-info" CommandName="Edit" />
                    </ItemTemplate>
                    <edititemtemplate>
                        <%--Botones de grabar y cancelar la edición de registro...--%>
                        <asp:Button ID="btnUpdate" runat="server" Text="Grabar" CssClass="btn btn-success" CommandName="Update" OnClientClick="return confirm('¿Seguro que quiere modificar los datos del cliente?');" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="btn btn-default" CommandName="Cancel" />
                    </edititemtemplate>
                </asp:TemplateField>    
                
                <%--campos no editables...--%>
                <asp:BoundField DataField="Id_Departamento" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_Departamento" ControlStyle-Width="10px" />        
 
                <%--campos editables...--%>
                <asp:TemplateField HeaderStyle-Width="300px" HeaderText="Departamento">
                    <ItemTemplate>
                        <asp:Label id="lblDepartamento" runat="server"><%# Eval("Nombre")%></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDepartamento" runat="server" Text='<%# Bind("Nombre")%>' CssClass="form-control" ></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-Width="300px" HeaderText="Descripcion">
                    <ItemTemplate>
                        <asp:Label id="lblDescripcion" runat="server"><%# Eval("Descripcion")%></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDescripcion" runat="server" Text='<%# Bind("Descripcion")%>' CssClass="form-control" ></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="conn" runat="server" 
        ConnectionString="Data Source=192.168.100.102; Initial Catalog=GestionRH; User id=sa; Password=B1Admin" 
        DeleteCommand="DELETE FROM GestionRH.dbo.TDE WHERE [Id_Departamento] = @Id_Departamento" 
        SelectCommand="Select * From GestionRH.dbo.TDE" 
        UpdateCommand="UPDATE GestionRH.dbo.TDE SET [Nombre] = @Nombre, [Descripcion] = @Descripcion WHERE [Id_Departamento] = @Id_Departamento">
        <DeleteParameters>
            <asp:Parameter Name="Id_Departamento" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>    
        <p style="text-align:center;">
            <asp:LinkButton ID="btnQuitarSeleccionados" runat="server" CssClass="btn btn-lg btn-danger disabled" OnClientClick="return confirm('¿Quitar cliente/s de la lista?');"><span class="glyphicon glyphicon-trash"></span>&nbsp; Quitar Clientes seleccionados</asp:LinkButton>
        </p>
    </form>
    </div>
    <div class="table-responsive col-md-2">
    <form action="/departamento" method="post">
		    <button type="button" class="btn btn-info" data-toggle="modal" data-target=".bs-example-modal-sm"><span><i class="fa fa-plus" aria-hidden="true"></i></span></button>
		    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		      <div class="modal-dialog modal-sm">  
		         <div class="modal-content">
		           <div class="modal-header">
		               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		              <h4 class="modal-title">Alta Departamento</h4>
		           </div>
		           <div class="modal-body">
		             <div class="form-group">
		               <label for="recipient-name" class="control-label">Nombre</label>
		                <input type="text" class="form-control" name="nombre"/>
                       <label for="recipient-name" class="control-label">Descripcion</label>
		                <input type="text" class="form-control" name="descripcion"/>
		             </div>
		           </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>		              
                        <button id="BtnRegistrar" type="submit" class="btn btn-primary">Registrar</button>                        
		            </div>
		         </div>
		      </div>
		    </div>
  		</form>
     </div>
</div>
</asp:Content>

