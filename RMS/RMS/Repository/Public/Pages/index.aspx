<%@ Page Language="C#" MasterPageFile="~/Repository/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RMS.Repository.Public.Pages.index" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
    <link href="/Content/main.css" rel="stylesheet" type="text/css" />
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

    <!-- Sidebar -->
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="col-md-3 col-lg-2">
                <asp:Button runat="server" ID="btnDepartment" Style="display: none" OnClick="btnDepartment_Click" />
                <asp:HiddenField runat="server" ID="hfvDepartmentType" />
                <asp:HiddenField runat="server" ID="hfvDepartmentCode" />
                <asp:Repeater ID="repeaterColleges" runat="server" OnItemDataBound="repeaterColleges_ItemDataBound">
                    <HeaderTemplate>
                        <div id="sidebar-list" class="panel">
                            <ul id="listCollege" class="list-unstyled">
                                <li class="text-center"><a href="main2.html">Home</a></li>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <span class="panel" style="border: none">
                            <li onclick="clickDepartment('COLLEGE', '<%#Eval("Department_Code")%>')"
                                data-toggle="collapse" href="#deptID<%#Eval("Department_ID")%>" data-parent="#listCollege">
                                <a>
                                    <asp:Literal ID="ltrlCollege" runat="server"></asp:Literal></a>
                            </li>
                            <ul id="deptID<%#Eval("Department_ID")%>" class="collapse list-unstyled">
                                <asp:Repeater ID="repeaterDepartments" runat="server" OnItemDataBound="repeaterDepartments_ItemDataBound">
                                    <ItemTemplate>
                                        <span class="panel">
                                            <li onclick="clickDepartment('DEPARTMENT', '<%#Eval("Department_Code")%>')"
                                                data-toggle="collapse" href="#deptFaclutyID<%#Eval("Department_ID")%>" data-parent="#deptID<%#Eval("Department_ID")%>">
                                                <a>
                                                    <asp:Literal ID="ltrlDepartment" runat="server"></asp:Literal></a>
                                            </li>
                                            <ul id="deptFaclutyID<%#Eval("Department_ID")%>" class="collapse list-unstyled">
                                                <asp:Repeater ID="repeaterFaculties" runat="server" OnItemDataBound="repeaterFaculties_ItemDataBound">
                                                    <ItemTemplate>
                                                        <li onclick="clickDepartment('FACULTY', '<%#Eval("KFUPMID")%>')">
                                                            <a>
                                                                <asp:Literal ID="ltrlFaculty" runat="server"></asp:Literal></a>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </span>
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
        </div>
        <!-- End: Sidebar -->

        <!-- Page Content -->
        <asp:UpdatePanel ID="contentPanel" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnDepartment" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <div class="row-fluid">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 panel">
                        <a href="admin_page">
                            <div class="card green summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-inbox fa-4x"></i>
                                    <div class="content">
                                        <div class="title">
                                            <asp:Literal ID="ISIPublication" runat="server"></asp:Literal>
                                        </div>
                                        <div class="sub-title">ISI Publication</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 panel">
                        <a href="admin_page">
                            <div class="card green summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-comments fa-4x"></i>
                                    <div class="content">
                                        <div class="title">
                                            <asp:Literal ID="NonISIPublication" runat="server"></asp:Literal>
                                        </div>
                                        <div class="sub-title">NonISI Publication</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 panel">
                        <a href="admin_page">
                            <div class="card green summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-tags fa-4x"></i>
                                    <div class="content">
                                        <div class="title">
                                            <asp:Literal ID="book" runat="server"></asp:Literal>
                                        </div>
                                        <div class="sub-title">Book</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col-lg-offset-1 panel">
                    <a href="admin_page">
                        <div class="card green summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-inbox fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="patent" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Patent</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col-lg-offset-1 panel">
                    <a href="admin_page">
                        <div class="card green summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-share-alt fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="conference" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Conference</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                </div>
                <div class="row-fluid" style="border-top: 1px solid #eeeeee;">
                    <div class="col-lg-9" style="border-right: 1px solid #eeeeee;">
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
                                    <th rowspan="2">Graduate students</th>
                                </tr>
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
                                                <asp:Literal ID="ltrlGraduateStudents" runat="server"></asp:Literal></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <!-- End: Page Content -->

    <div class="col-lg-12 text-center bg-danger padding-top-bottom20">
        <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
    </div>


    <script>
        function clickDepartment(type, value) {
            document.getElementById("<%=hfvDepartmentType.ClientID%>").setAttribute('Value', type);
            document.getElementById("<%=hfvDepartmentCode.ClientID%>").setAttribute('Value', value);
            document.getElementById("<%=btnDepartment.ClientID%>").click();
        };
    </script>
</asp:Content>
