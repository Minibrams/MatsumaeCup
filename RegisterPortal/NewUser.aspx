<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="RegisterPortal.NewUser" %>


<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form runat="server">
    <section class="container">
        <div class="text-right">
        <div class="form-inline">
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button6" runat="server" class="btn btn-primary" Text="Logout" OnClick="Button6_Click" Visible="False" />
            </div>
            </div>
      <section class="jumbotron">
         <div class="text-center">
          <h2><asp:Label ID="OKOrNot" class="alert alert-danger" role="alert" runat="server" Text="Virker dette her overhovedet" Visible="False"></asp:Label></h2>
             </div> 
          <h2 class="text-center">MATSUMAE CUP 2016</h2>
          <h4 class="text-center">First Time?</h4>
          <h4 class="text-center">Create new contact and sign in a fighter afterwards.</h4>
          <div class="text-center">
<div class="text-center">
	<div class="login-form-1">
            <div class="login-form-main-message"></div>
            <div class="main-login-form">
                <div class="login-group">
                    <center>
                    <div class="form-group">
                        <asp:TextBox ID="TextBoxClub" type="text" class="form-control" placeholder="Club:'Vejle Judo Klub'" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBoxUsername" type="text" class="form-control" placeholder="Username" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBoxFirstname" type="text" class="form-control" placeholder="Firstname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </div>
                        <div class="form-group">
                        <asp:TextBox ID="TextBoxLastname" type="text" class="form-control" placeholder="lastname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBoxEmail" TextMode="Email" class="form-control" placeholder="Email" runat="server" Height="30px" Width="200px" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="Country" runat="server" data-toggle="dropdown" Height="30px" Width="200px" AutoPostBack="True" OnDataBinding="DropDownList1_DataBinding" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value= "0">Country</asp:ListItem>
                            <asp:ListItem Value="0045">Danmark/DEN</asp:ListItem>
                            <asp:ListItem Value="0049">Germany/GER</asp:ListItem>
                            <asp:ListItem Value="0046">Sweden/SWE</asp:ListItem>
                            <asp:ListItem Value="0047">Norway/NOR</asp:ListItem>
                            <asp:ListItem Value="0000">Finland/FIN</asp:ListItem>
                            <asp:ListItem Value="0000">Norway/NOR</asp:ListItem>
                            <asp:ListItem Value="0000">Great Britain/GBR</asp:ListItem>
                            <asp:ListItem Value="0000">England/ENG</asp:ListItem>
                            <asp:ListItem Value="0000">Scotland/SCT</asp:ListItem>
                            <asp:ListItem Value="0000">Wales/WAL</asp:ListItem>

                            <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="show">Country code</label>
                        <asp:TextBox ID="TextBoxCountryCode" class="form-control" placeholder="Country Code" runat="server" Height="30px" Width="130px" TextMode="Search"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBoxPhone" class="form-control" placeholder="Phone number" runat="server" Height="30px" Width="200px" TextMode="Phone"></asp:TextBox>
                    </div>
                    </center>
                </div>
            </div>
        </div>     
        <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Register" OnClick="Button2_Click" data-toggle="modal" href="#submitted"/>  
        <br />
                </div>
              </div>
      </section>
  </section>
  </form>
</asp:Content>
