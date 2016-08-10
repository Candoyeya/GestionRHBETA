'Imports ConectaClass
Imports System.Data.SqlClient

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub BtnEntrar_Click(sender As Object, e As EventArgs) Handles BtnEntrar.Click
        'Ultima Actualizacion 02/08/2016
        'Dim CC As ConectaClass = New ConectaClass
        Try
            '--Declaracion de cadenas de presentacion
            Dim Nombre As String = Nothing, Apellido_Pat As String = Nothing
            Dim Apellido_Mat As String = Nothing, Almacen As String = Nothing, Sistema As String = Nothing, ID As String = Nothing
            '--inicio de conexion
            Dim sql As String = "SELECT T0.Nom_Usr,T0.Apell_Pat,T0.Apell_Mat,T0.Etiqueta_3,T0.Sistema,T0.Id FROM DataBaseR.dbo.TAUS T0 WHERE T0.Usr_Sist='" & TxtUser.Text & "' AND T0.Usr_Pswd='" & TxtPassword.Text & "'"
            'CC.
            conn2.Open()
            cmd = New SqlCommand(sql, conn2)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    Nombre = dr.Item("Nom_Usr")
                    Apellido_Mat = dr.Item("Apell_Pat")
                    Apellido_Pat = dr.Item("Apell_Mat")
                    Almacen = dr.Item("Etiqueta_3")
                    Sistema = dr.Item("Sistema")
                    ID = dr.Item("Id")
                End While
            End If

            If Nombre <> "" Then
                Response.Redirect("Default.aspx", False)
            End If

            conn2.Close()
        Catch ex As Exception
            conn2.Close()
            MsgBox(ex.Message)
        End Try

    End Sub
End Class
