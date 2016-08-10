<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/style.css"/>
<link href="img/SFM-ico-red.ico" rel="Shortcut Icon" type="image/x-icon" />
    <title>.: Login :.</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/fonts.css"/>    
        <div class="container">
            <div class="profile">
                <form id="index" runat="server"> 
                                   
                    <button class="profile__avatar" id="toggleProfile">
                        <img src="img/logo-red.png" alt="Avatar" /> 
                    </button>                             
                    <div class="profile__form">
                        <div class="profile__fields">
                            <div class="field"> 
                                <h3 class="label">Gestion RH</h3>    
                            </div>   
                            <br />                                                                              
                            <div class="field">                                
                                <asp:TextBox ID="TxtUser" runat="server" BorderStyle="None" class="input" required pattern=".*\S.*"></asp:TextBox>
                                <label for="TxtUser" class="label">Usuario</label>    
                            </div>  
                            <div class="field">
                                <asp:TextBox ID="TxtPassword" runat="server" BorderStyle="None" class="input" required pattern=".*\S.*" TextMode="Password"></asp:TextBox>
                                <label for="TxtPassword" class="label">Contraseña</label>                                
                            </div>
                            <div class="profile__footer">
                                <asp:Button ID="BtnEntrar" runat="server" Text="ENTRAR" class="btn" />
                            </div>                            
                        </div>
                    </div>
                    <script src="js/index.js"></script>                                      
                </form>
            </div>           
        </div>    
</body>
</html>
