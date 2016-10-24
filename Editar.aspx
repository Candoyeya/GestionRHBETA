<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Editar.aspx.vb" Inherits="Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">           
            <h2 class="titulos jumbotron">                
                <asp:Image ID="Foto_Perfil" runat="server" ControlStyle-Width="80px"/>
               <asp:Label ID="lblInfo" runat="server" />                             
           </h2>
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
    <form id="Datos" class="container" runat="server">
         <div class="tab-content">
             <div role="tabpanel" class="tab-pane active" id="personales"><br />
                 <!--fila Nombre apellido paterno  materno y sueldo deseable -->
                 <div class="alert alert-info col-md-10"><strong>¡Informacion!</strong><br />Si no cuentas con alguno de los datos requeridos dejalo en blanco y continua registrando los demas datos, cuando termines de llenar esta pestaña, selecciona la pestaña "Documentación" y continua llenando los datos que se te pidan.</div>
                  <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre(s)</label>
                            <input type="text" class="form-control" id="Nombre" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido paterno</label>
                            <input type="text" class="form-control" id="Ap_paterno" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Apellido materno</label>
                            <input type="text" class="form-control" id="Ap_materno" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Sueldo deseable al mes</label>
                        <div class="form-group input-group" runat="server">
                            <span class="input-group-addon" runat="server">$</span>
                            <input type="text" class="form-control" id="sueldo_deseado" placeholder="" runat="server"/>
                            <span class="input-group-addon" runat="server">.00</span>
                         </div>
                    </div>
                 </div>
                 <!--fila Estado, Municipio, Colonia y Direccion  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" class="form-control" id="Estado" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Municipio</label>
                            <input type="text" class="form-control" id="Ciudad" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Colonia</label>
                            <input type="text" class="form-control" id="Colonia" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group" runat="server">
                            <label>Codigo Postal</label>
                            <input type="text" class="form-control" id="Codigo_Postal" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Direccion con numero</label>
                            <input type="text" class="form-control" id="Direccion" runat="server"/>
                         </div>
                    </div>
                 </div>
                  <!--fila Telefono,Celular, Nacionalidad, Lugar de Nacimiento-->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="text" class="form-control" id="Telefono" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Celular</label>
                            <input type="text" class="form-control" id="Celular" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <input type="text" class="form-control" id="Nacionalidad" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Lugar de Nacimiento (Estado)</label>
                            <input type="text" class="form-control" id="Lugar_Nacimiento" runat="server"/>
                        </div>
                    </div>                
                 </div>
                  <!--fila Sexo, Estatura, Peso, fecha de nacimiento, Estado Civil  -->
                 <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Sexo</label>
                            <select class="form-control" id="Sexo" runat="server">
                                <option value="#">-Sexo-</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-2" runat="server">
                         <label>Estatura</label>
                        <div class="form-group input-group" runat="server">
                            <input type="text" class="form-control" id="Estatura" runat="server"/>
                            <span class="input-group-addon">Mts</span>
                         </div>
                    </div>
                     <div class="col-md-2">
                         <label>Peso</label>
                        <div class="form-group input-group">
                            <input type="text" class="form-control" id="Peso" placeholder="" runat="server"/>
                            <span class="input-group-addon">KG</span>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Estado Civil</label>
                            <select class="form-control" id="Estado_Civil" runat="server">
                                <option value="#">-Estado Civil-</option>
                                <option value="1">Soltero</option>
                                <option value="2">Casado</option>
                                <option value="2">Divorciado</option>
                                <option value="2">Union Libre</option>
                                <option value="2">Viudo</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-2" runat="server">
                         <label>Fecha de Nacimiento</label>
                        <div class="form-group">
                            <input type="text" class="form-control" id="Fecha_Nacimiento" runat="server" placeholder="DD/MM/AAAA"/>
                        </div>
                    </div>                
                 </div>
                            <!--fila Con que personas vives Que personas dependen de ti -->
                 <div class="row">
                     <div class="col-md-5">
                        <div class="form-group">
                            <label>¿Con que personas vives?</label>
                            <select class="form-control" id="Vive_Con" runat="server">
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
                            <input type="text" class="form-control" id="Personas_dependen" placeholder="Ejemplo: Esposa, 2 hijos, Madre y Padre" runat="server"/>
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
                            <input type="text" class="form-control" id="CURP" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>RFC</label>
                            <input type="text" class="form-control" id="RFC" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Afore</label>
                            <input type="text" class="form-control" id="AFORE" placeholder="" runat="server"/>
                         </div>
                    </div>
                              
                  </div>
                <!--fila Seguro Social Cartilla Militar y Pasaporte -->
                   <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Seguro Social</label>
                            <input type="text" class="form-control" id="No_SS" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Cartilla Militar</label>
                            <input type="text" class="form-control" id="No_Cartilla" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Numero de Pasaporte</label>
                            <input type="text" class="form-control" id="No_Pasaporte" placeholder="" runat="server"/>
                         </div>
                    </div>
                              
                  </div>
                  <!--fila Seguro Social Cartilla Militar y Pasaporte -->
                 <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>¿Cuentas con licencia de manejo?</label>
                            <select class="form-control" id="Licencia_Manejo" runat="server">
                                <option value="#">Selecciona una opcion</option>
                                <option value="1">SI</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Tipo de Licencia</label>
                            <select class="form-control" id="Licencia_Clase" runat="server">
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
                            <input type="text" class="form-control" id="No_Licencia" placeholder="" runat="server"/>
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
                            <input type="text" class="form-control" id="Nombre_Padre" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" id="Vive_Padre" runat="server">
                                <option value="#">--</option>
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" id="Direccion_Padre" placeholder="Calle,No,Colonia,CP" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" id="Ocupacion_Padre" placeholder="" runat="server"/>
                         </div>
                    </div>
                              
                  </div></fieldset>
                 <!--fila Datos de la Madre Nombre Vive Direccion y Ocupacion. -->
                 <fieldset><legend class="text-primary">Datos de la Madre</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre completo de la Madre</label>
                            <input type="text" class="form-control" id="Nombre_Madre" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" id="Vive_Madre" runat="server">
                                <option value="#">--</option>
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" id="Direccion_Madre" placeholder="Calle,No,Colonia,CP" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" id="Ocupacion_Madre" placeholder="" runat="server"/>
                         </div>
                    </div>
                  </div></fieldset>
                    <!--fila Datos de la Esposa Nombre Vive Direccion y Ocupacion. -->
                 <fieldset><legend class="text-primary">Datos de su Pareja</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre completo de su Pareja</label>
                            <input type="text" class="form-control" id="Nombre_Esposa" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Vive</label>
                            <select class="form-control" id="Vive_Esposa" runat="server">
                                <option value="#">--</option>
                                <option value="1">Si</option>
                                <option value="2">No</option>
                            </select>
                         </div>
                        </div>
                     <div class="col-md-3">
                         <div class="form-group">
                            <label>Dirección</label>
                            <input type="text" class="form-control" id="Direccion_Esposa" placeholder="Calle,No,Colonia,CP" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Ocupacion</label>
                            <input type="text" class="form-control" id="Ocupacion_Esposa" placeholder="" runat="server"/>
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
                            <textarea class="form-control" rows="5" id="Hijos" placeholder=" ejemplo. 1.Raul Garcia Benitez  14 años" runat="server"></textarea>
                         </div>
                    </div>
                  </div>
                 </fieldset><br /><br />
             </div><!--Fin del div de la tercer pestaña -->
             <div role="tabpanel" class="tab-pane" id="escolaridad">
             <!--Inicio de la cuarta pestaña "Escolaridad"-->
              <!--fila Datos de la Primaria Nombre Fecha inicio fecha fin años y titulo. -->
                <div class="alert alert-info"><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Empleo actual y anteriores"</div>
                 <fieldset><legend class="text-primary">Primaria</legend><div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" class="form-control" id="Primaria" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name="" />
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name="" />
                         </div>
                    </div>
                     <div class="col-md-1" runat="server">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="text" class="form-control" id="Años_Primaria" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Cuenta con Certificado</label>
                            <select class="form-control" id="Titulo_Primaria" runat="server">
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
                            <input type="text" class="form-control" id="Secundaria" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>
                            <input type="date" class="form-control" name="" />
                         </div>
                        </div>
                     <div class="col-md-2">
                         <div class="form-group">
                            <label>Fecha fin</label>
                            <input type="date" class="form-control" name=""/ />
                         </div>
                    </div>
                     <div class="col-md-1">
                        <div class="form-group">
                            <label>Años</label>
                            <input type="text" class="form-control" id="Años_Secundaria" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Cuenta con Certificado</label>
                            <select class="form-control" id="Titulo_Secundaria" runat="server">
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
                            <input type="text" class="form-control" id="Preparatoria" placeholder="" runat="server"/>
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
                            <input type="text" class="form-control" id="Años_Preparatoria" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Certificado o Titulo</label>
                            <select class="form-control" id="Titulo_Preparatoria" runat="server">
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
                            <input type="text" class="form-control" id="Profesional" placeholder="" runat="server"/>
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
                            <input type="text" class="form-control" id="Años_Profesional" runat="server"/>
                         </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Certificado o Titulo</label>
                            <select class="form-control" id="Titulo_Profesional" runat="server">
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
             <div role="tabpanel" class="tab-pane" id="empleo">
             <!--Inicio de la cuarta pestaña "Escolaridad"-->              
              <div class="alert alert-info"><strong>¡Información!</strong> <br />Terminando de llenar la informacion de esta pestaña accede a "Referencias Personales"</div>
                 <!--Fila Empleo Actual o Ultimo. ------------------------------------------------------------------------------------->
                <fieldset><legend class="text-primary">Ultimo Empleo o Actual</legend>
                    <!--Fila 1-->
                   <div class="row">
                    <!--Tiempo Laboro 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tiempo Laboro</label>
                            <select class="form-control" id="Tiempo_Presto_Servicio_1" runat="server">
                                <option value="#">Seleccionar Opcion</option>
                                <option value="1">De 0 a 3 Meses</option>
                                <option value="2">De 3 Meses a 1 Año</option>
                                <option value="3">De 1 a 2 Años</option>
                                <option value="4">De 2 a 5 Años</option>
                                <option value="5">Mas de 5 Años</option>
                            </select>
                         </div>
                    </div>
                    <!--Nombre compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="Nombre_de_la_compañia_1" placeholder="" runat="server"/>
                         </div>
                    </div>
                    <!--Direccion compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input type="text" class="form-control" id="Direccion_compañia_1" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                 <!--Fila 2-->
                 <div class="row">
                     <!--Telefono compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Teléfono</label>
                            <input type="text" class="form-control" id="Telefono_compañia_1" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <!--Puesto compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto</label>
                            <input type="text" class="form-control" id="Puesto_desempeñado_1" placeholder="" runat="server"/>
                         </div>
                    </div> 
                     <!--Motivo Salida compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Motivo de Salida</label>
                            <input type="text" class="form-control" id="Motivo_separacion_1" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                <!--Fila 3-->
                <div class="row">
                    <!--Sueldo compañia 1-->
                    <div class="col-md-2">
                         <label>Sueldo Mensual</label>
                        <div class="form-group input-group" runat="server">
                            <span class="input-group-addon" runat="server">$</span>
                            <input type="text" class="form-control" id="Sueldo_Inicial_1" placeholder="" runat="server"/>
                            <span class="input-group-addon" runat="server">.00</span>
                         </div>
                    </div>
                    <!--Nombre Jefe compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Nombre_jefe_directo_1" placeholder="" runat="server"/>
                        </div>
                    </div>
                    <!--Puesto Jefe compañia 1-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Puesto_jefe_directo_1" placeholder="" runat="server"/>
                         </div>
                    </div> 
                    <!--Solicitar Referencias 1-->
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Solicitar Referencias</label>
                            <select class="form-control" id="Solicitar_Informacion_1" runat="server">
                                <option value="#">--</option>
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>                                
                            </select>
                         </div>
                    </div>

                </div>
                 <!--Actividades Descripcion-->
                 <div class="row">
                     <div class="col-md-10">
                        <div class="form-group">
                            <label>Actividades Desempeñadas</label>
                            <textarea class="form-control" rows="5" id="Actividades_desempeñadas_1" placeholder="Describir sus actividades de manera resumida." runat="server"></textarea>
                        </div>
                    </div>
                 </div>                
                </fieldset><br /><br />
                 <!--Empleo anterior 1------------------------------------------------------------------------------------------------->
                <fieldset><legend class="text-primary">Empleo Anterior</legend>
                    <!--Fila 1-->
                   <div class="row">
                    <!--Tiempo Laboro 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tiempo Laboro</label>
                            <select class="form-control" id="Tiempo_Presto_Servicio_2" runat="server">
                                <option value="#">Seleccionar Opcion</option>
                                <option value="1">De 0 a 3 Meses</option>
                                <option value="2">De 3 Meses a 1 Año</option>
                                <option value="3">De 1 a 2 Años</option>
                                <option value="4">De 2 a 5 Años</option>
                                <option value="5">Mas de 5 Años</option>
                            </select>
                         </div>
                    </div>
                    <!--Nombre compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="Nombre_de_la_compañia_2" placeholder="" runat="server"/>
                         </div>
                    </div>
                    <!--Direccion compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input type="text" class="form-control" id="Text2" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                 <!--Fila 2-->
                 <div class="row">
                     <!--Telefono compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Teléfono</label>
                            <input type="text" class="form-control" id="Text3" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <!--Puesto compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto</label>
                            <input type="text" class="form-control" id="Text4" placeholder="" runat="server"/>
                         </div>
                    </div> 
                     <!--Motivo Salida compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Motivo de Salida</label>
                            <input type="text" class="form-control" id="Text5" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                <!--Fila 3-->
                <div class="row">
                    <!--Sueldo compañia 2-->
                    <div class="col-md-2">
                         <label>Sueldo Mensual</label>
                        <div class="form-group input-group" runat="server">
                            <span class="input-group-addon" runat="server">$</span>
                            <input type="text" class="form-control" id="Text6" placeholder="" runat="server"/>
                            <span class="input-group-addon" runat="server">.00</span>
                         </div>
                    </div>
                    <!--Nombre Jefe compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text7" placeholder="" runat="server"/>
                        </div>
                    </div>
                    <!--Puesto Jefe compañia 2-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text8" placeholder="" runat="server"/>
                         </div>
                    </div> 
                    <!--Solicitar Referencias 2-->
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Solicitar Referencias</label>
                            <select class="form-control" id="Select2" runat="server">
                                <option value="#">--</option>
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>                                
                            </select>
                         </div>
                    </div>

                </div>
                 <!--Actividades Descripcion 2-->
                 <div class="row">
                     <div class="col-md-10">
                        <div class="form-group">
                            <label>Actividades Desempeñadas</label>
                            <textarea class="form-control" rows="5" id="Textarea1" placeholder="Describir sus actividades de manera resumida." runat="server"></textarea>
                        </div>
                    </div>
                 </div>                
                </fieldset><br /><br />
                <!--Empleo anterior 2------------------------------------------------------------------------------------------------->
                <fieldset><legend class="text-primary">Empleo Anterior</legend>
                    <!--Fila 1-->
                   <div class="row">
                    <!--Tiempo Laboro 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tiempo Laboro</label>
                            <select class="form-control" id="Tiempo_Presto_Servicio_3" runat="server">
                                <option value="#">Seleccionar Opcion</option>
                                <option value="1">De 0 a 3 Meses</option>
                                <option value="2">De 3 Meses a 1 Año</option>
                                <option value="3">De 1 a 2 Años</option>
                                <option value="4">De 2 a 5 Años</option>
                                <option value="5">Mas de 5 Años</option>
                            </select>
                         </div>
                    </div>
                    <!--Nombre compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="Nombre_de_la_compañia_3" placeholder="" runat="server"/>
                         </div>
                    </div>
                    <!--Direccion compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input type="text" class="form-control" id="Text10" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                 <!--Fila 2-->
                 <div class="row">
                     <!--Telefono compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Teléfono</label>
                            <input type="text" class="form-control" id="Text11" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <!--Puesto compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto</label>
                            <input type="text" class="form-control" id="Text12" placeholder="" runat="server"/>
                         </div>
                    </div> 
                     <!--Motivo Salida compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Motivo de Salida</label>
                            <input type="text" class="form-control" id="Text13" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                <!--Fila 3-->
                <div class="row">
                    <!--Sueldo compañia 3-->
                    <div class="col-md-2">
                         <label>Sueldo Mensual</label>
                        <div class="form-group input-group" runat="server">
                            <span class="input-group-addon" runat="server">$</span>
                            <input type="text" class="form-control" id="Text14" placeholder="" runat="server"/>
                            <span class="input-group-addon" runat="server">.00</span>
                         </div>
                    </div>
                    <!--Nombre Jefe compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text15" placeholder="" runat="server"/>
                        </div>
                    </div>
                    <!--Puesto Jefe compañia 3-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text16" placeholder="" runat="server"/>
                         </div>
                    </div> 
                    <!--Solicitar Referencias 3-->
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Solicitar Referencias</label>
                            <select class="form-control" id="Select4" runat="server">
                                <option value="#">--</option>
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>                                
                            </select>
                         </div>
                    </div>

                </div>
                 <!--Actividades Descripcion 3-->
                 <div class="row">
                     <div class="col-md-10">
                        <div class="form-group">
                            <label>Actividades Desempeñadas</label>
                            <textarea class="form-control" rows="5" id="Textarea2" placeholder="Describir sus actividades de manera resumida." runat="server"></textarea>
                        </div>
                    </div>
                 </div>                
                </fieldset><br /><br />
                <!--Empleo anterior 3------------------------------------------------------------------------------------------------->
                <fieldset><legend class="text-primary">Empleo Anterior</legend>
                    <!--Fila 1-->
                   <div class="row">
                    <!--Tiempo Laboro 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tiempo Laboro</label>
                            <select class="form-control" id="Tiempo_Presto_Servicio_4" runat="server">
                                <option value="#">Seleccionar Opcion</option>
                                <option value="1">De 0 a 3 Meses</option>
                                <option value="2">De 3 Meses a 1 Año</option>
                                <option value="3">De 1 a 2 Años</option>
                                <option value="4">De 2 a 5 Años</option>
                                <option value="5">Mas de 5 Años</option>
                            </select>
                         </div>
                    </div>
                    <!--Nombre compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="Nombre_de_la_compañia_4" placeholder="" runat="server"/>
                         </div>
                    </div>
                    <!--Direccion compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input type="text" class="form-control" id="Text18" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                 <!--Fila 2-->
                 <div class="row">
                     <!--Telefono compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Teléfono</label>
                            <input type="text" class="form-control" id="Text19" placeholder="" runat="server"/>
                         </div>
                    </div>
                     <!--Puesto compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto</label>
                            <input type="text" class="form-control" id="Text20" placeholder="" runat="server"/>
                         </div>
                    </div> 
                     <!--Motivo Salida compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Motivo de Salida</label>
                            <input type="text" class="form-control" id="Text21" placeholder="" runat="server"/>
                         </div>
                    </div> 
                 </div>
                <!--Fila 3-->
                <div class="row">
                    <!--Sueldo compañia 4-->
                    <div class="col-md-2">
                         <label>Sueldo Mensual</label>
                        <div class="form-group input-group" runat="server">
                            <span class="input-group-addon" runat="server">$</span>
                            <input type="text" class="form-control" id="Text22" placeholder="" runat="server"/>
                            <span class="input-group-addon" runat="server">.00</span>
                         </div>
                    </div>
                    <!--Nombre Jefe compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nombre Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text23" placeholder="" runat="server"/>
                        </div>
                    </div>
                    <!--Puesto Jefe compañia 4-->
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Puesto Jefe Inmediato</label>
                            <input type="text" class="form-control" id="Text24" placeholder="" runat="server"/>
                         </div>
                    </div> 
                    <!--Solicitar Referencias 4-->
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Solicitar Referencias</label>
                            <select class="form-control" id="Select6" runat="server">
                                <option value="#">--</option>
                                <option value="SI">SI</option>
                                <option value="NO">NO</option>                                
                            </select>
                         </div>
                    </div>

                </div>
                 <!--Actividades Descripcion 4-->
                 <div class="row">
                     <div class="col-md-10">
                        <div class="form-group">
                            <label>Actividades Desempeñadas</label>
                            <textarea class="form-control" rows="5" id="Textarea3" placeholder="Describir sus actividades de manera resumida." runat="server"></textarea>
                        </div>
                    </div>
                 </div>                
                </fieldset><br /><br />
               </div>
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

