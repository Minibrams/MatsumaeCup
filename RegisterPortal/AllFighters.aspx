<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AllFighters.aspx.cs" Inherits="RegisterPortal.AllFighters" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form runat="server">
    <section class="container">
      <section class="jumbotron">
          <h2 class="text-center">MATSUMAE CUP 2016</h2>
          <h4 class="text-center">Press the button below to register</h4>
          <div class="text-center">
                            <center>
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" Class="col-xs-12 col-md-8" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="766px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id">
                  <Columns>
                      <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                      <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                      <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                      <asp:BoundField DataField="SecondCategory" HeaderText="SecondCategory" SortExpression="SecondCategory" />
                  </Columns>
                  <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                  <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                  <RowStyle BackColor="White" ForeColor="#330099" />
                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                  <SortedAscendingCellStyle BackColor="#FEFCEB" />
                  <SortedAscendingHeaderStyle BackColor="#AF0101" />
                  <SortedDescendingCellStyle BackColor="#F6F0C0" />
                  <SortedDescendingHeaderStyle BackColor="#7E0000" />
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T]"></asp:SqlDataSource>
                                <iput id="Submit1" type="submit" value="submit" /></center>
         </div>
      </section>
  </section>
  </form>
</asp:Content>