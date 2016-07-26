<%@ Page Language="C#" MasterPageFile="/Repository/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="admin_page.aspx.cs" Inherits="RMS.admin_page_test" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    <script src="http://code.highcharts.com/highcharts.js"></script>

    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <title>Results</title>
</asp:Content>

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
    </header>
    <!-- End: Header -->

    <div class="container-fluid">
        <div class="row-fluid">

            <!-- Sidebar -->
            <div class="col-md-2 col-lg-2">
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
                                    <asp:Literal ID="ltrlCollege" runat="server"></asp:Literal></a>

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

            <input id="hfvPill" type="hidden" />
            <!-- Page content -->
            <div class="col-lg-9" style="padding-left: 0 !important;">
                <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnDepartment" EventName="Click" />
                        <%--<asp:AsyncPostBackTrigger ControlID="ddlChart" EventName="SelectedIndexChanged" />--%>
                    </Triggers>
                    <ContentTemplate>
                        <!-- Breadcrumb -->
                        <div class="panel panel-default">
                            <ol class="breadcrumb">
                                <li><a onclick="clickDepartment('KFUPM')">Home</a></li>
                                <asp:Literal runat="server" ID="ltrlCollege"></asp:Literal>
                                <asp:Literal runat="server" ID="ltrlDepartment"></asp:Literal>
                                <asp:Literal runat="server" ID="ltrlFaculty"></asp:Literal>
                            </ol>
                        </div>
                        <!-- End: Breadcrumb -->

                        <%--Error label--%>
                        <div class="col-lg-12 text-center bg-danger padding-top-bottom20">
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
                        </div>
                        <%--End: Error label--%>

                        <%--Tabs--%>
                        <div class="panel">
                            <header class="panel-heading">
                                <ul id="pills" class="nav nav-pills">
                                    <li><a data-toggle="pill" href="#all">All</a></li>
                                    <li><a data-toggle="pill" href="#statistics">Statistics</a></li>
                                    <li><a data-toggle="pill" href="#faculty">By faculty</a></li>
                                </ul>
                            </header>
                            <div class="panel-body">
                                <div id="results-tab" class="nav-justified tab-content pull-left">
                                    <div id="all" class="tab-pane fade">
                                        <div class="panel-title">
                                            <h4>View all</h4>
                                        </div>
                                        <ul class="results-list collapse-arrow" style="padding-left: 0">
                                            <asp:Repeater ID="repeaterISIPublications" runat="server" OnItemDataBound="repeaterISIPublications_ItemDataBound">
                                                <HeaderTemplate>
                                                    <li>
                                                        <a data-toggle="collapse" href="#journals">ISI Journals
                                                                <asp:Label class="label label-default" ID="lblTotalPublications" runat="server"></asp:Label></a>
                                                    </li>
                                                    <ul class="collapse collapse-arrow results-list" id="journals">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Literal ID="ltrlYear" runat="server"></asp:Literal>
                                                    <li runat="server" id="ISIEntry" data-toggle="collapse" class="list-bordered">
                                                        <h4 style="color: blue">
                                                            <asp:Literal ID="ltrlPaperTitle" runat="server">                                               
                                                            </asp:Literal></h4>
                                                        <h6 style="color: grey">
                                                            <b>Authors: </b>
                                                            <asp:Literal ID="ltrlAuthors" runat="server">
                                                            </asp:Literal>
                                                            <b>Wide category: </b>
                                                            <asp:Literal ID="ltrlWideCategory" runat="server">
                                                            </asp:Literal>
                                                        </h6>

                                                    </li>
                                                    <div runat="server" id="ISIEntry_Showmore" class="well collapse showmore pull-left">
                                                        <p>
                                                            <b>WOS: </b>
                                                            <asp:Literal ID="ltrlWOS" runat="server"></asp:Literal>
                                                        </p>
                                                        <p>
                                                            <b>Date: </b>
                                                            <asp:Literal ID="ltrlDate" runat="server"></asp:Literal>
                                                        </p>
                                                        <p>
                                                            <b>Journal: </b>
                                                            <asp:Literal ID="ltrlJournal" runat="server"></asp:Literal>
                                                        </p>
                                                        <p>
                                                            <b>Area: </b>
                                                            <asp:Literal ID="ltrlArea" runat="server"></asp:Literal>
                                                        </p>
                                                        <p class="keywords">
                                                            <b>Keywords: </b>
                                                            <asp:Literal ID="ltrlKeywords" runat="server"></asp:Literal>
                                                        </p>
                                                        <p>
                                                            <b>Abstract: </b>
                                                            <asp:Literal ID="ltrlAbstract" runat="server"></asp:Literal>
                                                        </p>
                                                    </div>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                        <asp:Literal runat="server" ID="ltrlDone"></asp:Literal>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="repeaterNonISIPublications" runat="server" OnItemDataBound="repeaterNonISIPublications_ItemDataBound">
                                                <HeaderTemplate>
                                                    <li>
                                                        <a data-toggle="collapse" href="#nonisijournals">Non-ISI Journals
                                                                <asp:Label class="label label-default" ID="lblTotalPublications" runat="server"></asp:Label></a>
                                                    </li>
                                                    <ul class="collapse collapse-arrow" id="nonisijournals">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Literal ID="ltrlyear" runat="server">
                                                    </asp:Literal>
                                                    <li class="list-bordered">
                                                        <h4 style="color: blue">
                                                            <asp:Literal ID="ltrlPaperTitle" runat="server">                                               
                                                            </asp:Literal></h4>
                                                        <h6 style="color: grey">
                                                            <b>Authors: </b>
                                                            <asp:Literal ID="ltrlAuthors" runat="server">
                                                            </asp:Literal>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <b>Publication Year: </b>
                                                            <asp:Literal ID="ltrlPublicationYear" runat="server">
                                                            </asp:Literal>
                                                        </h6>

                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="repeaterBooks" runat="server" OnItemDataBound="repeaterBooks_ItemDataBound">
                                                <HeaderTemplate>
                                                    <li>
                                                        <a data-toggle="collapse" href="#books">Books
                                                                <asp:Label class="label label-default" ID="lblTotalBooks" runat="server"></asp:Label></a>
                                                    </li>
                                                    <ul class="collapse" id="books">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Literal ID="ltrlyear" runat="server">
                                                    </asp:Literal>
                                                    <li class="list-bordered">
                                                        <h4 style="color: blue">
                                                            <asp:Literal ID="ltrlBookTitle" runat="server">                                               
                                                            </asp:Literal></h4>
                                                        <h6 style="color: grey">
                                                            <b>Authors: </b>
                                                            <asp:Literal ID="ltrlAuthors" runat="server">
                                                            </asp:Literal>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <b>Publication Year: </b>
                                                            <asp:Literal ID="ltrlPublicationYear" runat="server">
                                                            </asp:Literal>
                                                            <h6>
                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="repeaterConferences" runat="server" OnItemDataBound="repeaterConferences_ItemDataBound">
                                                <HeaderTemplate>
                                                    <li>
                                                        <a data-toggle="collapse" href="#conferences">Conferences
                                                                <asp:Label class="label label-default" ID="lblTotalConferences" runat="server"></asp:Label></a>
                                                    </li>
                                                    <ul class="collapse collapse-arrow results-list" id="conferences">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Literal ID="ltrlYear" runat="server"></asp:Literal>
                                                    <li style="color: grey" class="list-bordered">
                                                        <h4 style="color: blue">
                                                            <asp:Literal ID="ltrlConferenceTitle" runat="server">                                               
                                                            </asp:Literal>
                                                        </h4>
                                                        <h6>
                                                            <b>Location: </b>
                                                            <asp:Literal ID="ltrlLocation" runat="server">
                                                            </asp:Literal>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <b>Year: </b>
                                                            <asp:Literal ID="ltrlYearOfConference" runat="server">
                                                            </asp:Literal>
                                                        </h6>
                                                        <h6>
                                                            <asp:Literal ID="ltrlPaperTitle" runat="server">
                                                            </asp:Literal>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Literal ID="ltrlAuthors" runat="server">
                                                            </asp:Literal>
                                                        </h6>
                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                        <asp:Literal runat="server" ID="ltrlDone"></asp:Literal>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="repeaterPatents" runat="server" OnItemDataBound="repeaterPatents_ItemDataBound">
                                                <HeaderTemplate>
                                                    <li>
                                                        <a data-toggle="collapse" href="#patents">Patents
                                                                <asp:Label class="label label-default" ID="lblTotalPatents" runat="server"></asp:Label></a>
                                                    </li>
                                                    <ul class="collapse collapse-arrow" id="patents">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li class="list-bordered">
                                                        <h4 style="color: blue">
                                                            <asp:Literal ID="ltrlPatentTitle" runat="server">                                               
                                                            </asp:Literal>
                                                        </h4>
                                                        <h6 style="color: grey">
                                                            <b>Country: </b>
                                                            <asp:Literal ID="ltrlCountry" runat="server">
                                                            </asp:Literal>
                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                            <b>Year Of Issue: </b>
                                                            <asp:Literal ID="ltrlYearOfIssue" runat="server">
                                                            </asp:Literal>
                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                            <b>Patent Number: </b>
                                                            <asp:Literal ID="ltrlPatentNumber" runat="server">
                                                            </asp:Literal>
                                                        </h6>
                                                        <h6>
                                                            <asp:Literal ID="ltrlOwner" runat="server">
                                                            </asp:Literal></h6>


                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                    <div id="statistics" class="tab-pane fade">
                                        <div class="panel-title">
                                            <h4>Yearly Statistics</h4>
                                        </div>
                                        <form class="form-horizontal tasi-form">
                                            <div class="row form-group">
                                                <label class="control-label col-lg-2" style="text-align: left;" for="ddlChart">Show chart for: </label>
                                                <div class="col-lg-4">
                                                    <asp:DropDownList runat="server" ID="ddlChart" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlChart_onChange">
                                                        <asp:ListItem Value="pp">Publication Points</asp:ListItem>
                                                        <asp:ListItem Value="isi">ISI</asp:ListItem>
                                                        <asp:ListItem>Non-ISI</asp:ListItem>
                                                        <asp:ListItem>Conferences</asp:ListItem>
                                                        <asp:ListItem>Patents</asp:ListItem>
                                                        <asp:ListItem>Books</asp:ListItem>
                                                        <asp:ListItem>Projects</asp:ListItem>
                                                        <asp:ListItem>Short courses funding</asp:ListItem>
                                                        <asp:ListItem>Graduate students</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-offset-2 col-md-4">
                                                    <button id="generate-report" type="button" class="btn btn-info" data-toggle="modal" data-target="#report-modal">Create report</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div id="report-modal" class="modal fade" role="dialog">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Statistics: All Time</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <table class="table table-striped table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th rowspan="2">Year</th>
                                                                    <th rowspan="2">ISI</th>
                                                                    <th rowspan="2">Non-ISI</th>
                                                                    <th rowspan="2">Publication Points (PP)</th>
                                                                    <th rowspan="2">Conferences</th>
                                                                    <th rowspan="2">Patents</th>
                                                                    <th rowspan="2">Books</th>
                                                                    <th colspan="2">Projects</th>
                                                                    <th colspan="2">Funds</th>
                                                                    <th rowspan="2">Short courses funding</th>
                                                                    <th rowspan="2">Graduate students</th>
                                                                </tr>
                                                                <tr>
                                                                    <th>Internal</th>
                                                                    <th>NSTP</th>
                                                                    <th>Internal</th>
                                                                    <th>NSTP</th>
                                                                </tr>
                                                            </thead>                                                            
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h5>Publication points</h5>
                                        <div>

                                            <!-- Chart -->
                                            <div>
                                                <div id="mychart" style="width: 100%;"></div>
                                            </div>
                                            <!-- End: Chart -->
                                        </div>
                                        <div id="summary">
                                            <span class="row">
                                                <h2 class="col-md-5">Summary<small>  of the last 8 years</small></h2>
                                                <%--<div class="col-md-2">
                                                    <button type="button" class="btn btn-success" style="margin-top: 20px" data-toggle="modal" data-target="#statistics-modal">Show more</button>
                                                </div>--%>
                                            </span>
                                            <%--<div id="statistics-modal" class="modal fade" role="dialog">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Statistics: All Time</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <table class="table table-striped table-bordered">
                                                                    <thead>
                                                                        <tr>
                                                                            <th rowspan="2">Year</th>
                                                                            <th rowspan="2">ISI</th>
                                                                            <th rowspan="2">Non-ISI</th>
                                                                            <th rowspan="2">Publication Points (PP)</th>
                                                                            <th rowspan="2">Conferences</th>
                                                                            <th rowspan="2">Patents</th>
                                                                            <th rowspan="2">Books</th>
                                                                            <th colspan="2">Projects</th>
                                                                            <th colspan="2">Funds</th>
                                                                            <th rowspan="2">Short courses funding</th>
                                                                            <th rowspan="2">Graduate students</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Internal</th>
                                                                            <th>NSTP</th>
                                                                            <th>Internal</th>
                                                                            <th>NSTP</th>
                                                                        </tr>
                                                                    </thead>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>--%>
                                            <div style="border-top: 1px solid #eeeeee;">
                                                <div style="border-right: 1px solid #eeeeee;">
                                                    <h4>Publications:</h4>
                                                    <h5>6 total publication in 2016</h5>
                                                    <table id="tblSummary" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th rowspan="2">Year</th>
                                                                <th rowspan="2">ISI</th>
                                                                <th rowspan="2">Non-ISI</th>
                                                                <th rowspan="2">Publication Points (PP)</th>
                                                                <th rowspan="2">Conferences</th>
                                                                <th rowspan="2">Patents</th>
                                                                <th rowspan="2">Books</th>
                                                                <th colspan="2">Projects</th>
                                                                <th colspan="2">Funds</th>
                                                                <th rowspan="2">Graduate students</th>
                                                            </tr>
                                                            <tr>
                                                                <th>Internal</th>
                                                                <th>NSTP</th>
                                                                <th>Internal</th>
                                                                <th>NSTP</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater ID="repeaterStatistics" runat="server" OnItemDataBound="repeaterStatistics_ItemDataBound">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlYear" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlISI" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlNonISI" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlPublicationPoint" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlConference" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlPatent" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlBook" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlInternalProject" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlNSTPProject" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlInternalFund" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlNSTPFund" runat="server"></asp:Literal></td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrlGraduateStudents" runat="server"></asp:Literal></td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <table style="visibility: hidden" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th rowspan="2">Year</th>
                                                            <th rowspan="2">ISI</th>
                                                            <th rowspan="2">Non-ISI</th>
                                                            <th rowspan="2">Publication Points (PP)</th>
                                                            <th rowspan="2">Conferences</th>
                                                            <th rowspan="2">Patents</th>
                                                            <th rowspan="2">Books</th>
                                                            <th colspan="2">Projects</th>
                                                            <th colspan="2">Funds</th>
                                                            <th rowspan="2">Short courses funding</th>
                                                            <th rowspan="2">Graduate students</th>
                                                        </tr>
                                                        <tr>
                                                            <th>Internal</th>
                                                            <th>NSTP</th>
                                                            <th>Internal</th>
                                                            <th>NSTP</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                                                        
                                    <asp:HiddenField runat="server" ID="hfvFacultyID" />
                                    <div id="faculty" class="tab-pane fade">
                                        <div class="panel-title">
                                            <h4>Faculty</h4>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-offset-3 col-lg-6">
                                                <input runat="server" id="txtSearchBar" type="text" class="form-control" placeholder="Search">
                                            </div>
                                            <div class="col-lg-offset-1 col-lg-1">
                                                <button runat="server" id="btnSearchFaculty" type="button" class="btn btn-info" onserverclick="btnSearchFaculty_Click">Search</button>
                                            </div>
                                        </div>
                                        <asp:Button runat="server" ID="btnFacultyFilter" Style="display: none" OnClick="btnFacultyFilter_Click" />
                                        <asp:HiddenField runat="server" ID="hfvFirstChar"/>
                                        <div id="div_character_filter" class="row">
                                            <asp:Repeater runat="server" ID="repeaterFaculty_filter" OnItemDataBound="repeaterFaculty_filter_ItemDataBound">
                                                <HeaderTemplate>
                                                    <ul class="text-center list-unstyled">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li style="display: inline">
                                                        <asp:Literal runat="server" ID="ltrlCharacter"></asp:Literal></li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--<input runat="server" id="facultyChosen" type="hidden" value="false"/>--%>
                                        <asp:UpdatePanel runat="server" ID="UpdateFacultyPanel" UpdateMode="Conditional">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnFacultyFilter" EventName="Click" />
                                            </Triggers>
                                            <ContentTemplate>
                                                <ul class="facultyList list-unstyled">
                                                    <asp:Repeater ID="repeaterFaculty" runat="server" OnItemDataBound="repeaterFaculty_ItemDataBound">
                                                        <ItemTemplate>
                                                            <li>
                                                                <a runat="server" onserverclick="btnFaculty_OnClick" onclick="changeTab('faculty', 'all');" id="btnFaculty" class="h4">
                                                                    <%--<asp:Literal ID="ltrlFaculty" runat="server"></asp:Literal>--%>                                                                       
                                                                </a>
                                                                <asp:HiddenField runat="server" ID="hfvKFUPMID" />
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End:Tabs--%>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

    <!-- End: page content -->
    <script>
        function clickDepartment(type, value) {
            document.getElementById("<%= hfvDepartmentType.ClientID%>").setAttribute('Value', type);
            document.getElementById("<%= hfvDepartmentCode.ClientID%>").setAttribute('Value', value);
            document.getElementById("<%= btnDepartment.ClientID%>").click();
        };
        function changeTab(currentTab, newTab) {
            $('#pills a[href="#' + currentTab + '"]').parent().removeClass('active')
            $('#' + currentTab).removeClass('in active');

            $('#pills a[href="#' + newTab + '"]').parent().addClass('active');
            $('#' + newTab).addClass('in active');
            $('#hfvPill').attr('Value', '#' + newTab);

        };        

        $(function () {
            $('#pills > li:first-child').addClass('active');
            $('#results-tab > div:first-child').addClass('in active');
            $('#hfvPill').attr('Value', $('#pills>li.active>a').attr('href'));
        });
        $('ul.nav a').on('shown.bs.tab', function (e) {
            $('#hfvPill').attr('Value', $('#pills>li.active>a').attr('href'));
        });

        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_endRequest(function () {
            var pill_href = $('#hfvPill').attr('Value');
            $('#pills a[href="' + pill_href + '"]').parent().addClass('active');
            $(pill_href).addClass('in active');
            $('ul.nav a').on('shown.bs.tab', function (e) {
                $('#hfvPill').attr('Value', $('#pills>li.active>a').attr('href'));
                if ($('#mychart').children().length > 0)
                    $('#mychart').highcharts().reflow();
            });
            if ($('#mychart').children().length > 0)
                $('#mychart').highcharts().reflow();

        });
    </script>
</asp:Content>
