Imports System.Data
Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Web.Script.Services
Imports System.Data.SqlClient

<System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://surtidora.no-ip.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hola a todos"
    End Function

    <WebMethod()>
    <Script.Services.ScriptMethod()>
    Public Function AddDepartamento(ByVal nombre As String, ByVal descripcion As String) As String
        '---Ultima actualizacion 19/08/2016
        Try
            Dim ultimo As Integer = Nothing
            Dim sql As String = "Select Ultimo=(MAX(Id_Departamento+1)) From GestionRH.dbo.TDE"

            conn3.Open()
            cmd = New SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    ultimo = dr.Item("Ultimo")
                End While
            End If
            conn3.Close()
            Dim InsertData As String = "INSERT INTO GestionRH.dbo.TDE (Id_Departamento," &
                                                                        "Nombre," &
                                                                        "Descripcion) " &
                                                                "VALUES ('" & ultimo & "'," &
                                                                        "'" & nombre & "'," &
                                                                        "'" & descripcion & "')"
            cmd = New SqlClient.SqlCommand(InsertData)
            '--------->Inicializar conexión
            Using conn As New SqlClient.SqlConnection(ConnectionString3)
                If conn.State = ConnectionState.Closed Then
                    cmd.Connection = conn
                    conn.Open()
                    cmd.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                conn.Close()
            End Using
        Catch ex As Exception
            conn.Close()
            conn3.Close()
            Return ex.Message
        End Try

        Return "Registro Exitoso: " & nombre

    End Function

    <WebMethod()>
    <Script.Services.ScriptMethod()>
    Public Function SelectDepartamento() As String
        Dim SelectDepa As String = Nothing
        Try
            Dim sql As String = "Select t0.Id_Departamento,t0.Nombre From GestionRH.dbo.TDE T0 "

            conn3.Open()
            cmd = New SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    SelectDepa = SelectDepa & "<option value='" & dr.Item("Id_Departamento") & "'>" & dr.Item("Nombre") & "</option>"
                End While
            End If
            conn3.Close()
        Catch ex As Exception
            conn3.Close()
            Return ex.Message
        End Try
        Return SelectDepa
    End Function

    <WebMethod()>
    <Script.Services.ScriptMethod()>
    Public Function AddPuesto(ByVal nombre As String, ByVal disponible As String, ByVal departamento As String) As String
        '---Ultima actualizacion 19/08/2016
        Try
            Dim ultimo As Integer = Nothing
            Dim sql As String = "Select Ultimo=(MAX(t0.Id_Puesto)+1) From GestionRH.dbo.TPD T0"

            conn3.Open()
            cmd = New SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            '--lectura 
            If dr.HasRows Then
                While dr.Read
                    ultimo = dr.Item("Ultimo")
                End While
            End If
            conn3.Close()
            Dim InsertData As String = "INSERT INTO GestionRH.dbo.TPD (Id_Puesto," &
                                                                        "Nombre," &
                                                                        "Disponible," &
                                                                        "Id_Departamento) " &
                                                                "VALUES ('" & ultimo & "'," &
                                                                        "'" & nombre & "'," &
                                                                        "'" & disponible & "'," &
                                                                        "'" & departamento & "')"
            cmd = New SqlClient.SqlCommand(InsertData)
            '--------->Inicializar conexión
            Using conn As New SqlClient.SqlConnection(ConnectionString3)
                If conn.State = ConnectionState.Closed Then
                    cmd.Connection = conn
                    conn.Open()
                    cmd.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                conn.Close()
            End Using
        Catch ex As Exception
            conn.Close()
            conn3.Close()
            Return ex.Message
        End Try

        Return "Registro Exitoso: " & nombre

    End Function
End Class