<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegisterPortal.Login" %>

<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form runat="server">
    <section class="container">
      <section class="jumbotron">
          <h2 class="text-center">MATSUMAE CUP 2016</h2>
          <h4 class="text-center">Login below if you wish to change your registration(s)</h4>
              <div class="login-form-main-message"></div>
              <center>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="lg_username" class="show">Username</label>
                        <asp:TextBox ID="TextBox1" type="text" class="form-control" placeholder="Username" runat="server" Height="30px" Width="200px"></asp:TextBox>

                        <div></div>

						<label for="lg_password" class="show">Password</label>
                        <asp:TextBox ID="TextBox2" type="text" class="form-control" placeholder="Password" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <div>
                            <br/>
                        </div>
						<input type="checkbox" id="lg_remember" name="lg_remember">
						<label for="lg_remember">remember</label>
					<asp:Button ID="Button1" class="btn btn-success" runat="server" OnClick="Button1_Click" Text="Login" />
					</div>
				</div>
			</div>
            </center>
      </section>
  </section>
  </form>
</asp:Content>

