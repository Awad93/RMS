<%@ Page Language="C#" MasterPageFile="/Repository/MasterPage.master" AutoEventWireup="true" CodeBehind="Update_NonISI_Publications.aspx.cs" Inherits="RMS.Update_NonISI_Publications" %>

<asp:Content id="content" contentplaceholderid="MainContent" runat="server">
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


                    <div class="panel panel-default">
                        <header class="panel-heading">
                            <a data-toggle="collapse" href="#pnlSuggestions">Non-ISI Publications you may have worked on
                            </a>
                        </header>
                        <div class="panel-collapse collapse in panel-body" id="pnlSuggestions">
                            <div style="color: #aaaaaa">
                                <asp:Literal runat="server" id="ltrlSuggestionsSubtitle">These are non-ISI publications we've found that may belong to you (based on author's name similarity). Please check
                                any publications that are yours and click 'Save'</asp:Literal>
                            </div>
                            <br />
                            <div class="col-lg-10 center-block" style="float: none">
                                <asp:Repeater ID="repeaterNonISIPublications" runat="server" OnItemDataBound="repeaterNonISIPublications_ItemDataBound">
                                    <HeaderTemplate>
                                        <table class="table table-striped">
                                            <theader style="color: gray">
                                                Suggestions based on last name
                                            </theader>
                                    </HeaderTemplate>
                                    <ItemTemplate>                                        
                                        <asp:HiddenField runat="server" id="hfvPublicationID" />
                                        <tr>
                                            <td>
                                                <h5 style="color: blue">
                                                    <asp:Literal ID="ltrlPaperTitle" runat="server">                                               
                                                    </asp:Literal></h5>
                                                <h6 style="color: grey">
                                                    <asp:Literal ID="ltrlAuthors" runat="server">
                                                    </asp:Literal></h6>
                                                <h6>
                                                    <%--<asp:Literal ID="ltrlPublicationYear" runat="server"></asp:Literal>--%>
                                                    <asp:Literal ID="ltrlSource" runat="server"></asp:Literal>
                                                </h6>
                                            </td>
                                            <td class="text-center" style="vertical-align: middle">
                                                <asp:CheckBox id="cbAdd" Style="text-align=center" runat="server" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                            <asp:Button runat="server" text="Save" id="btnAddAuthor" class="btn btn-success center-block" onServerClick="btnAddAuthor_Click" />
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <header class="panel-heading">
                             <a data-toggle="collapse" href="#pnlAdd">Add A Non-ISI Publication
                            </a>                           
                        </header>
                        <div class="panel-collapse collapse panel-body" id="pnlAdd">
                            <div style="color: #aaaaaa">
                                You can update our Repository in case of missing publications by filling this form. The Deanship with verify your entry and update the Respository accordingly.
                            </div>
                            <br />
                            <form id="update-form" class="form-horizontal tasi-form" style="display: none">
                                <div class="form-group required row">
                                    <label class="control-label col-lg-2" for="txtTitle">Title:</label>
                                    <div class="col-lg-10">
                                        <input runat="server" id="txtTitle" type="text" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group required row">
                                    <label class="control-label col-lg-2" for="txtJournal">Journal:</label>
                                    <div class="col-lg-10">
                                        <input runat="server" id="txtJournal" type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required row">
                                    <label class="control-label col-lg-2" for="txtareaAuthors">Author(s):</label>
                                    <div class="col-lg-10">
                                        <!-- <input id="authors" type="text" class="form-control" placeholder="separated by semi-colon"> -->
                                        <textarea runat="server" id="txtareaAuthors" class="form-control" rows="10" placeholder="Separate author names by a semi-colon (;) or a new line"></textarea>
                                    </div>
                                </div>
                                <div class="form-group required row">
                                    <label class="control-label col-lg-2" for="txtYearPublished">Year published:</label>
                                    <div class="col-lg-3">
                                        <input runat="server" id="txtYearPublished" type="number" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required row">
                                    <label class="control-label col-lg-2" for="txtUrl">Google Scholar</label>
                                    <div class="col-lg-10">
                                        <input runat="server" id="txtUrl" type="text" class="form-control" placeholder="URL" />
                                    </div>
                                </div>
                                <asp:Button runat="server" text="Save" id="btnAddPublication" class="btn btn-success center-block" onServerClick="btnAddPublication_Click" />
                            </form>
                        </div>
                    </div>                                        


                </div>
            </div>
            <%--Error label--%>
            <div class="col-lg-12 text-center bg-danger padding-top-bottom20">
                <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
            </div>
            <%--End: Error label--%>

            <!-- End: page content -->            
        </div>        
</asp:Content>
