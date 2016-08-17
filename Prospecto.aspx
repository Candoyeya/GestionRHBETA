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
    <form class="container" runat="server">
         <div class="tab-content">
             <div role="tabpanel" class="tab-pane active" id="personales"><br />
                 <!--fila Nombre apellido paterno  materno y sueldo deseable -->
                 <div class="alert alert-info col-md-10"><strong>¡Informacion!</strong><br />Si no cuentas con alguno de los datos requeridos dejalo en blanco y continua registrando los demas datos, cuando termines de llenar esta pestaña, selecciona la pestaña "Documentación" y continua llenando los datos que se te pidan.</div>
                  <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre(s)</label>
                            <input type="text" class="form-control" name="Nombre" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido paterno</label>
                            <input type="text" class="form-control" name="Ap_paterno" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido materno</label>
                            <input type="text" class="form-control" name="Ap_materno" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Sueldo deseable al mes</label>
                        <div class="form-group input-group">
                            <span class="input-group-addon">$</span>
                            <input type="number" class="form-control" name="Sueldo_Deseado"/>
                            <span class="input-group-addon">.00</span>
                         </div>
                    </div>
                 </div>
                 <!--fila Estado, Municipio, Colonia y Direccion  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" class="form-control" name="Estado"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Municipio</label>
                            <input type="text" class="form-control" name="Ciudad" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Colonia</label>
                            <input type="text" class="form-control" name="Colonia" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Codigo Postal</label>
                            <input type="number" class="form-control" name="Codigo_Postal"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Direccion con numero</label>
                            <input type="text" class="form-control" name="Direccion"/>
                         </div>
                    </div>
                 </div>
                  <!--fila Telefono,Celular, Nacionalidad, Lugar de Nacimiento  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="number" class="form-control" name="Telefono" />
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Celular</label>
                            <input type="number" class="form-control" name="Celular"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <input type="text" class="form-control" name="Nacionalidad" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Lugar de Nacimiento (Estado)</label>
                            <input type="text" class="form-control" name="Lugar_Nacimiento"/>
                        </div>
                    </div>                
                 </div>
                  <!--fila Sexo, Estatura, Peso, fecha de nacimiento, Estado Civil  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Sexo</label>
                            <select class="form-control" name="Sexo">
                                <option value="#">-Sexo-</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Estatura</label>
                        <div class="form-group input-group">
                            <input type="number" class="form-control" name="Estatura"/>
                            <span class="input-group-addon">Mts</span>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Peso</label>
                        <div class="form-group input-group">
                            <input type="text" class="form-control" name="Peso" placeholder=""/>
                            <span class="input-group-addon">KG</span>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Estado Civil</label>
                            <select class="form-control" name="Estado_Civil">
                                <option value="#">-Estado Civil-</option>
                                <option value="1">Soltero</option>
                                <option value="2">Casado</option>
                                <option value="2">Divorciado</option>
                                <option value="2">Union Libre</option>
                                <option value="2">Viudo</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Fecha de Nacimiento</label>
                        <div class="form-group">
                            <input type="date" class="form-control" name="Fecha_Nacimiento"/>
                        </div>
                    </div>                
                 </div>
                            <!--fila Con que personas vives Que personas dependen de ti -->
                 <div class="row">
                     <div class="col-md-5">
                        <div class="form-group">
                            <label>¿Con que personas vives?</label>
                            <select class="form-control" name="Vive_Con">
                                <option value="#">Selecciona una opcion</option>
                                <option value="1">Padres</option>
                                <option value="2">Familia</option>
                                <option value="3">Parientes</option>
                                <option value="4">Conyuge</option>
                                <option value="5">Amigos</option>
                                <option value="6">Solo</option>
                                <option value="7">otros</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-5">
                        <div class="form-group">
                            <label>¿Que personas dependen de ti?</label>
                            <input type="text" class="form-control" name="Personas_dependen" placeholder=""/>
                         </div>
                    </div>
                            
                 </div> 
             </div>
             <!--Inicio de la segunda pestaña "Documentacion" -->
             <!--fila CURP AFORE RFC -->
        
             <div role="tabpanel" class="tab-pane" id="documentacion">
                 <div class="alert alert-info"><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Datos Familiares"</div>
                 <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>CURP</label>
                            <input type="text" class="form-control" name="CURP" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>RFC</label>
                            <input type="text" class="form-control" name="RFC" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Afore</label>
                            <input type="text" class="form-control" name="AFORE" placeholder=""/>
                         </div>
                    </div>
                              
                  </div>
                <!--fila Seguro Social Cartilla Militar y Pasaporte -->
                   <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Seguro Social</label>
                            <input type="text" class="form-control" name="No_SS" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Cartilla Militar</label>
                            <input type="text" class="form-control" name="No_Cartilla" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Pasaporte</label>
                            <input type="text" class="form-control" name="No_Pasaporte" placeholder=""/>
                         </div>
                    </div>
                              
                  </div>
                  <!--fila Seguro Social Cartilla Militar y Pasaporte -->
                 <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>¿Cuentas con licencia de manejo?</label>
                            <select class="form-control" name="Licencia_Clase">
                                <option value="#">Selecciona una opcion</option>
                                <option value="1">SI</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Tipo de Licencia</label>
                            <select class="form-control" name="Licencia_Clase">
                                <option value="#">Selecciona una opcion</option>
                                <option value="1">Motociclista</option>
                                <option value="2">Automovilista</option>
                                <option value="3">Chofer Clase 1</option>
                                <option value="4">Chofer Clase 2</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Licencia</label>
                            <input type="text" class="form-control" name="No_Licencia" placeholder=""/>
                         </div>
                    </div>
                              
                  </div>
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

