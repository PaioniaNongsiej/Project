<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MediRecipe.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body style="height: 430px" >
    <form id="form1" runat="server">
       <div style="height: 572px; text-align:center">
            <br />
            <br /><b>
            MEDIRECIPE<br />
            Recipe Management Portal</b>
            <br />
            <br />
            Sign up to see wonderful medicinal recipes<br />
            <br />
            <br />
            UserName<br />
            <asp:TextBox ID="username" runat="server" Height="24px" Width="292px" EnableTheming="False" OnTextChanged="username_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="*"></asp:RequiredFieldValidator>
            <br />
            <br />
            Email ID<br />
&nbsp;<asp:TextBox ID="emailid" runat="server" Height="23px" Width="265px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailid" Display="Dynamic" ErrorMessage="*" ></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailid"></asp:RegularExpressionValidator>
            <br />
            Password<br />
            <asp:TextBox ID="password" runat="server" Height="24px" TextMode="Password" Width="292px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>
            <br />
            <br />
           <p>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            i agree to all the <a href="terms and conditions\terms and conditions.txt">terms and conditions</a></p>
            <br />
            <asp:Button ID="btnregsitration" runat="server" Text="Submit" OnClick="btnregsitration_Click" Class="button"/>
            <br />
            <p class ="line">already have an account? <a href="login.aspx"> log in</a></p>
            <p class ="line">&nbsp;</p>
            <p class ="line">&nbsp;</p></div>
        <br/>
        <br/>
        <p>
            &nbsp;</p>
        <p>
         <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </p>

    </form>
</body>
</html>
