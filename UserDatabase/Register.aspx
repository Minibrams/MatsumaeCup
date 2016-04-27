<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UserDatabase.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CPH1" runat="server">
    <section class="container">
        <section class="jumbotron">

            <h2>Enter your information below</h2>

            <form action="#" class="form-horizontal">
                <article id="inputform">
                <div class="form-group">
                    <div class="col-sm-3">
                        <label>Full name</label>
                        <input type="text" class="form-control"/>
                    </div>

                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="sel1">Category</label>
                            <select class="form-control" id="sel1">
                                <option>Men U18</option>
                                <option>Men U21</option>
                                <option>Men Senior</option>
                                <option>Women U18</option>
                                <option>Women U21</option>
                                <option>Women Senior</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-2">
                        <div class="checkbox">
                            <label><input type="checkbox" value=""/>Participate in Cup?</label>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="checkbox">
                            <label><input type="checkbox" value=""/>Participate in Camp?</label>
                        </div>
                    </div>
                </div>
            </article>
            </form>

            <button class="btn btn-info pull-right" onclick="javascript:$( '.form-horizontal' ).append(  $( '#inputform' ).clone() );">
            Add new form
            </button>

            <a href="#submitted" class="btn btn-success" data-toggle="modal">Submit</a>

            <div class="modal fade" id="submitted" role="dialog">
                <div class ="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="text-center">Your information has been submitted</h4>
                        </div>
                        <div class="modal-body">
                            
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </section>
</asp:Content>
