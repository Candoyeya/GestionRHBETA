<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Prospecto.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
           <h2 class="titulos jumbotron">Solicitud de Empleo</h2>
        </div>
    </div>
    <div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#personales" aria-controls="personales" role="tab" data-toggle="tab">Datos Personales</a></li>
    <li role="presentation"><a href="#documentacion" aria-controls="documentacion" role="tab" data-toggle="tab">Documentación</a></li>
    <li role="presentation"><a href="#familiares" aria-controls="familiares" role="tab" data-toggle="tab">Datos Familiares</a></li>
    <li role="presentation"><a href="#escolaridad" aria-controls="escolaridad" role="tab" data-toggle="tab">Escolaridad</a></li>
    <li role="presentation"><a href="#empleo" aria-controls="empleo" role="tab" data-toggle="tab">Empleo actual y anteriores</a></li>
    <li role="presentation"><a href="#referencias" aria-controls="referencias" role="tab" data-toggle="tab">Referencias Personales</a></li>
  </ul>

  <!-- Tab panes -->
    <form class="container">
         <div class="tab-content">
             <div role="tabpanel" class="tab-pane active" id="personales"><br />
                 <!--fila Nombre apellido paterno  materno y sueldo deseable -->
                  <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre(s)</label>
                            <input type="text" class="form-control" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido paterno</label>
                            <input type="text" class="form-control" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido materno</label>
                            <input type="text" class="form-control" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Sueldo deseable al mes</label>
                        <div class="form-group input-group">
                            <span class="input-group-addon">$</span>
                            <input type="text" class="form-control" placeholder=""/>
                            <span class="input-group-addon">.00</span>
                         </div>
                    </div>
                 </div>
                 <!--fila Direccion  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" class="form-control"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Municipio</label>
                            <input type="text" class="form-control" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Colonia</label>
                            <input type="text" class="form-control" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Codigo Postal</label>
                            <input type="number" class="form-control"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Direccion</label>
                            <input type="text" class="form-control"/>
                         </div>
                    </div>

                 </div>
             </div>
             <div role="tabpanel" class="tab-pane" id="documentacion">

             </div>
             <div role="tabpanel" class="tab-pane" id="familiares">3</div>
             <div role="tabpanel" class="tab-pane" id="escolaridad">4</div>
             <div role="tabpanel" class="tab-pane" id="empleo">5</div>
             <div role="tabpanel" class="tab-pane" id="referencias">6</div>

        </div>
    </form>
</div>

    <script>
        $('#myTabs a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
             })
    </script>
    <script>
        $('#myTabs a[href="#profile"]').tab('show') // Select tab by name
        $('#myTabs a:first').tab('show') // Select first tab
        $('#myTabs a:last').tab('show') // Select last tab
        $('#myTabs li:eq(2) a').tab('show') // Select third tab (0-indexed)
    </script>
</asp:Content>

