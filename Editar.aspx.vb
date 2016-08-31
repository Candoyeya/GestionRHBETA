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
            Dim sql As String = "Select Foto=(Select T3.Url From GestionRH.dbo.TFPR T3 Where T3.Id_Reg=T0.Id_Reg),Titulo=(T0.Nombre+' '+T0.Ap_paterno+' '+T0.Ap_materno),T0.Nombre,T0.Ap_paterno,T0.Ap_materno,T0.Sueldo_Deseado,T0.Estado,T0.Ciudad,T0.Colonia,T0.Codigo_Postal,T0.Direccion From GestionRH.dbo.TRM T0 WHERE T0.Id_Reg='" & Id_Reg & "'"

            conn3.Open()
            cmd = New SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    Foto_Perfil.ImageUrl = dr.Item("Foto")
                    lblInfo.Text = Id_Reg & " - " & dr.Item("Titulo")
                    Nombre.Value = dr.Item("Nombre")
                    Ap_paterno.Value = dr.Item("Ap_paterno")
                    Ap_materno.Value = dr.Item("Ap_materno")
                    sueldo_deseado.Value = CStr(Fix(CDec(dr.Item("Sueldo_Deseado"))))
                    Estado.Value = dr.Item("Estado")
                    Ciudad.Value = dr.Item("Ciudad")
                    Colonia.Value = dr.Item("Colonia")
                    Codigo_Postal.Value = dr.Item("Codigo_Postal")
                    Direccion.Value = dr.Item("Direccion")


                End While
            End If
            conn3.Close()
        Catch ex As Exception
            conn3.Close()
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
