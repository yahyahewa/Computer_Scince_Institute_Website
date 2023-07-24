
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rig.aspx.cs" Inherits="Computer_Scince_Institute_Website.rig" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{/*
            background-color:#e2e2e2*/
             background:url(img/castle-336498.jpg) center center fixed no-repeat;
             background-size:cover;
             height:100vw;
        }
        
        .textboxes{
            border:solid #ffffff 1px;
            border-radius:5px;
            height:40px;
            color:#ffffff
        }
        #div1 label{
            font-family:'Times New Roman';
            font-size:22px;
            color:#ffffff;
            text-align:left !important;
        }
        #div1,#div2,#div3
        {
            border-radius:10px;
        }
        .cal{
            color:#ffffff;
        }
        .l{
            color:red;
            font-size:18px;
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%> <div class="col-11 col-sm-10 col-md-6 col-lg-6 col-xl-6 m-auto justify-content-center row" id="div1" style="margin:5px;margin-top:60px !important;padding-top:60px !important;padding-bottom:60px; background-color:rgba(0, 0, 0, 0.30)">
                    <label class="text-capitalize col-11" style="text-align:center !important;font-size:35px;color:darkorange">Register</label>
            <label class="text-capitalize col-11">First name:</label>
            <asp:TextBox ID="TextBox2" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label2"  CssClass="l text-capitalize col-11" runat="server" Text="enter Your First Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">second name:</label>
            <asp:TextBox ID="TextBox3" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Seconde" runat="server"></asp:TextBox>
            <asp:Label ID="Label3"  CssClass="l text-capitalize col-11" runat="server" Text="* Seconde Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Third name:</label>
            <asp:TextBox ID="TextBox4" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Third Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label4"  CssClass="l text-capitalize col-11" runat="server" Text="* Third Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">birhday:</label>
            <div class="col-11 cal">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
            <asp:Calendar ID="Calendar1" CssClass="cal d-block text-capitalize text-white col-11" runat="server" ForeColor="White" BackColor="#333333" Width="250px"></asp:Calendar></ContentTemplate>
            </asp:UpdatePanel></div>
            <asp:Label ID="Label5"  CssClass="l  text-capitalize col-11" runat="server" Text="* Birthday" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Gender:</label>
            <asp:DropDownList ID="DropDownList1" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Gender" runat="server"></asp:DropDownList>
            <asp:Label ID="Label6"  CssClass="l col-11  text-capitalize" runat="server" Text="* Grnder" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">system:</label>
            <asp:DropDownList ID="DropDownList2" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="System" runat="server"></asp:DropDownList>
            <asp:Label ID="Label8"  CssClass="l text-capitalize col-11" runat="server" Text="* sytsme" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Department:</label>
            <asp:DropDownList ID="DropDownList3" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="System" runat="server"></asp:DropDownList>
            <asp:Label ID="Label1"  CssClass="l col-11" runat="server" Text="* Choose your Department" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">twelve degree:</label>
            <asp:TextBox ID="TextBox10" CssClass="bg-dark d-block  text-capitalize text-white textboxes col-11" placeholder="Twelve Degree" runat="server" TextMode="Number"></asp:TextBox>
            <asp:Label ID="Label10"  CssClass="l col-11  text-capitalize" runat="server" Text="* Enter Your Twelve Degree" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Email:</label>
            <asp:TextBox ID="TextBox11" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
            <asp:Label ID="Label11"  CssClass="l col-11 text-capitalize" runat="server" Text="* Enter Your Email" Visible="False"></asp:Label>
            <asp:Button OnClick="Button1_Click" CssClass="btn btn-secondary col-11 text-capitalize" ID="Button1" runat="server" Text="Add" />
        </div><%--</ContentTemplate>
    </asp:UpdatePanel>--%> 
</asp:Content>
