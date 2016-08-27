
Partial Class Editar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim Id_Reg As String = Request.QueryString("Id_Reg")
    End Sub
End Class
