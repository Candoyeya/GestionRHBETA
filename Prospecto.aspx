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
                            <input type="text" class="form-control" name="Personas_dependen" placeholder="Ejemplo: Esposa, 2 hijos, Madre y Padre"/>
                         </div>
                    </div>
                            
                 </div> 
             </div><br /><br />
             <!--Inicio de la segunda pestaña "Documentacion" -->
             <!--fila CURP AFORE RFC -->
        
             <div role="tabpanel" class="tab-pane" id="documentacion">
                 <div class="alert alert-info col-md-10"><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Datos Familiares"</div>
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
            <!--Inicio de la Tercera pestaña "Datos Familiares" -->
             <!--fila Datos del Padre Nombre Vive Direccion y Ocupacion. -->
             <div role="tabpanel" class="tab-pane" id="familiares">
                  <div class="alert alert-info "><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Escolaridad"</div>
                 
                 <fieldset><legend class="text-primary">Datos del padre</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre completo del padre</label>
                            <input type="text" class="form-control" name="Nombre_Padre" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" name="Vive_Padre">
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" name="Dirección_Padre" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" name="Ocupacion_Padre" placeholder=""/>
                         </div>
                    </div>
                              
                  </div></fieldset>
                 <!--fila Datos de la Madre Nombre Vive Direccion y Ocupacion. -->
                 <fieldset><legend class="text-primary">Datos de la Madre</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre completo de la Madre</label>
                            <input type="text" class="form-control" name="Nombre_Padre" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" name="Vive_Madre">
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" name="Dirección_Madre" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" name="Ocupacion_Madre" placeholder=""/>
                         </div>
                    </div>
                  </div></fieldset>
                    <!--fila Datos de la Esposa Nombre Vive Direccion y Ocupacion. -->
                 <fieldset><legend class="text-primary">Datos de su Pareja</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre completo de su Pareja</label>
                            <input type="text" class="form-control" name="Nombre_Esposa" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" name="Vive_Esposa">
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" name="Dirección_Esposa" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" name="Ocupacion_Madre" placeholder=""/>
                         </div>
                    </div>
                  </div></fieldset>
                 <!--fila Datos de los hijos Nombre y edades. -->
                 <fieldset>
                     <legend class="text-primary">Datos de su(s) Hijo(s)</legend>
                     <div class="row">
                     <div class="col-md-10">
                        <div class="form-group">
                            <label>Nombre completo y edad de sus hijos</label>
                            <textarea class="form-control" rows="5" placeholder=" ejemplo. 1.Raul Garcia Benitez  14 años"></textarea>
                         </div>
                    </div>
                  </div>
                 </fieldset><br /><br />
             </div><!--Fin del div de la tercer pestaña -->
             <div role="tabpanel" class="tab-pane" id="escolaridad">
                 <!--Inicio de la cuarta pestaña -->
                 <div class="alert alert-info"><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Empleo actual y anteriores"</div>
                 <fieldset><legend class="text-primary">Primaria</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" name="Primaria" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="number" class="form-control" name="Años_Primaria"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Cuenta con Certificado</label>
                            <select class="form-control" name="Tituto_Primaria">
                                <option value="#">Selecciona una opción</option>
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                    </div>
                              
                  </div></fieldset>
                 <!--fila Datos de la Secundaria Nombre Fecha inicio fecha fin años y titulo. -->
                <fieldset><legend class="text-primary">Secundaria</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" name="Secundaria" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="number" class="form-control" name="Años_Secundaria"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Cuenta con Certificado</label>
                            <select class="form-control" name="Tituto_Secundaria">
                                <option value="#">Selecciona una opción</option>
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                    </div>
                  </div>
               </fieldset>
                  <!--fila Datos de la Preparatoria Nombre Fecha inicio fecha fin años y titulo. -->
                <fieldset><legend class="text-primary">Preparatoria o Vocacional</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" name="Preparatoria" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="number" class="form-control" name="Años_Preparatoria"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Certificado o Titulo</label>
                            <select class="form-control" name="Titulo_Preparatoria">
                                <option value="1">No cuento con el certificado</option>
                                <option value="2">Cuento con el certificado</option>
                                <option value="3">Cuento con el Titulo</option>
                            </select>
                         </div>
                    </div>
                  </div>
               </fieldset>
                 <!--fila Datos Profesional Nombre Fecha inicio fecha fin años y titulo. -->
                <fieldset><legend class="text-primary">Profesional</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" name="Profesional" placeholder=""/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name=""/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="number" class="form-control" name="Años_Preparatoria"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Certificado o Titulo</label>
                            <select class="form-control" name="Titulo_Preparatoria">
                                <option value="1">No cuento con el certificado</option>
                                <option value="2">Pasante (carrera concluida y certificado en tramite)</option>
                                <option value="3">Cuento con el certificado</option>
                                <option value="4">Cuento con el certificado y mi titulo esta en tramite</option>
                                <option value="5">Cuento con el Titulo</option>
                            </select>
                         </div>
                    </div> 
                  </div>
               </fieldset><br /><br />
             </div><!--Fin del div de la cuarta pestaña -->
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

