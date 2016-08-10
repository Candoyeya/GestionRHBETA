<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include file="conn.asp" -->

<%
Dim rsMain

Set rsMain = Server.CreateObject("ADODB.Recordset")
rsMain.ActiveConnection = MM_connPlayGround_STRING2

strtxtlogin = Request("fieldUser")
strtxtpassword = Request("fieldPassword")
EsteSistema = 4

rsMain.Source = "SELECT * FROM dbo.TAUS WHERE Usr_Sist = '" & strtxtlogin & "' and Usr_Pswd = '" & strtxtpassword & "' and Sistema= '" & EsteSistema & "'"

rsMain.Open()
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css">
<link href="img/SFM-ico-red.ico" rel="Shortcut Icon" type="image/x-icon" />
<title>.: Login :.</title>
</head>

<script language="javascript">
function Validar(form)
{
  if (form.login.value == "")
  { alert("Por favor ingrese un Usuario"); form.login.focus(); return; }

  if (form.password.value == "")
  { alert("Por favor ingrese un Password"); form.password.focus(); return; }
}
</script>

<body>
    <!--Google Font - Work Sans-->
<link rel="stylesheet" type="text/css" href="css/fonts.css">

<div class="container">
  <div class="profile">
  <form method="post" action="login.asp" id="index" name="index">
    <button class="profile__avatar" id="toggleProfile">
     <img src="img/logo-red.png" alt="Avatar" /> 
    </button>
    <div class="profile__form">
      <div class="profile__fields">
        <div class="field">
          <input type="text" id="fieldUser" name="fieldUser" class="input" required pattern=.*\S.* />
          <label for="fieldUser" class="label">Usuario</label>
        </div>
        <div class="field">
          <input type="password" id="fieldPassword" name="fieldPassword" class="input" required pattern=.*\S.* />
          <label for="fieldPassword" class="label">Contraseña</label>
        </div>
        <div class="profile__footer">
        <input type="submit" name="button" value="Entrar" onclick="Validar(this.form)" class="btn">
        </div>
      </div>
     </div>
        <script src="js/index.js"></script>
  </form>
</body>
<%
While (NOT rsMain.EOF)
session("autorizacion") = 1

if rsMain("Etiqueta_3")=8 then
'Response.Redirect("Monitor.asp?Usr=" & rsMain("Usr_Sist") & "")
	Response.Write("<script language='javascript'>window.open('Monitor.asp?Usr="&rsMain("Usr_Sist")&"&Alm="&rsMain("Etiqueta_3")&"','','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=true,width=1000,height=600,top=30,left=150');</script>")
else
	Response.Write("<script language='javascript'>window.open('Surtido.asp?Usr="&rsMain("Usr_Sist")&"&Alm="&rsMain("Etiqueta_3")&"','','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=none,width=400,height=400,top=50,left=450');</script>")
end if
%>
<%
rsMain.MoveNext()
Wend
%>
</html>
<%
rsMain.Close()
Set rsMain = Nothing
%>