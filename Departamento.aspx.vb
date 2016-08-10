Imports System.Data
Imports System.Xml

Partial Class Default2
    Inherits System.Web.UI.Page

    Private Sub Llenar()
        '---Crear tabla
        Dim DataTable As New DataTable()

        '--Consulta SQL
        Dim sql As String = "Select T0.Nombre,T0.Descripcion From GestionRH.dbo.TDE T0"
        'XmlDoc.LoadXml(Ws.ExecuteSQL(CadenaCon, sql).InnerXml)

        '--------->Columnas del GridView
        DataTable.Columns.Add("Departamento", GetType(String))
        DataTable.Columns.Add("Descripcion", GetType(String))

        '---Llenar tabla
        'For Each Nodo As XmlNode In Node
        'Dim DataRow As DataRow = DataTable.NewRow()
        'DataRow("Departamento") = Nodo("Nombre").InnerText
        'DataRow("Descripcion") = Nodo("Descripcion").InnerText
        'DataTable.Rows.Add(DataRow)
        'Next

        Try
            conn3.Open()
            cmd = New SqlClient.SqlCommand(sql, conn3)
            dr = cmd.ExecuteReader()
            If dr.HasRows Then
                While dr.Read
                    Dim DataRow As DataRow = DataTable.NewRow()
                    DataRow("Departamento") = dr.Item("Nombre")
                    DataRow("Descripcion") = dr.Item("Descripcion")
                    DataTable.Rows.Add(DataRow)
                End While
            End If
            dr.Close()
            conn3.Close()

            GridView1.DataSource = DataTable
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn3.Close()
        End Try

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Llenar()

    End Sub
End Class
