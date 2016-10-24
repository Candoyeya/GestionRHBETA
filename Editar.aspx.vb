Imports System.Data.SqlClient
Partial Class Editar
    Inherits System.Web.UI.Page
    Dim Id_Reg As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Id_load()
        If Id_Reg <> "" Then
            CargaDatos()
        End If
    End Sub

    Public Sub Id_load()
        Id_Reg = Request.QueryString("Id_Reg")
    End Sub

    Public Sub CargaDatos()
        Try
            Dim sql As String = "Select Foto=(Select T3.Url From GestionRH.dbo.TFPR T3 Where T3.Id_Reg=T0.Id_Reg)," &
                                "Titulo=(T0.Nombre+' '+T0.Ap_paterno+' '+T0.Ap_materno),T0.Nombre,T0.Ap_paterno," &
                                "T0.Ap_materno,T0.Sueldo_Deseado,T0.Estado,T0.Ciudad,T0.Colonia,T0.Codigo_Postal," &
                                "T0.Direccion,T0.Telefono,T0.Celular,T0.Nacionalidad,T0.Lugar_Nacimiento,T0.Sexo," &
                                "T0.Estatura,T0.Peso,T0.Estado_Civil,T0.Fecha_Nacimiento,T0.Vive_Con,T0.Personas_dependen," &
                                "T0.CURP,T0.RFC,T0.AFORE,T0.No_SS,T0.No_Cartilla,T0.No_Pasaporte,T0.Licencia_Manejo," &
                                "T0.Licencia_Clase,T0.No_Licencia,T0.Nombre_Padre,T0.Vive_Padre,T0.Direccion_Padre,T0.Ocupacion_Padre, " &
                                "T0.Nombre_Madre,T0.Vive_Madre,T0.Direccion_Madre,T0.Ocupacion_Madre,T0.Nombre_Esposa,T0.Vive_Esposa, " &
                                "T0.Direccion_Esposa,T0.Ocupacion_Esposa,T0.Hijos,T0.Primaria,T0.Años_Primaria,T0.Titulo_Primaria, " &
                                "T0.Secundaria,T0.Años_Secundaria,T0.Titulo_Secundaria,T0.Preparatoria,T0.Años_Preparatoria, " &
                                "T0.Titulo_Preparatoria,T0.Profesional,T0.Años_Profesional,T0.Titulo_Profesional, " &
                                "T0.Otras,T0.Años_Otras,T0.Titulo_Otras " &
                                "From GestionRH.dbo.TRM T0 WHERE T0.Id_Reg='" & Id_Reg & "'"

            conn3.Open()
            cmd = New SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    '-----Datos Personales---
                    Foto_Perfil.ImageUrl = dr.Item("Foto")
                    lblInfo.Text = Id_Reg & " - " & dr.Item("Titulo")
                    Nombre.Value = If(dr.Item("Nombre") Is DBNull.Value, "", dr.Item("Nombre"))
                    Ap_paterno.Value = If(dr.Item("Ap_paterno") Is DBNull.Value, "", dr.Item("Ap_paterno"))
                    Ap_materno.Value = If(dr.Item("Ap_materno") Is DBNull.Value, "", dr.Item("Ap_materno"))
                    sueldo_deseado.Value = If(dr.Item("Sueldo_Deseado") Is DBNull.Value, "", CStr(Fix(CDec(dr.Item("Sueldo_Deseado")))))
                    Estado.Value = If(dr.Item("Estado") Is DBNull.Value, "", dr.Item("Estado"))
                    Ciudad.Value = If(dr.Item("Ciudad") Is DBNull.Value, "", dr.Item("Ciudad"))
                    Colonia.Value = If(dr.Item("Colonia") Is DBNull.Value, "", dr.Item("Colonia"))
                    Codigo_Postal.Value = If(dr.Item("Codigo_Postal") Is DBNull.Value, "", dr.Item("Codigo_Postal"))
                    Direccion.Value = If(dr.Item("Direccion") Is DBNull.Value, "", dr.Item("Direccion"))
                    Telefono.Value = If(dr.Item("Telefono") Is DBNull.Value, "", dr.Item("Telefono"))
                    Celular.Value = If(dr.Item("Celular") Is DBNull.Value, "", dr.Item("Celular"))
                    Nacionalidad.Value = If(dr.Item("Nacionalidad") Is DBNull.Value, "", dr.Item("Nacionalidad"))
                    Lugar_Nacimiento.Value = If(dr.Item("Lugar_Nacimiento") Is DBNull.Value, "", dr.Item("Lugar_Nacimiento"))
                    Sexo.Value = If(dr.Item("Sexo") Is DBNull.Value, "0", dr.Item("Sexo"))
                    Estatura.Value = If(dr.Item("Estatura") Is DBNull.Value, "0", dr.Item("Estatura"))
                    Peso.Value = If(dr.Item("Peso") Is DBNull.Value, "", dr.Item("Peso"))
                    Estado_Civil.Value = If(dr.Item("Estado_Civil") Is DBNull.Value, "#", dr.Item("Estado_Civil"))
                    Fecha_Nacimiento.Value = If(dr.Item("Fecha_Nacimiento") Is DBNull.Value, "", dr.Item("Fecha_Nacimiento"))
                    Vive_Con.Value = If(dr.Item("Vive_Con") Is DBNull.Value, "#", dr.Item("Vive_Con"))
                    Personas_dependen.Value = If(dr.Item("Personas_dependen") Is DBNull.Value, "", dr.Item("Personas_dependen"))

                    '-----Datos Personales---
                    CURP.Value = If(dr.Item("CURP") Is DBNull.Value, "", dr.Item("CURP"))
                    RFC.Value = If(dr.Item("RFC") Is DBNull.Value, "", dr.Item("RFC"))
                    AFORE.Value = If(dr.Item("AFORE") Is DBNull.Value, "", dr.Item("AFORE"))
                    No_SS.Value = If(dr.Item("No_SS") Is DBNull.Value, "", dr.Item("No_SS"))
                    No_Cartilla.Value = If(dr.Item("No_Cartilla") Is DBNull.Value, "", dr.Item("No_Cartilla"))
                    No_Pasaporte.Value = If(dr.Item("No_Pasaporte") Is DBNull.Value, "", dr.Item("No_Pasaporte"))
                    Licencia_Manejo.Value = If(dr.Item("Licencia_Manejo") Is DBNull.Value, "#", dr.Item("Licencia_Manejo"))
                    Licencia_Clase.Value = If(dr.Item("Licencia_Clase") Is DBNull.Value, "#", dr.Item("Licencia_Clase"))
                    No_Licencia.Value = If(dr.Item("No_Licencia") Is DBNull.Value, "", dr.Item("No_Licencia"))

                    '-----Datos Familiares---
                    '--Padre
                    Nombre_Padre.Value = If(dr.Item("Nombre_Padre") Is DBNull.Value, "", dr.Item("Nombre_Padre"))
                    Vive_Padre.Value = If(dr.Item("Vive_Padre") Is DBNull.Value, "#", dr.Item("Vive_Padre"))
                    Direccion_Padre.Value = If(dr.Item("Direccion_Padre") Is DBNull.Value, "", dr.Item("Direccion_Padre"))
                    Ocupacion_Padre.Value = If(dr.Item("Ocupacion_Padre") Is DBNull.Value, "", dr.Item("Ocupacion_Padre"))
                    '--Madre
                    Nombre_Madre.Value = If(dr.Item("Nombre_Madre") Is DBNull.Value, "", dr.Item("Nombre_Madre"))
                    Vive_Madre.Value = If(dr.Item("Vive_Madre") Is DBNull.Value, "#", dr.Item("Vive_Madre"))
                    Direccion_Madre.Value = If(dr.Item("Direccion_Madre") Is DBNull.Value, "", dr.Item("Direccion_Madre"))
                    Ocupacion_Madre.Value = If(dr.Item("Ocupacion_Madre") Is DBNull.Value, "", dr.Item("Ocupacion_Madre"))
                    '--Esposa
                    Nombre_Esposa.Value = If(dr.Item("Nombre_Esposa") Is DBNull.Value, "", dr.Item("Nombre_Esposa"))
                    Vive_Esposa.Value = If(dr.Item("Vive_Esposa") Is DBNull.Value, "#", dr.Item("Vive_Esposa"))
                    Direccion_Esposa.Value = If(dr.Item("Direccion_Esposa") Is DBNull.Value, "", dr.Item("Direccion_Esposa"))
                    Ocupacion_Esposa.Value = If(dr.Item("Ocupacion_Esposa") Is DBNull.Value, "", dr.Item("Ocupacion_Esposa"))
                    '--Hijos
                    Hijos.Value = If(dr.Item("Hijos") Is DBNull.Value, "", dr.Item("Hijos"))

                    '-----Escolaridad---
                    '---Primario
                    Primaria.Value = If(dr.Item("Primaria") Is DBNull.Value, "", dr.Item("Primaria"))
                    Años_Primaria.Value = If(dr.Item("Años_Primaria") Is DBNull.Value, "", dr.Item("Años_Primaria"))
                    Titulo_Primaria.Value = If(dr.Item("Titulo_Primaria") Is DBNull.Value, "#", dr.Item("Titulo_Primaria"))
                    '---Secundaria
                    Secundaria.Value = If(dr.Item("Secundaria") Is DBNull.Value, "", dr.Item("Secundaria"))
                    Años_Secundaria.Value = If(dr.Item("Años_Secundaria") Is DBNull.Value, "", dr.Item("Años_Secundaria"))
                    Titulo_Secundaria.Value = If(dr.Item("Titulo_Secundaria") Is DBNull.Value, "#", dr.Item("Titulo_Secundaria"))
                    '---Preparatoria
                    Preparatoria.Value = If(dr.Item("Preparatoria") Is DBNull.Value, "", dr.Item("Preparatoria"))
                    Años_Preparatoria.Value = If(dr.Item("Años_Preparatoria") Is DBNull.Value, "", dr.Item("Años_Preparatoria"))
                    Titulo_Preparatoria.Value = If(dr.Item("Titulo_Preparatoria") Is DBNull.Value, "#", dr.Item("Titulo_Preparatoria"))
                    '---Profesional
                    Profesional.Value = If(dr.Item("Profesional") Is DBNull.Value, "", dr.Item("Profesional"))
                    Años_Profesional.Value = If(dr.Item("Años_Profesional") Is DBNull.Value, "", dr.Item("Años_Profesional"))
                    Titulo_Profesional.Value = If(dr.Item("Titulo_Profesional") Is DBNull.Value, "#", dr.Item("Titulo_Profesional"))

                End While
            End If
            conn3.Close()
        Catch ex As Exception
            conn3.Close()
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
