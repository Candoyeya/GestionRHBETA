<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Departamento.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
    <div class="col-md-12"><h2 class="titulos">Lista de departamentos</h2></div>
</div>
<div class="row">    
    <div class="table-responsive col-md-10"> 
        <form id="form1" runat="server">
        <br />                
                <asp:GridView 
                    ID="GridView1" 
                    runat="server"
                    class="table table-striped table-bordered table-hover"> 

                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" /> 
                    <Columns>
                        <%--botones de acción sobre los registros...--%>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-Width="100px">
                            <ItemTemplate>
                                <%--Boton agregar puesto...--%>  
                                <div class="row">
                                    <div class="col-md-3">
                                        <asp:Button ID="BtnAgregar" runat="server" Text="+" CssClass="btn btn-success" CommandName="Agregar" Font-Size="Small" />
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Button ID="BtnVer" runat="server" Text="+" CssClass="btn btn-success" CommandName="Ver" Font-Size="Small" />                                
                                    </div>
                                </div>
                            </ItemTemplate>                                                        
                        </asp:TemplateField>
                    </Columns>                                                       
                </asp:GridView>                                       
        <br />
        </form>
    </div>
    <div class="table-responsive col-md-2">
        <form action="/departamento" method="POST">
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

