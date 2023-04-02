<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MediRecipe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserLogin</title>
    <style type="text/css">
        .auto-style1 {
            width: 119px;
            height: 126px;
            margin-top: 5%;
        }
    </style>
    <link rel="stylesheet" href="css/styles.css" />
</head>
<body style="height: 547px" >

    <form id="form1" runat="server">
        <div style="text-align:center">
        <img alt="userlogo" class="auto-style1" src="image/logouser.png" /><p>
                &nbsp;</p>
        <p><b>
            MEDIRECIPE</b></p>
        <p><b>
            Recipe Management Portal</b></p>
            <p>&nbsp;</p>
        <p>
            Email ID</p>
        <asp:TextBox ID="emailid" runat="server" Height="23px" Width="265px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailid" Display="Dynamic" ErrorMessage="*" ></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailid"></asp:RegularExpressionValidator>
        <br />
        Password<p>
            <asp:TextBox ID="password" runat="server" Height="25px" TextMode="Password" Width="265px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            i agree to all the <a href="terms and conditions\terms and conditions.txt">terms and conditions</a></p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="btnlogin_Click" class="button" style="Width:100px" />            
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </p>
        
        <p class="line">
            Don't have an Account? <a href="register.aspx">Sign Up</a></p>
        <p >
            &nbsp;</p>
        </div>
    </form>
    
</body>
</html>
