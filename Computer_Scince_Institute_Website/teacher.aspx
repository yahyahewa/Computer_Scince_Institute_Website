<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="Computer_Scince_Institute_Website.teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{/*
            background-color:#e2e2e2*/
             background:url(img/castle-336498.jpg) center center fixed no-repeat;
             background-size:cover;
        }
        .listbox{
            height:300px;
            border:solid 1px #808080;
            border-radius:5px;
        }
        .text{
            border:solid 1px #ffffff;
            border-radius:5px;
            padding:3px;
            color:#ffffff;
        }
        .divimg img{
            width:30px;
            height:30px;
            margin:5px;
        }
        .orng{
            background-color:darkorange !important;
        }
        .name{
            font-size:21px;
        }
        .note{
            font-size:18px;
        }
        .time{
            font-size:11px;
            text-align:center;
        }
        .imgbtnslide{
            width:40px;
            height:40px;
            position:fixed;
            top:100px;
            right:20px;
            z-index:100;
        }
        #lablediv label{
            font-size:20px;
        }
        .listbox{
            height:760px;
        }
        .listboxs{
            height:300px;
        }
        .textboxes{
            border:solid #ffffff 1px;
            border-radius:5px;
            height:40px;
            color:#ffffff
        }
        .alert-danger{
            border-radius:5px;
            top: 0px;
            left: 0px;
        }
       /* #lablediv{
            background-color:rgba(0, 0, 0, 0.20);
            border-radius:8px;
        }*/
    </style>
    <script>
        $(document).ready(function () {
            $("#mydivchat").hide(0);
            $(".imgbtnslide").click(function () {
                $("#mydivchat").toggle(222);
            });
        });</script>
<%--    <img src="img/mail (3).svg" class="imgbtnslide" />
    <div id="mydivchat"  style="width:80%;height:500px;overflow:scroll" class="bg-dark m-auto justify-content-around row p-2 j">
        <div class="divimg col-12 justify-content-end row">
           <a href="https://mail.google.com/mail/u/0/"> <img src="img/mail (2).svg" /></a>
        </div>
        <div class="bg-dark col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3">
            <div class="row col-12 justify-content-center text-capitalize" style="padding:5px;">
                    <asp:TextBox placeholder="Search" CssClass="col-12 text m-1 bg-dark" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button CssClass="col-12 btn btn-secondary m-1" ID="Button1" runat="server" Text="Search" />
            <asp:ListBox ID="ListBox2" CssClass="col-12 listboxs bg-secondary m-1" runat="server"></asp:ListBox>
            </div>
        </div>
        <div id="mychat" style="background-color:#ffd800;border-radius:8px;height:400px;overflow:scroll" class="bg-secondary col-sm-11 col-md-8 col-lg-8 col-xl-8" >
            <asp:Label CssClass="time text-white d-block mt-3" ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label CssClass="name text-white d-block" ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label CssClass="note text-white d-block" ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:LinkButton ID="LinkButton1" CssClass="d-block" runat="server">LinkButton</asp:LinkButton>
        </div>
        <div class="col-12 m-auto bg-dark row justify-content-center p-1">
            <asp:FileUpload ID="FileUpload1" CssClass="btn btn-primary col-4" runat="server" />
            <asp:TextBox placeholder="Note..." CssClass="text m-1 bg-dark" ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Send" />
        </div>
    </div>--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>    <div style="width:95%; height:900px;overflow-y:scroll;margin-top:70px !important;" class=" m-auto p-3 row" id="lablediv">
        <div class="col-12 col-sm-10 col-md-4 col-lg-4 col-xl-4 justify-content-center">
            <label style="font-size:25px !important" class="d-block text-center display-4 text-white col-10">Student Search</label>
            <asp:TextBox CssClass="bg-dark col-12 textboxes d-block m-1" ID="TextBox11" runat="server"></asp:TextBox>
            <asp:Button OnClick="Button4_Click" ID="Button4" CssClass="btn btn-secondary d-block col-12 m-1" runat="server" Text="Search" />
            <asp:ListBox  CssClass="col-12 bg-dark listbox" ID="ListBox1" runat="server"></asp:ListBox>
        </div>
        <div class="col-12 col-sm-10 col-md-4 col-lg-4 col-xl-4 justify-content-center row">
            <label style="font-size:25px !important" class="d-block text-center display-4 text-white col-10">Degree</label>
            <label class="d-block text-white col-10">Student id</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox12" runat="server" ControlToValidate="TextBox3"></asp:TextBox>
            <label class="d-block text-white col-10">seminar(10)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox3" runat="server" ControlToValidate="TextBox3"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator1" runat="server" ErrorMessage="0-10" MaximumValue="10" MinimumValue="0" ControlToValidate="TextBox3" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">attend(5)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox4" runat="server" ControlToValidate="TextBox4"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator2" runat="server" ErrorMessage="0-5" ControlToValidate="TextBox4" MaximumValue="5" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">quiz(5)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox5" runat="server" ControlToValidate="TextBox5"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator3" runat="server" ErrorMessage="0-5" MaximumValue="5" MinimumValue="0" ControlToValidate="TextBox5" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">assiment(10)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox6" runat="server" ControlToValidate="TextBox6"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator4" runat="server" ErrorMessage="0-10" MaximumValue="10" MinimumValue="0" ControlToValidate="TextBox6" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">midterm(15)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox7" runat="server" ControlToValidate="TextBox7"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator5" runat="server" ErrorMessage="0-15" MaximumValue="15" MinimumValue="0" ControlToValidate="TextBox7" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">report(5)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox8" runat="server" ControlToValidate="TextBox8"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator6" runat="server" ErrorMessage="0-5" MaximumValue="5" MinimumValue="0" ControlToValidate="TextBox8"></asp:RangeValidator>
            <label class="d-block text-white col-10">T-exam(30)</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox9" runat="server" ControlToValidate="TextBox9"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator7" runat="server" ErrorMessage="0-30" MaximumValue="30" MinimumValue="0" ControlToValidate="TextBox9" Type="Integer"></asp:RangeValidator>
            <label class="d-block text-white col-10">P-exam(20</label>
            <asp:TextBox CssClass="text-white col-10 textboxes badge-dark" ID="TextBox10" runat="server" ControlToValidate="TextBox10"></asp:TextBox>
            <asp:RangeValidator CssClass="alert-danger d-block col-10" ID="RangeValidator8" runat="server" ErrorMessage="0-20" MaximumValue="20" MinimumValue="0" ControlToValidate="TextBox10" Type="Integer"></asp:RangeValidator>
            <asp:Button OnClick="Button3_Click" CssClass="btn btn-secondary col-10" ID="Button3" runat="server" Text="Submet" />
            <label runat="server" class="text-capitalize text-center text-success col-11 m-1 p-1" id="Label1">successful</label>
        </div>
        <div class="col-12 col-sm-10 col-md-4 col-lg-4 col-xl-4 justify-content-center">
            <label style="font-size:25px !important" class="d-block text-center display-4 text-white col-10">Attend</label>
            <asp:CheckBoxList CssClass="col-12 listbox bg-dark text-white m-1" ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                <asp:Button OnClick="Button6_Click" CssClass="col-12 btn btn-secondary m-1 text-center" ID="Button6" runat="server" Text="Submit" />
        </div>
    </div></ContentTemplate></asp:UpdatePanel>
</asp:Content>
