<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Computer_Scince_Institute_Website.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #headercontent{
          background:url(img/castle-336498.jpg) center center no-repeat ;
          background-size:cover;
          height:400px;
        }
        .name{
            font-size:50px;
            padding:5px;
            margin-top:140px; 
            color:darkorange
        }
        #studyyear{
            color:#002A4A;
                font-size:40px;
        }
            #mark{
                padding:10px;
            }
            .card-title{
                color:darkorange;
                font-size:25px;
/*                border:solid 1px #000000;
                border-radius:50%;*/
            }
            h4{
                font-size:20px;
            }
           .d-block{
            color:#0053a3;
           }
           #addrlink{
               text-decoration:underline !important;
           }
        @media only screen and (max-width: 600px){
            .name{
                font-size:40px;
            }
            #studyyear{
                font-size:30px;
            }
         }
        @media only screen and (max-width: 500px){
            .name{
                font-size:35px;
            }
            h4{
                font-size:15px;
            }
         }
    </style>
    <script>
        $(document).ready(function () {
            $("#headercontent").append(" <h1 class=\"text-center text-capitalize  name\" > computer science institute</h1>");
            var d = new Date();
            var b = d.getFullYear() - 1;
            $("#studyyear").html(b + "-" + d.getFullYear());
        }); </script>
    <div class="container text-center" id="studyyear"></div>
    <div class="row justify-content-center" id="mark">
        <div class="card text-center text-capitalize col-7 col-md-3 col-lg-3 m-2 p-2">
            <div class="card-title">Network</div>
            <div class="card-text">
                <asp:Label ID="Label1" CssClass="d-block" runat="server" Text="Label">evening: </asp:Label>
                <asp:Label ID="Label2" CssClass="d-block" runat="server" Text="Label">parallel: </asp:Label>
                <asp:Label ID="Label3" CssClass="d-block" runat="server" Text="Label">morning: </asp:Label>
            </div>
        </div>
        <div class="card text-center text-capitalize col-7 col-md-3 col-lg-3 m-2 p-2">
            <div class="card-title">IT</div>
            <div class="card-text">
                <asp:Label ID="Label4" CssClass="d-block" runat="server" Text="Label">evening: </asp:Label>
                <asp:Label ID="Label5" CssClass="d-block" runat="server" Text="Label">parallel: </asp:Label>
                <asp:Label ID="Label6" CssClass="d-block" runat="server" Text="Label">morning: </asp:Label>
            </div>
        </div>
        <div class="card text-center text-capitalize col-7 col-md-3 col-lg-3 m-2 p-2">
            <div class="card-title">Databse</div>
            <div class="card-text">
                <asp:Label ID="Label7" CssClass="d-block" runat="server" Text="Label">evening: </asp:Label>
                <asp:Label ID="Label8" CssClass="d-block" runat="server" Text="Label">parallel: </asp:Label>
                <asp:Label ID="Label9" CssClass="d-block" runat="server" Text="Label">morning: </asp:Label>
            </div>
        </div>
        </div>
    <div class="row justify-content-center text-center mt-2 text-dark" id="info">
        <div class="col-6 col-sm-7 col-md-3 col-lg-3 col-xl-3 row justify-content-center p-2 m-1">
            <img class="col-7 card-img" src="img/contacts.svg" />
            <h4 class="infotext">Email: csi@gmail.com</h4>
            <h4 class="infotext">Ph.Number: 053 123 45</h4>
        </div>
        <div class="col-6 col-sm-7 col-md-3 col-lg-3 col-xl-3 row justify-content-center p-2 m-1">
            <img class="col-7 card-img" src="img/location.svg" />
            <h4 class="infotext"><a href="https://www.google.com/maps/place/Presidency+of+Sulaimani+Polytechnic+University/@35.5369946,45.4687583,15z/data=!4m12!1m6!3m5!1s0x0:0x322ced64f88e855e!2sPresidency+of+Sulaimani+Polytechnic+University!8m2!3d35.5369946!4d45.4687583!3m4!1s0x0:0x322ced64f88e855e!8m2!3d35.5369946!4d45.4687583
                " class="text-dark" id="addrlink">Address: Qirga - Ibrahim Ahmed، Sulaymaniyah</a></h4>
        </div>
        <div class="col-6 col-sm-7 col-md-3 col-lg-3 col-xl-3 row justify-content-center p-2 m-1">
            <img class="col-7 card-img" src="img/Capture.PNG" />
            <h4 class="infotext">Polytechnic University of Sulaimani</h4>
            <h4 class="infotext">Computer Science Institute</h4>
        </div>
    </div>
</asp:Content>
