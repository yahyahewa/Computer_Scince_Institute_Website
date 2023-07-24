<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Computer_Scince_Institute_Website.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style> 
        body{
             background:url(img/castle-336498.jpg) center center fixed no-repeat;
             background-size:cover;
        }
        
        .textboxes{
            border:solid #ffffff 1px;
            border-radius:5px;
            height:40px;
            color:#ffffff;
            margin:5px;
        }
        #div2 .textboxes{
            border:solid #ffffff 1px;
            border-radius:5px;
            height:40px;
            color:#ffffff;
            margin:1px;
        }
        #div1 label,
        #div2 label,
        #div3 label{
            font-family:'Times New Roman';
            font-size:22px;
            color:#ffffff;
            text-align:left !important;
        }
        #div1::-webkit-scrollbar-button 
        { 
            background-color:#000000;
        }
        #div1::-webkit-scrollbar-corner
        { 
            width:1px;
            background-color:#000000;
        }
        #div1,#div2,#div3
        {
            border-top:solid 1px #ffffff;
            border-bottom:solid 1px #ffffff;
        }
        .cal{
            background-color:rgba(0, 0, 0, 0.60);
            color:#ffffff;
        }
        .l{
            color:red;
            font-size:18px;
        }
    </style>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="m-auto mt-3 row justify-content-around d" style="width:95%;margin-top:50px !important;background-color:rgba(0, 0, 0, 0.20);padding-top:10px;padding-bottom:10px;border-radius:10px;">
        <div class="col-12 col-sm-10 col-md-3 col-lg-3 col-xl-3 justify-content-center row" id="div1" style="margin:5px;height:400px;overflow-y:scroll">
                    <label class="text-capitalize col-11" style="text-align:center !important;font-size:25px;color:darkorange">Add Student</label>
            <label class="text-capitalize col-11">username:</label>
            <asp:TextBox ID="TextBox1" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Username" runat="server"></asp:TextBox>
            <asp:Label ID="Label1"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">First name:</label>
            <asp:TextBox ID="TextBox2" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label2"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">second name:</label>
            <asp:TextBox ID="TextBox3" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Seconde" runat="server"></asp:TextBox>
            <asp:Label ID="Label3"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Third name:</label>
            <asp:TextBox ID="TextBox4" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Third Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label4"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">birhday:</label>
            <div class="col-11 cal">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <asp:Calendar ID="Calendar1" CssClass="cal d-block text-white col-11" runat="server" ForeColor="White" Width="90%"></asp:Calendar></ContentTemplate>
            </asp:UpdatePanel></div>
            <asp:Label ID="Label5"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Gender:</label>
            <asp:DropDownList ID="DropDownList1" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Gender" runat="server"></asp:DropDownList>
            <asp:Label ID="Label6"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">system:</label>
            <asp:DropDownList ID="DropDownList2" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="System" runat="server"></asp:DropDownList>
            <asp:Label ID="Label8"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">twelve degree:</label>
            <asp:TextBox ID="TextBox10" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Twelve Degree" runat="server" TextMode="Number"></asp:TextBox>
            <asp:Label ID="Label10"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Password:</label>
            <asp:TextBox ID="TextBox11" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Password" runat="server"></asp:TextBox>
            <asp:Label ID="Label11"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">student image:</label>
            <asp:FileUpload ID="FileUpload1" CssClass="bg-dark d-block text-white textboxes col-11" runat="server" />
            <asp:Label ID="Label13"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Button CssClass="btn btn-secondary col-11" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
        </div>
        <div class="col-12 col-sm-10 col-md-3 col-lg-3 col-xl-3 justify-content-center row" id="div2" style="margin:5px;height:400px;overflow-y:scroll"">
                    <label class="text-capitalize col-11" style="text-align:center !important;font-size:25px;color:darkorange">Add teacher</label>
            <label class="text-capitalize col-11">username:</label>
            <asp:TextBox ID="TextBox5" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Username" runat="server"></asp:TextBox>
            <asp:Label ID="Label7"  CssClass="l col-11" runat="server" Text="*  Enter Username" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">First name:</label>
            <asp:TextBox ID="TextBox6" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label9"  CssClass="l col-11" runat="server" Text="* Enter First Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">second name:</label>
            <asp:TextBox ID="TextBox7" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Seconde" runat="server"></asp:TextBox>
            <asp:Label ID="Label12"  CssClass="l col-11" runat="server" Text="* Enter Second Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Third name:</label>
            <asp:TextBox ID="TextBox8" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Third Name" runat="server"></asp:TextBox>
            <asp:Label ID="Label14"  CssClass="l col-11" runat="server" Text="* Enter Third Name" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">birhday:</label>
            <div class="col-11 cal">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
            <asp:Calendar ID="Calendar2" CssClass="cal d-block text-white col-11" runat="server" ForeColor="White" Width="90%"></asp:Calendar></ContentTemplate>
            </asp:UpdatePanel></div>
            <asp:Label ID="Label15"  CssClass="l col-11" runat="server" Text="* Select Birhday" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Simster:</label>
            <asp:DropDownList ID="DropDownList3" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Gender" runat="server"></asp:DropDownList>
            <asp:Label ID="Label16"  CssClass="l col-11" runat="server" Text="* Select Gender" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Password:</label>
            <asp:TextBox ID="TextBox12" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Password" runat="server"></asp:TextBox>
            <asp:Label ID="Label19"  CssClass="l col-11" runat="server" Text="* Enter Password" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Email:</label>
            <asp:TextBox ID="TextBox14" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Username" runat="server"></asp:TextBox>
            <asp:Label ID="Label18"  CssClass="l col-11" runat="server" Text="* Enter Email" Visible="False"></asp:Label>
            <asp:Button OnClick="Button2_Click" CssClass="btn btn-secondary col-11" ID="Button2" runat="server" Text="Add" />
        </div>
        <div class="col-12 col-sm-10 col-md-3 col-lg-3 col-xl-3 justify-content-center row" id="div3" style="margin:5px;height:400px;overflow-y:scroll">
                    <label class="text-capitalize col-11" style="text-align:center !important;font-size:25px;color:darkorange">Add Admin</label>
            <label class="text-capitalize col-11">Username:</label>
            <asp:TextBox ID="TextBox13" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Username" runat="server"></asp:TextBox>
            <asp:Label ID="Label21"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <label class="text-capitalize col-11">Password:</label>
            <asp:TextBox ID="TextBox9" CssClass="bg-dark d-block text-white textboxes col-11" placeholder="Username" runat="server"></asp:TextBox>
            <asp:Label ID="Label17"  CssClass="l col-11" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Button OnClick="Button3_Click" CssClass="btn btn-secondary col-11" ID="Button3" runat="server" Text="Add" />
        </div>
        </div>
</asp:Content>
