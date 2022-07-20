<%@ Page Title="" Language="C#" MasterPageFile="~/UserFront.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Photo_Studio.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/css/stylesheet1.css" />
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="assets/js/custom.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <section>
    <div class="first">
     
    </div>
         <div class="zero">
     
    </div>
    
    <div class="wedding">


     <div class="row">
        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="carousel-example" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img1" class="img-fluid" src="assets/img/W1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img2" class="img-fluid" src="assets/img/W2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img3" class="img-fluid" src="assets/img/W3.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
           <div class="wedding-tag">
                <h1>Wedding</h1>
                <p>Marriage is a book of<br /> <br /> which the first chapter<br /> <br /> is written in poetry and<br /> <br />  remaining chapters in <br /><br /> photography..............</p>
                <a href="Order.aspx"><input type="button"  class="wedding-tag-form-btn"  value="Book Order" /></a>
                </div>
            </div>
       

    </div>


    </div>
    <div class="second">
       
    </div>
    <div class="maternity">

             <div class="row">


                  <div class="col-md-4 col-sm-4 col-xs-12">
           <div class="maternity-tag">
               <h1>Maternity</h1>
                <p>i Will hold you<br /> <br />in my HEART<br /> <br />until i can hold <br /><br />you in my arms..</p>
                <a href="Order.aspx"><input type="button"  class="maternity-tag-form-btn"  value="Book Order" /></a>
               </div>
            </div>


        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="Div1" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img4" class="img-fluid" src="assets/img/M1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img5" class="img-fluid" src="assets/img/M2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img6" class="img-fluid" src="assets/img/M3.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
           
       

    </div>



    </div>
    <div class="third">

    </div>
    <div class="prewedding">


        <div class="row">
        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="Div2" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img7" class="img-fluid" src="assets/img/P1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img8" class="img-fluid" src="assets/img/P2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img9" class="img-fluid" src="assets/img/P3.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
           <div class="prewedding-tag">
              <h1>Pre-Wedding</h1>
                <p>Perfect is not when<br /> <br />two people are together.<br /><br />Its when you are both <br /><br />opposite but in that way<br /> <br />you compare each other...</p>
                <a href="Order.aspx"><input type="button"  class="prewedding-tag-form-btn"  value="Book Order" /></a>

            </div>
         </div>

    </div>


    </div>



    <div class="forth">

    </div>
    <div class="birthday">


         <div class="row">


                  <div class="col-md-4 col-sm-4 col-xs-12">
           <div class="birthday-tag">
                <h1>Birthday</h1>
                <p>"Taking an image,<br /><br />freezing a moment,<br /><br /> reveals how rich<br /> <br />reality truly is......"</p>
                <a href="Order.aspx"><input type="button"  class="birthday-tag-form-btn"  value="Book Order" /></a>
        </div>

            </div>


        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="Div3" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img10" class="img-fluid" src="assets/img/B2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img11" class="img-fluid" src="assets/img/B2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img12" class="img-fluid" src="assets/img/B3.jpeg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
           
       

    </div>



    </div>


    <div class="fifth">

    </div>
    
    <div class="kids">


        
     <div class="row">
        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="Div4" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img13" class="img-fluid" src="assets/img/K1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img14" class="img-fluid" src="assets/img/K1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img15" class="img-fluid" src="assets/img/K1.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="kids-tag">
               <h1>Kids</h1>
                <p>Sometimes the littlest<br /> <br />things take up the<br /> <br /> most room in your Heart</p>
                <a href="Order.aspx"><input type="button"  class="kids-tag-form-btn"  value="Book Order" /></a>

            </div>
        </div>

    </div>


    </div>
    <div class="six">

    </div>





    <div class="engagement">

        <div class="row">


                  <div class="col-md-4 col-sm-4 col-xs-12">
           <div class="engagement-tag">
                <h1>Engagement</h1>
                <p>We take photos as a<br /> <br />return ticket to a<br /> <br />moment otherwise gone...</p>
                <a href="Order.aspx"><input type="button"  class="engagement-tag-form-btn"  value="Book Order" /></a>

            </div>

</div>
        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="Div5" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img16" class="img-fluid" src="assets/img/E1.jpeg" />

                    </div>
                    <div class="item">
                        <img id="img17" class="img-fluid" src="assets/img/E2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img18" class="img-fluid" src="assets/img/E3.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
           
       

    </div>



    </div>
    <div class="seven">

    </div>
       </section>
</asp:Content>
