Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Xml


Public Class ConectaClass

End Class

Public Module ConectaMod
    'Public Ws As New WebService.DIServer
    'Public CadenaCon As String = Ws.LoginSSL("EY7Xymecq8X5jEJToIx34Zl8+4IJGZ+eYZGG8w5TAvUraU8uDElY2vk3Ad4lgEX4qt6U3HR4s6Lz5yIt8eE6nPS7N2Lwmekbda4PPoE8Ed6tSZ/NggJPqOANq8pr7Xu4+Uqh6IgQNt7ELIAikbrxe37ktumlOlq3JkhthBr5wxbrpsy+I4NIJYR4eIMXADG1o3z6sFgI/XPhSenv36Zz0Q==") 'CONECTAR PRODUCTIVO nuevo server 08/07/2016
    Public ConnectionString As String = "Data Source=192.168.100.135; Initial Catalog=NuevaBD; User Id=sa; Password=B1Admin"
    Public ConnectionString2 As String = "Server=192.168.100.135; Database=DataBaseR; User Id=sa; Password=B1Admin"
    Public ConnectionString3 As String = "Data Source=192.168.100.102; Initial Catalog=GestionRH; User id=sa; Password=B1Admin"
    'Public conn2 As SqlClient.SqlConnection = New SqlClient.SqlConnection(ConnectionString2)
    Public conn As SqlConnection = New SqlConnection(ConnectionString)
    Public conn2 As SqlConnection = New SqlConnection(ConnectionString2)
    Public conn3 As SqlConnection = New SqlConnection(ConnectionString3)
    Public cmd, cmd2 As SqlCommand
    Public dr As SqlDataReader
    Public XmlDoc As New XmlDocument
    'Public DataSet As New DataSet
    Public Node As XmlNodeList
    Public Respuesta As XmlNode
End Module
