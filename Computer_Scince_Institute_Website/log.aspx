<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Computer_Scince_Institute_Website.log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{
             background:url(img/castle-336498.jpg) center center fixed no-repeat;
             background-size:cover;
        }
        .div {
            background-color:rgba(0, 0, 0, 0.50);
            padding:10px;
            color:darkorange;
            border-radius:10px;
        }
        .a{
            font-size:45px;
            display:block;
            margin:10px auto;
            margin-top:50px;
            text-align:center;
            color:darkorange
        }
        label{
            font-size:25px;
            color:rgb(255, 255, 255);
            text-align:left !important;
        }
        .text{
            margin-top:10px !important;
            height:40px;
            border:solid 1px rgb(255, 255, 255);
            border-radius:5px;
           
        }
        .btn{
            margin-top:10px !important;
            font-size:20px;
        }
        #footer{
            margin-top:300px;
        }
    </style>

    
        <h1 class="a">Login</h1>
    <div class="col-11 div col-sm-10 col-md-8 col-lg-6 col-xl-5 m-auto row justify-content-center">
        <label>username</label>
        <asp:TextBox CssClass="text bg-dark col-11 m-auto d-block text-white" placeholder="Username" ID="TextBox1" runat="server"></asp:TextBox>
        <label >Password:</label>
        <asp:TextBox CssClass="text col-11 bg-dark m-auto d-block text-white" placeholder="Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button OnClick="Button1_Click" CssClass="btn btn-secondary col-11 d-block m-auto" ID="Button1" runat="server" Text="Login" />
    </div>
</asp:Content>
