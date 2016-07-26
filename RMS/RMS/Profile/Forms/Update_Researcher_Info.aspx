<%@ Page Language="C#" MasterPageFile="/Repository/MasterPage.master" AutoEventWireup="true" CodeBehind="Update_Researcher_Info.aspx.cs" Inherits="RMS.Profile.Update_Researcher_Info" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    <title>Profile</title>
</asp:Content>


<asp:Content ID="content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <header class="">
                <div class="container-fluid">
                    <div class="row" id="main-header">
                        <div class="col-md-6">
                            <h1 class="col-md-offset-1">Profiles - Add/Update Personal Info</h1>
                        </div>
                    </div>
                </div>
            </header>
            <asp:HiddenField ID="hfvDepartmentType" runat="server" />
            <asp:HiddenField ID="hfvDepartmentCode" runat="server" />

            <!-- Page content -->
            <div class="col-lg-12" style="padding-left: 0 !important;" id="content">

                <!-- Breadcrumb -->
                <div class="panel panel-default">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Update Profile Info</a></li>
                    </ol>
                </div>
                <!-- End: Breadcrumb -->

                <div class="panel">
                    <header class="panel-heading">
                        View & Edit your profile                                                    
                    </header>
                    <div class="panel-body" id="pnlAdd">
                        <div style="color: #aaaaaa">
                            You may edit any information that is incorrect or outdated.
                        </div>
                        <br />
                        <div id="update-form" class="form-horizontal tasi-form">
                            <div class="form-group required row ">
                                <label class="col-sm-2 control-label col-lg-2" for="fullName">First name:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtFirstName" type="text" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert-danger" ErrorMessage="* Required" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                                </div>

                                <label class="col-sm-2 control-label col-lg-2" for="fullName">Middle name:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtMiddleName" type="text" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert-danger" ErrorMessage="* Required" ControlToValidate="txtMiddleName"></asp:RequiredFieldValidator>
                                </div>

                                <label class="col-sm-2 control-label col-lg-2" for="fullName">Last name:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtLastName" type="text" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="alert-danger" ErrorMessage="* Required" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="fullName">Full name:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtFullName" type="text" class="form-control" disabled />
                                    <asp:RequiredFieldValidator ID="rfvfullName" runat="server" CssClass="alert-danger" ErrorMessage="* Required" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="ddlRank">Department:</label>
                                <div class="col-md-9 col-lg-10">
                                    <asp:DropDownList ID="ddlDepartment" runat="server" class="selectpicker" data-live-search="true">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="alert-danger" ErrorMessage=" * Required" ControlToValidate="ddlDepartment"
                                        InitialValue="0"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="ddlRank">Rank:</label>
                                <div class="col-md-9 col-lg-10">
                                    <asp:DropDownList ID="ddlRank" runat="server" class="selectpicker" data-live-search="true">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="alert-danger" ErrorMessage=" * Required" ControlToValidate="ddlAdministrativeRank"
                                        InitialValue="0"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="fullName">Administrative Rank:</label>
                                <div class="col-md-9 col-lg-10">
                                    <asp:DropDownList ID="ddlAdministrativeRank" runat="server" class="selectpicker" data-live-search="true">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="alert-danger" ErrorMessage=" * Required" ControlToValidate="ddlAdministrativeRank"
                                        InitialValue="0"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 control-label col-lg-2" for="email">Email:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input id="txtEmail" runat="server" type="email" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="alert-danger" ErrorMessage=" * Required"
                                        ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="rID">Researcher ID:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input id="txtResearcherID" runat="server" type="text" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="alert-danger" ErrorMessage=" * Required"
                                        ControlToValidate="txtResearcherID"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="yearJoined">Date of joining university:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtJoiningDate" type="date" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass="alert-danger" ErrorMessage=" * Required"
                                        ControlToValidate="txtJoiningDate"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="yearJoined">Year of joining university:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input runat="server" id="txtYearJoined" type="number" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass="alert-danger" ErrorMessage=" * Required"
                                        ControlToValidate="txtYearJoined"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group required row">
                                <label class="col-sm-2 control-label col-lg-2" for="yearJoined">Phone:</label>
                                <div class="col-md-9 col-lg-10">
                                    <input id="txtPhone" runat="server" type="number" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" CssClass="alert-danger" ErrorMessage=" * Required"
                                        ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 control-label col-lg-2">Name(s) used in publications:</label>
                                <div class="col-md-9 col-lg-10">
                                    <textarea class="form-control" rows="5" placeholder="Separate names by a semi-colon (;) or a new line"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 control-label col-lg-2">KFUPM ID(s) previously issued:</label>
                                <div class="col-md-9 col-lg-10">
                                    <textarea class="form-control" rows="5" placeholder="Separate IDs by a semi-colon (;) or a new line"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 control-label col-lg-2">Other Rank(s):</label>
                                <div class="col-md-9 col-lg-10">
                                    <textarea class="form-control" rows="5" placeholder="Separate rank titles by a semi-colon (;) or a new line"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-12 col-lg-12">
                                    <asp:Button class="btn btn-success center-block btn-lg" ID="btnSave" runat="server" Text=" Save " OnClick="btnSave_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="messagealert" id="alert_container">
            </div>

            <%--Message label--%>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <%--End: Message label--%>

            <!-- End: page content -->

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
