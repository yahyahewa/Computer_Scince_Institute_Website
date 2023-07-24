<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Computer_Scince_Institute_Website.student" %>
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
        .imgbtnslide{
            width:40px;
            height:40px;
            position:fixed;
            top:100px;
            right:20px;
            z-index:100;
        }
        #header {
            background-color: rgba(255, 255, 255, 0.21);
        }
        .container-fluid{
            color:#787878;
            font-size:20px;
        }
        .card-header{
            font-size:20px !important;
        }
        .card-title{
            font-size:20px !important;
        }
        #btnnot{
            width:45px;
            height:45px;
            position:absolute;
            right:20px;
            padding:5px;
            border:solid red 1px;
            border-radius:50%;
        }
        .divimg img{
            width:30px;
            height:30px;
            margin:5px;
        }
        .Image1{
            width:150px;
            height:150px;
            border:solid 1px rgb(0, 100, 224);
            border-radius:50%;
            padding:5px;
        }
    </style>  
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <img src="img/mail (3).svg" class="imgbtnslide" />
    <div id="mydivchat"  style="width:80%;height:500px;overflow:scroll" class="bg-dark m-auto justify-content-around row p-2 j">
        <div class="divimg col-12 justify-content-end row">
           <a href="https://mail.google.com/mail/u/0/"> <img src="img/mail (2).svg" /></a>
        </div>
        <style>
            .attend{
                z-index:200;
                width:300px;
                display:flex;
                top:200px;
                margin-top:30px !important;
            }
            .listattend{
                width:100%;
                height:300px;
            }
        </style>
        <script>$(document).ready(function () {
            });</script>
       
        
<%--            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <div style="width:200px;height:400px" class="border" id="mychat2" runat="server">
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>--%>         
        <div class="bg-dark col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3">
            <div class="row col-12 justify-content-center text-capitalize" style="padding:5px;">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                    <asp:TextBox placeholder="Search" CssClass="col-12 textboxes m-1 bg-dark" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button CssClass="col-12 btn btn-secondary m-1 bg-primary" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" />
            <asp:ListBox ID="ListBox1" CssClass="col-12 listboxs bg-secondary m-1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div id="mychat" runat="server" style="background-color:#ffd800;border-radius:8px;height:400px;overflow:scroll" class="bg-secondary col-sm-11 col-md-8 col-lg-8 col-xl-8" >
            <textarea id="TextArea1" cols="20"  Class="text m-1 bg-dark" runat="server"  rows="2"></textarea>
            </div>
        <div class="col-12 m-auto bg-dark row justify-content-center p-1">
            <asp:Button ID="Button11" CssClass="btn btn-primary bg-primary" runat="server" Text="Send" OnClick="Button11_Click" />
        </div>
    </div>
    <div class="row justify-content-center col-12 mt-4">
    <div class="col-8 col-sm-8 col-md-5 col-lg-4 col-xl-4 p-2 card text-center text-capitalize">
        <div class="card-img mt-2">
            <asp:Image  class="img-fluid Image1" ImageUrl="~/img/contacts.svg" ID="Image1" runat="server" />
        </div>
        <div class="card-title text-primary">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
        <div class="card-text text-left ml-3" id="userinfo" runat="server">

        </div>
    </div>
    </div>
    <style>
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
        .listboxs{
            height:300px;
        }
        .textboxes{
            border:solid #ffffff 1px;
            border-radius:5px;
            height:40px;
            color:#ffffff
        }
        @media only screen and (max-width: 600px) {
            .notfication{
                width:100%;
            }
            .textsearch{
                width:90px;
            }
            #chatdiv{
                width:90%;
            }
        }
        .divchat{
            width:40%;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("#item").hide(0);
            $(".notfication").hide(0);
            //$(".application").hide(0);
            $("#alert").click(function () {
                $("#item").toggle(220);
                $(".notfication").toggle(220);
            });
            $("#btnchat").click(function () {
                $("#chat_file").toggle(220);
            });
            $("#Button2").click(function () {
                $("#table").load();
                alert();
            })
            //$("#msj").click(function () {
            //    $("#chat_text").show(200);
            //    $(".listboxe").hide(200);
            //    $(".application").show(200);
            //});
            //$(".textsearch").click(function () {
            //    $(".listboxe").show(200);
            //    $("#chat_text").hide(200);
            //    $(".application").hide(200);
            //});
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#mydivchat").hide(0);
            $(".imgbtnslide").click(function () {
                $("#mydivchat").toggle(222);
            });
        });</script>

    <style>
        .btn{
            background-color:#ff6a00;
            color:white;
            font-size:20px;
            margin-bottom:5px;
        }
        @media only screen and (max-width: 600px){
            .btn{
                font-size:15px;
            }
        }
    </style>
    <div style="margin-top:-100px;" class="col-12 m-auto">
        <div class="justify-content-around row text-capitalize text-center p-2">
            <asp:Button ID="Button2" CssClass="col-sm-12 col-md-2 col-lg-2 btn" OnClick="Button2_Click1" runat="server" Text="semester1" />
            <asp:Button ID="Button3" CssClass="col-sm-12 col-md-2 col-lg-2 btn" OnClick="Button3_Click" runat="server" Text="semester2" />
            <asp:Button ID="Button4" CssClass="col-sm-12 col-md-2 col-lg-2 btn" OnClick="Button4_Click" runat="server" Text="semester3" />
            <asp:Button ID="Button5" CssClass="col-sm-12 col-md-2 col-lg-2 btn" OnClick="Button5_Click" runat="server" Text="semester4" />
        </div>
        <div style="height:300px; overflow:scroll;" runat="server" id="degre" class="text-center text-white m-auto bg-dark">
        <table class="text-capitalize text-white text-center table" runat="server" id="table" style="width:100%;overflow:scroll">
            <tr><th>subject</th><th>seminar(10)</th><th>attend(5)</th><th>quiz(5)</th>
                <th>assiment(10)</th><th>midterm(15)</th><th>report(5)</th><th>T-exam(30)</th>
                <th>P-exam(20)</th>
            </tr>
        </table>
        </div>
    </div>
    <div>
        <br />
        <br />
    </div>
    <style>
        #pe label,#pass label
        {
            font-size:15px;
            color:forestgreen
/*            background-color:rgba(0, 0, 0, 0.64);*/
/*            border:1px solid #a90000;
            border-radius:5px;*/
        }
        .b{
            border:solid 1px #264076;
            border-radius:5px;
            background-color:rgba(33, 33, 33, 0.80);
            color:white;
        }/*
        b:hover{
            color:#ff6a00 !important;
        }*/
        #pe{
            width:96% !important;
            margin-top:40px !important;
            padding:10px !important;
        }
        #pass{
            margin-top:40px;
            margin:0 auto;
        }
    </style>
    <div class="bg-dark m-auto col-11 text-capitalize" style="border-radius:10px; padding:5px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="justify-content-around row mt-5 m-auto" id="pe">
        <div class="col-sm-11 col-md-6 col-lg-6 col-xl-6 justify-content-center">
            <asp:TextBox CssClass="d-block borde col-11 m-1 p-1 b" placeholder="Phone number" ID="TextBox3" runat="server" TextMode="Phone"></asp:TextBox>
            <label runat="server" class="col-11 m-1 p-1" id="p1">please input phone number</label>
            <label runat="server" class=" col-11 m-1 p-1" id="p2">please input phone number</label>
            <asp:Button OnClick="Button6_Click" OnClientClick="f1()" ID="Button6" CssClass="Button6 d-block borde col-11 m-1 p-1 btn btn-secondary b" runat="server" Text="Add" />
            <asp:Button OnClick="Button9_Click" ID="Button9" CssClass="d-block borde col-11 m-1 p-1 btn btn-secondary b" runat="server" Text="Reomove" />
        </div>
        <div class="col-sm-11 col-md-6 col-lg-6 col-xl-6 justify-content-center">
            <asp:TextBox CssClass="d-block borde col-11 m-1 p-1 b" placeholder="Email" ID="TextBox5" runat="server"></asp:TextBox>
            <label runat="server" class="col-11 m-1 p-1" id="e1">please input Email</label>
            <label runat="server" class=" col-11 m-1 p-1" id="e2">please input Email</label>
            <asp:Button OnClick="Button7_Click" ID="Button7" CssClass="d-block borde col-11 m-1 p-1 btn btn-secondary b" runat="server" Text="Add" />
            <asp:Button OnClick="Button10_Click" ID="Button10" CssClass="d-block borde col-11 m-1 p-1 btn btn-secondary b" runat="server" Text="Remove" />
        </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 justify-content-center" id="pass">
            <asp:TextBox CssClass="d-block borde col-11 m-1 p-1 b" placeholder="old password" ID="TextBox7" runat="server"></asp:TextBox>
            <label runat="server" class="col-11 m-1 p-1" id="pas1">please Enter old password</label>
            <asp:TextBox CssClass="d-block borde col-11 m-1 p-1 b" placeholder="new password" ID="TextBox8" runat="server"></asp:TextBox>
            <label runat="server" class="col-11 m-1 p-1" id="pas2">please Enter new password</label>
            <asp:Button OnClick="Button8_Click" ID="Button8" CssClass="d-block borde col-11 m-1 p-1 btn btn-secondary b" runat="server" Text="change" />
            <label runat="server" class="col-11 m-1 p-1" id="Label1"></label>
    </div></ContentTemplate>
    </asp:UpdatePanel>
        </div>
     <div class="attend m-auto">
            <img id="imgattend" src="img/checking-attendance.svg" width="35" height="35" /> 
            <asp:ListBox CssClass="bg-dark text-white listattend" ID="ListBox2" runat="server"></asp:ListBox>
        </div>
    <style>
        .text{
            width:99% !important;
            height:400px !important;
            margin:5px auto !important;
            color:white !important;
        }
    </style>
</asp:Content>










<%--        <div class="container application justify-content-center  row">
            <asp:FileUpload ID="FileUpload1" CssClass="fileupload bg-dark btn-info fileupload col-4" runat="server" />
            <asp:TextBox ID="TextBox2" placeholder="Note...." CssClass="col-4 msjbox bg-dark" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="col-3 bg-dark send" runat="server" OnClick="Button1_Click" Text="send-upload" />
        </div>--%>