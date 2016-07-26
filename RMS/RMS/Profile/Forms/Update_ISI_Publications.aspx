<%@ Page Language="C#" MasterPageFile="/Repository/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Update_ISI_Publications.aspx.cs" Inherits="RMS.Profile.Forms.Update_ISI_Publications" %>

<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header -->
    <header class="header">
        <div class="container-fluid">
            <div class="row" id="main-header">
                <div class="col-md-6">
                    <h1 class="col-md-offset-1">KFUPM Research Repository</h1>
                </div>
            </div>

        </div>
        <!-- 	<div style="margin-left:0;">
			<a>Update Records</a>
			<a>Admin login</a>
		</div> -->
    </header>
    <!-- End: Header -->

    <!-- Sidebar -->
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="col-md-3 col-lg-2">
                <%--<asp:Literal runat="server">
				        <div  id="sidebar-list" class="panel">
					        <ul  id="listCollege" class="list-unstyled" runat="server">
						        <li class="text-center"><a href="main2.html">Home</a></li>   						
					        </ul>					
				        </div>
                    </asp:Literal>--%>

                <asp:Button runat="server" ID="btnDepartment" Style="display: none" OnClick="btnDepartment_OnClick" />
                <asp:HiddenField runat="server" ID="hfvDepartmentType" />
                <asp:HiddenField runat="server" ID="hfvDepartmentCode" />
                <asp:Repeater ID="repeaterColleges" runat="server" OnItemDataBound="repeaterColleges_ItemDataBound">
                    <HeaderTemplate>
                        <div id="sidebar-list" class="panel">
                            <ul id="listCollege" class="list-unstyled">
                                <li class="text-center"><a href="main2.html">Home</a></li>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <span class="panel">
                            <%--<li id="listcollege" onclick="javascript:collegeClicked('<%#Eval("Department_Code") %>')" data-toggle="collapse" href="#deptID<%#Eval("Department_ID")%>" data-parent="#listCollege">--%>
                            <li onclick="clickDepartment('COLLEGE', '<%#Eval("Department_Code")%>')"
                                data-toggle="collapse" href="#deptID<%#Eval("Department_ID")%>" data-parent="#listCollege">
                                <a>
                                    <asp:Literal ID="ltrlCollege" runat="server"></asp:Literal>
                                </a>
                            </li>
                            <ul id="deptID<%#Eval("Department_ID")%>" class="collapse list-unstyled">
                                <asp:Repeater ID="repeaterDepartments" runat="server" OnItemDataBound="repeaterDepartments_ItemDataBound">
                                    <ItemTemplate>
                                        <li onclick="clickDepartment('DEPARTMENT', '<%#Eval("Department_Code")%>')"><a>
                                            <asp:Literal ID="ltrlDepartment" runat="server"></asp:Literal>
                                        </a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </span>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                            </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <!-- End: Sidebar -->

            <!-- Page content -->
            <div class="col-lg-9" style="padding-left: 0 !important;">

                <!-- Breadcrumb -->
                <div class="panel panel-default">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Update Records</a></li>
                    </ol>
                </div>
                <!-- End: Breadcrumb -->


                <%--  <div class="panel panel-default">
                    <header class="panel-heading">
                        Recently added ISI publications                       
                    </header>
                    <div class="panel-body">
                        <div style="color: #aaaaaa">
                            <asp:Literal runat="server" ID="ltrlSuggestionsSubtitle">These are books we've found that may belong to you (based on author's name similarity). Please check
                                any books that are yours and click 'Save'.</asp:Literal>

                        </div>
                        <br />--%>
                <div>
                    <asp:Repeater runat="server" ID="rptPublications" OnItemDataBound="rptPublications_ItemDataBound">
                        <ItemTemplate>
                            <div class="panel panel-info">
                                <asp:HiddenField ID="hfvAuthorID" runat="server" />
                                <asp:HiddenField ID="hfvWOS" runat="server" />
                                <header class="panel-heading">
                                    Paper #<asp:Literal runat="server" ID="ltrlItemCount"></asp:Literal>
                                </header>
                                <div class="panel-body">
                                    <h4 style="color:dodgerblue">
                                        <asp:Literal runat="server" ID="ltrlPaperTitle"></asp:Literal>
                                    </h4>
                                    <div runat="server" id="divAuthorRank" class="form-group required row">
                                        <label class="control-label col-lg-4" for="ddlAuthorRank">Author Rank:</label>
                                        <div class="col-lg-4">
                                            <asp:DropDownList runat="server" ID="ddlAuthorRank" />
                                        </div>
                                        <asp:Label runat="server" ID="lblErrAuthorRank" CssClass="text-danger"></asp:Label>
                                    </div>
                                    <div runat="server" id="divIsCorrespondingAuthor" class="form-group required row">
                                        <label class="control-label col-lg-4" for="rblIsCorrespondingAuthor">Are you the corresponding author?</label>
                                        <div class="col-lg-2">
                                            <asp:RadioButtonList runat="server" ID="rblIsCorrespondingAuthor" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <asp:Label runat="server" ID="lblErrIsCorrespondingAuthor" CssClass="text-danger"></asp:Label>
                                    </div>
                                    <%-- <div class="form-group required row">
                                        <label class="control-label col-lg-2" for="rblIsProjectPublication">Are you the corresponding author?</label>
                                        <div class="col-lg-10">
                                            <asp:RadioButtonList runat="server" ID="rblIsProjectPublication">
                                                <asp:ListItem value="1">Yes</asp:ListItem>
                                                <asp:ListItem value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>                                                                                        
                                        </div>
                                    </div>--%>
                                    <div runat="server" id="divProjectCode" class="form-group row">
                                        <label class="control-label col-lg-3" for="txtProjectCode">Project Code (if part of a project):</label>
                                        <div class="col-lg-5">
                                            <input runat="server" type="text" id="txtProjectCode" />
                                        </div>
                                    </div>
                                    <div runat="server" id="divStudentInvolvement" class="form-group row">
                                        <label class="control-label col-lg-3" for="rblAuthors">Kindly select all students:</label>
                                        <div class="col-lg-5">
                                            <asp:CheckBoxList runat="server" ID="cblAuthors">                                                
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <asp:Button runat="server" Text="Save" ID="btnUpdatePublication" class="btn btn-success center-block" OnClick="btnUpdatePublication_Click" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>                    
                </div>
                <%--</div>
            </div>


        </div>
    </div>--%>
                <%--Error label--%>
                <div class="col-lg-12 text-center bg-danger padding-top-bottom20">
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
                </div>
                <%--End: Error label--%>

                <!-- End: page content -->
            </div>
</asp:Content>

