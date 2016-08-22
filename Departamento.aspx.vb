Imports System.Data
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Web.Script.Services
Partial Class Departamento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack Then
            'example.DataBind()
        End If
    End Sub

    Sub GridView_Clientes_RowDeleted(sender As Object, e As GridViewDeletedEventArgs)
        If e.Exception Is Nothing Then
            lblInfo.Text = " ¡Cliente/s eliminado/s OK! "
            lblInfo.CssClass = "label label-success"
        Else
            lblInfo.Text = " ¡Se ha producido un error al intentar elimnar el/los cliente/s! "
            lblInfo.CssClass = "label label-danger"
            e.ExceptionHandled = True
        End If
    End Sub

    Sub GridView_Clientes_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs)
        If e.Exception Is Nothing Then
            lblInfo.Text = " ¡Modificación realizada OK! "
            lblInfo.CssClass = "label label-success"
        Else
            lblInfo.Text = " ¡Se ha producido un error al intentar modificar el cliente! "
            lblInfo.CssClass = "label label-danger"
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub GridView_Clientes_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)
        lblInfo.Text = ""
    End Sub

    <WebMethod()>
    <Script.Services.ScriptMethod()>
    Public Function Recargar() As String
        If IsPostBack Then
            Departamento.DataBind()
        End If
    End Function
End Class
