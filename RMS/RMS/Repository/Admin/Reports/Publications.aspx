<%@ Page Title="" Language="C#" MasterPageFile="~/Repository/MasterPage.Master" AutoEventWireup="true"  CodeBehind="Publications.aspx.cs" Inherits="RMS.Repository.Publications" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlTimeSpan" EventName="SelectedIndexChanged" />
        </Triggers>
        <ContentTemplate>
            <!-- TIME SPAN -->
            <section id="timespan" name="timespan">
                <div class="criteria-item">
                    <h4 class="title5-timespan">
                        <a data-toggle="collapse" href="#collapseTimeSpan">Timespan</a>
                    </h4>
                </div>
                <div id="collapseTimeSpan" class="collapse">
                    <div class="criteria-item">
                        <label>
                            <input name="period" id="rbPeriod" type="radio" value="Range Selection" checked="true" runat="server">
                            <asp:DropDownList ID="ddlTimeSpan" class="timespan-allyears" name="range" runat="server" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlTimeSpan_SelectedIndexChanged">
                                <asp:ListItem Value="All" Selected="True">All years</asp:ListItem>
                                <asp:ListItem Value="Last5Years">Last 5 years</asp:ListItem>
                                <asp:ListItem Value="LastYear">Last Year only</asp:ListItem>
                            </asp:DropDownList>
                        </label>
                        &nbsp;&nbsp;&nbsp;
                    </div>
                    <div class="criteria-item">
                        <p>
                            <label>
                                <input name="period" id="rbPeriodRange" type="radio" value="Year Range" runat="server">
                                <span>
                                    <label for="periodRange">From</label></span>
                                <asp:DropDownList ID="ddlFromYear" runat="server" CssClass="timespan-allyears">
                                </asp:DropDownList>

                                <span>to</span>

                                <asp:DropDownList ID="ddlToYear" runat="server" CssClass="timespan-allyears">
                                </asp:DropDownList>
                            </label>
                            &nbsp;&nbsp;&nbsp;
                        </p>
                    </div>
                </div>
            </section>

            <!-- MORE -->
            <section id="more" name="more">
                <div class="criteria-item">
                    <h4 class="title5-timespan">
                        <a data-toggle="collapse" href="#collapseMore">More</a>
                    </h4>
                </div>
                <div id="collapseMore" class="collapse in">
                    <div class="criteria-item">
                        <p>
                            <span>
                                <label for="ddlCollege">College</label>
                            </span>
                            <asp:DropDownList ID="ddlCollege" runat="server" CssClass="timespan-allyears" AutoPostBack="true" required
                                OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged">
                            </asp:DropDownList>
                        </p>
                    </div>

                    <div class="criteria-item">
                        <p>
                            <span>
                                <label for="ddlDepartment">Department</label>
                            </span>

                            <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="timespan-allyears" required Enabled="false" AutoPostBack="true">
                            </asp:DropDownList>
                        </p>
                    </div>

                    <div class="criteria-item">
                        <p style="display: inline-block;">
                            <span>
                                <label style="display: table-caption;" for="ddlDepartment">Class</label>
                            </span>
                            <asp:RadioButtonList ID="rblClass" runat="server" RepeatDirection="Horizontal" CellPadding="5" Style="display: inline; vertical-align: middle"
                                OnSelectedIndexChanged="rblClass_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="ISI" Value="ISI" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Non-ISI" Value="NonISI"></asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                    </div>

                    <div class="criteria-item show" runat="server" id="divType_ISI">
                        <p style="display: inline-block;">
                            <span>
                                <label style="display: table-caption;" for="ddlDepartment">Type</label>
                            </span>
                            <asp:RadioButtonList ID="rblType_ISI" runat="server" RepeatDirection="Horizontal" CellPadding="3" RepeatColumns="4" Style="display: inline; vertical-align: middle">
                                <asp:ListItem Text="All" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Articles / Reviews" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Conference / Proceedings" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                    </div>

                    <div class="criteria-item hide" runat="server" id="divType_NonISI">
                        <p style="display: inline-block;">
                            <span>
                                <label style="display: table-caption;" for="ddlDepartment">Type</label>
                            </span>
                            <asp:RadioButtonList ID="rblType_NonISI" runat="server" RepeatDirection="Horizontal" CellPadding="5" Style="display: inline; vertical-align: middle">
                                <asp:ListItem Text="All" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Approved" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                    </div>
                </fieldset>
            </section>

            <div class="col-lg-4 ">
            </div>
            <div class="col-lg-4 text-center">
                <asp:Button ID="btnGenerate" runat="server" Text="Generate Report" CssClass="btn-primary btn-lg btn-block" OnClick="btnGenerate_Click" />
            </div>
            <div class="col-lg-4 ">
            </div>
            <br />
            <br />


            <div class="col-lg-12 text-center alert-danger padding-top-bottom20 collapse">
                <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
            </div>

            <div class="col-lg-12">
                <hr class="hr-separator" />
            </div>

            <div id="divResults" runat="server" style="display: none;">

                <div class="container">
                    <h2>SUMMARY
                    </h2>
                    <div id="container_highchart" style="width: 660px; height: 400px; margin-left: 28%;"></div>
                </div>

                <div style="padding-top: 50px;">
                    <p>
                        <br />
                    </p>
                </div>

                <div class="container">
                    <h2>RESULTS
                    </h2>
                    <h3 id="h3Results1" runat="server"></h3>
                    <h4 id="h4Results2" runat="server"></h4>
                    <!-- ISI ARTICLES -->
                    <asp:Repeater ID="rptISIArticles" runat="server" OnItemDataBound="rptISIArticles_ItemDataBound">
                        <HeaderTemplate>
                            <a data-toggle="collapse" data-target="#journals" aria-expanded="false" aria-controls="journals">ISI Journal Publications
                                    <asp:Label class="label label-default" ID="lblTotalPublications" runat="server"></asp:Label>
                            </a>
                            <ul class="collapse collapse-arrow results-list" id="journals">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Literal ID="ltrlYear" runat="server"></asp:Literal>
                            <!-- THIS is where the Year's link will be created, from code behind -->
                            <li runat="server" id="ISIEntry" data-toggle="collapse" class="list-bordered" aria-expanded="false">
                                <h4 style="color: blue">
                                    <asp:Literal ID="ltrlPaperTitle" runat="server">                                               
                                    </asp:Literal></h4>
                                <h6 style="color: grey">
                                    <asp:Literal ID="ltrlAuthors" runat="server">
                                    </asp:Literal></h6>
                                <h6>
                                    <asp:Literal ID="ltrlWideCategory" runat="server">
                                    </asp:Literal></h6>
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
                    <!-- NON ISI ARTICLES -->
                    <asp:Repeater ID="rptNonISI" runat="server" OnItemDataBound="rptNonISI_ItemDataBound">
                        <HeaderTemplate>
                            <a data-toggle="collapse" data-target="#journals" aria-expanded="false" aria-controls="journals">Non ISI Journal Publications
                                    <asp:Label class="label label-default" ID="lblTotalPublications" runat="server"></asp:Label>
                            </a>
                            <ul class="collapse collapse-arrow results-list" id="journals">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Literal ID="ltrlYear" runat="server"></asp:Literal>
                            <!-- THIS is where the Year's link will be created, from code behind -->
                            <li runat="server" id="NonISIEntry" data-toggle="collapse" class="list-bordered" aria-expanded="false">
                                <h4 style="color: blue">
                                    <asp:Literal ID="ltrlPaperTitle" runat="server">                                               
                                    </asp:Literal></h4>
                                <h6 style="color: grey"><b>Author(s) : </b>
                                    <asp:Literal ID="ltrlAuthors" runat="server">
                                    </asp:Literal></h6>
                                <h6><b>Source : </b>
                                    <asp:Literal ID="ltrlSource" runat="server">
                                    </asp:Literal></h6>
                                <h6><b>Approved : </b>
                                    <asp:Literal ID="ltrlApproved" runat="server">
                                    </asp:Literal></h6>
                                <h6><b>DOI : </b>
                                    <asp:Literal ID="ltrlDOI" runat="server">
                                    </asp:Literal></h6>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                            <asp:Literal runat="server" ID="ltrlDone"></asp:Literal>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

