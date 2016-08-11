Imports System.Data
Imports System.Xml

Partial Class Default2
    Inherits System.Web.UI.Page
    Public operacion As Integer
    Public totalItemSeleccionados As Integer = 0
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

            GVDepartamento.DataSource = DataTable
            GVDepartamento.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
            conn3.Close()
        End Try

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Llenar()
    End Sub

    Protected Sub GVDepartamento_DataBound(ByVal sender As Object, ByVal e As EventArgs)
        ' Recupera la el PagerRow...
        Dim pagerRow As GridViewRow = GVDepartamento.BottomPagerRow
        ' Recupera los controles DropDownList y label...
        Dim pageList As DropDownList = CType(pagerRow.Cells(0).FindControl("PageDropDownList"), DropDownList)
        Dim pageLabel As Label = CType(pagerRow.Cells(0).FindControl("CurrentPageLabel"), Label)
        If Not pageList Is Nothing Then
            ' Se crean los valores del DropDownList tomando el número total de páginas... 
            Dim i As Integer
            For i = 0 To GVDepartamento.PageCount - 1
                ' Se crea un objeto ListItem para representar la �gina...
                Dim pageNumber As Integer = i + 1
                Dim item As ListItem = New ListItem(pageNumber.ToString())
                If i = GVDepartamento.PageIndex Then
                    item.Selected = True
                End If
                ' Se añade el ListItem a la colección de Items del DropDownList...
                pageList.Items.Add(item)
            Next i
        End If
        If Not pageLabel Is Nothing Then
            ' Calcula el nº de �gina actual...
            Dim currentPage As Integer = GVDepartamento.PageIndex + 1
            ' Actualiza el Label control con la �gina actual.
            pageLabel.Text = "Página " & currentPage.ToString() & " de " & GVDepartamento.PageCount.ToString()
        End If
    End Sub

    Protected Sub GVDepartamento_PreRender(sender As Object, e As EventArgs) Handles GVDepartamento.PreRender
        If totalItemSeleccionados > 0 Then
            btnQuitarSeleccionados.CssClass = "btn btn-lg btn-danger"
        Else
            btnQuitarSeleccionados.CssClass = "btn btn-lg btn-danger disabled"
        End If
    End Sub

    Sub GVDepartamento_RowDeleted(sender As Object, e As GridViewDeletedEventArgs)
        If e.Exception Is Nothing Then
            lblInfo.Text = " ¡Cliente/s eliminado/s OK! "
            lblInfo.CssClass = "label label-success"
        Else
            lblInfo.Text = " ¡Se ha producido un error al intentar elimnar el/los cliente/s! "
            lblInfo.CssClass = "label label-danger"
            e.ExceptionHandled = True
        End If
    End Sub

    Sub GVDepartamento_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs)
        If e.Exception Is Nothing Then
            lblInfo.Text = " ¡Modificación realizada OK! "
            lblInfo.CssClass = "label label-success"
        Else
            lblInfo.Text = " ¡Se ha producido un error al intentar modificar el cliente! "
            lblInfo.CssClass = "label label-danger"
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub GVDepartamento_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)
        lblInfo.Text = ""
    End Sub

    Protected Sub btnQuitarSeleccionados_Click(sender As Object, e As EventArgs) Handles btnQuitarSeleccionados.Click
        'Recorrer las filas del GridView...
        Dim i As Integer
        For i = 0 To GVDepartamento.Rows.Count - 1
            Dim CheckBoxElim As CheckBox = CType(GVDepartamento.Rows(i).FindControl("chkEliminar"), CheckBox)
            If CheckBoxElim.Checked Then
                GVDepartamento.DeleteRow(i)
            End If
        Next
        GVDepartamento.DataBind()
    End Sub

    Protected Sub chk_OnCheckedChanged(sender As Object, e As EventArgs)
        'Recorrer las filas del GridView...
        Dim i As Integer
        'Quita el mensaje de información si lo hubiera...
        lblInfo.Text = ""
        For i = 0 To GVDepartamento.Rows.Count - 1
            Dim CheckBoxElim As CheckBox = CType(GVDepartamento.Rows(i).FindControl("chkEliminar"), CheckBox)
            If CheckBoxElim.Checked Then
                totalItemSeleccionados += 1
                Exit Sub
            End If
        Next
    End Sub

    Protected Sub PageDropDownList_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        ' Recupera la fila.
        Dim pagerRow As GridViewRow = GVDepartamento.BottomPagerRow
        ' Recupera el control DropDownList...
        Dim pageList As DropDownList = CType(pagerRow.Cells(0).FindControl("PageDropDownList"), DropDownList)
        ' Se Establece la propiedad PageIndex para visualizar la página seleccionada...
        GVDepartamento.PageIndex = pageList.SelectedIndex
        'Quita el mensaje de información si lo hubiera...
        lblInfo.Text = ""
    End Sub

End Class
