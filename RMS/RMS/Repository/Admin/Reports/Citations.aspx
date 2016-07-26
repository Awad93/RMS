<%@ Page Language="C#" MasterPageFile="~/Repository/MasterPage.Master" AutoEventWireup="true" CodeBehind="Citations.aspx.cs" Inherits="RMS.Repository.Admin.Reports.Citations" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Citations</title>
    <script src="http://code.highcharts.com/highcharts.js"></script>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Time Span -->
    <section id="timespan" name="timespan">
        <div class="criteria-item">
            <h4 class="title5-timespan">
                <a data-toggle="collapse" href="#collapseTimeSpan">Timespan</a>
            </h4>
        </div>
        <div id="collapseTimeSpan" class="collapse in">
            <div class="criteria-item">
                <label>
                    <input name="period" id="rbPeriod" type="radio" value="Range Selection" checked="true" runat="server" />
                    <asp:DropDownList ID="ddlTimeSpan" class="timespan-allyears" name="range" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlTimeSpan_SelectedIndexChanged">
                        <asp:ListItem Value="All" Selected="True">All years</asp:ListItem>
                        <asp:ListItem Value="Last5Years">Last 5 years</asp:ListItem>
                        <asp:ListItem Value="LastYear">Last Year only</asp:ListItem>
                    </asp:DropDownList>
                </label>

            </div>
            <div class="criteria-item">
                <p>
                    <label>
                        <input name="period" id="rbPeriodRange" type="radio" value="Year Range" runat="server" />
                        <span>
                            <label for="periodRange">From</label>
                        </span>
                        <asp:DropDownList ID="ddlFromYear" runat="server" CssClass="timespan-allyears">
                        </asp:DropDownList>

                        <span>to</span>

                        <asp:DropDownList ID="ddlToYear" runat="server" CssClass="timespan-allyears">
                        </asp:DropDownList>
                    </label>
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

                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="timespan-allyears" required Enabled="false">
                    </asp:DropDownList>
                </p>
            </div>
        </div>
        <asp:Button Text="Generate" ID="btnGenerate" OnClick="btnGenerate_Click" runat="server" />

        <div class="col-lg-12 text-center bg-danger padding-top-bottom20">
            <asp:Label ID="lblError" runat="server" CssClass="text-danger "></asp:Label>
        </div>
    </section>

    <!-- Chart Update Panel -->
    <section>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnGenerate" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <div id="divResults" runat="server"></div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>

</asp:Content>
