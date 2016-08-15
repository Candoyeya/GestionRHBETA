Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Private Sub Llenar()
        Try
            '--Consulta SQL
            Dim sql As String = "Select * From GestionRH.dbo.TDE"

            '--constructor de trabla
            Dim _html As New StringBuilder
            With _html
                .Append("<table id='example' class='display'>")
                .Append("<thead>")
                .Append("<tr>")
                .Append("<th>Id</th>")
                .Append("<th>Departamento</th>")
                .Append("<th>Descripcion</th>")
                .Append("<th>Acciones</th>")
                .Append("</tr>")
                .Append("</thead>")
                .Append("<tbody>")


                conn3.Open()
                cmd = New SqlClient.SqlCommand(sql, conn3)
                dr = cmd.ExecuteReader()
                If dr.HasRows Then
                    While dr.Read
                        .Append("<tr>")
                        .Append("<td>")
                        .Append(dr.Item("Id_Departamento").ToString)
                        .Append("</td>")
                        .Append("<td>")
                        .Append(dr.Item("Nombre").ToString)
                        .Append("</td>")
                        .Append("<td>")
                        .Append(dr.Item("Descripcion").ToString)
                        .Append("</td>")
                        .Append("<td>")
                        .Append("<div class='row'>")
                        .Append("<div class='col-md-4'>")
                        .Append("<button class='btn btn-primary' data-toggle='modal' data-target='#exampleModal'><span><i class='fa fa-pencil' aria-hidden='True'></i></span></button>")
                        .Append("</div>")
                        .Append("<div class='col-md-4'>")
                        .Append("<button class='btn btn-danger'><i class='fa fa-trash' aria-hidden='true'></i></button>")
                        .Append("</div>")
                        .Append("</div>")
                        .Append("</td>")
                        .Append("</tr>")
                    End While
                End If
                dr.Close()
                conn3.Close()
                .Append("<tfoot>")
                .Append("<tr>")
                .Append("<th>Id</th>")
                .Append("<th>Departamento</th>")
                .Append("<th>Descripcion</th>")
                .Append("<th>Acciones</th>")
                .Append("</tr>")
                .Append("</tfoot>")
                .Append("</tbody>")
                .Append("</table>")
            End With
            Dim _literal As New Literal
            _literal.Text = _html.ToString
            PH1.Controls.Add(_literal)

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Llenar()
    End Sub

End Class
