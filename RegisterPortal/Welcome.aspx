<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="RegisterPortal.Welcome" %>

<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <section class="container">
        <div class="text-right">
        <div class="form-inline">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Logout" OnClick="Button1_Click" Visible="False" />
            </div>
            </div>
        </section>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
  </ol>

  <!-- Indstillinger for de forskellige slides -->
  <div class="carousel-inner" role="listbox">

    <div class="item active">
      <img src="matsumae.jpg" alt="matsumaemain"/>
      <div class="carousel-caption pull-left">
          <h1><strong>Matsumae Cup 2016</strong></h1>
          <p class="lead">Welcome to the website of the annual Matsumae Judo Cup!</p>
          <p>This year, we are proud to announce the 10th annual cup, the Mastumae Cup 2016. You can find all needed information including weight classes, requirements for participation, and much more using the menu above. You can also press the button below to register as a contestant.</p>
          <a class="btn btn-lg btn-warning pull-left" href="NewUser.aspx">Register here</a> 
      </div>
    </div>

    <div class="item">
      <img src="matsumae2015.jpg" alt="matsumaesecondary"/>
      <div class="carousel-caption">
        <h1 class="pull-left"><strong>Are you a trainer?<br /></strong></h1>
        <p class="pull-left">Are you a trainer and need to register several people for the Matsumae Cup 2016? Press the button below to go to the multi-registration form.</p>
        <a class="btn btn-lg btn-warning pull-left" href="NewUser.aspx">Register your team here</a> 
      </div>
    </div>

  </div>

  <!-- Så man kan trykke til højre og til venstre -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<section class="container">
    <section class="col-lg-4">
    <h3>Contact information</h3>
    <p>Here we can add a lot more information about the website and the event. All this information is going to be cut off in and we'll add a button that links the user to the page containing all the information. Lorem ipsum dolor sit amet...</p>
        <a href="#" class="btn btn-default btn-sm">Read more...</a>
    </section>
    <section class="col-lg-4">
            <h3>List of attendants</h3>
    <p>Here we can add a lot more information about the website and the event. All this information is going to be cut off in and we'll add a button that links the user to the page containing all the information. Lorem ipsum dolor sit amet...</p>
        <a href="#" class="btn btn-default btn-sm">Read more...</a>   
    </section>
    <section class="col-lg-4">
            <h3>All hail Baphoment, true heir of Cthulhu</h3>
    <p>Here we can add a lot more information about the website and the event. All this information is going to be cut off in and we'll add a button that links the user to the page containing all the information. Lorem ipsum dolor sit amet...</p>
        <a href="#" class="btn btn-default btn-sm">Read more...</a>
    </section>
</section>
</asp:Content>
