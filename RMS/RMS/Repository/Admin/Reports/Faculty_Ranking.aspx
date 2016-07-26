<%@ Page Language="C#" MasterPageFile="~/Repository/MasterPage.Master" AutoEventWireup="true" CodeBehind="Faculty_Ranking.aspx.cs" Inherits="RMS.Repository.Faculty_Ranking" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Faculty Ranking</title>
    <script src="http://code.highcharts.com/highcharts.js"></script>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
    <section id="timespan" name="timespan">
        <div class="criteria-item">
            <h4 class="title5-timespan">
                <a data-toggle="collapse" href="#collapseTimeSpan">Timespan</a>
            </h4>
        </div>
        <div id="collapseTimeSpan" class="collapse in">
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

            <div class="criteria-item">
                <p>
                    <span>
                        <label>Type</label><br />
                        <input name="type" id="rbPublication" type="radio" value="Publication" checked="true" runat="server">Publication<br />
                        <input name="type" id="rbCitation" type="radio" value="Citation" runat="server">Citation

                    </span>
                </p>
            </div>

            <div class="criteria-item">
                <p style="display: inline-block;">
                    &nbsp;
                </p>
            </div>
    </section>

    <section>
        <asp:Button Text="Generate" ID="btnGenerate" OnClick="btnGenerate_Click" runat="server" />
    </section>

    <section>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnGenerate" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <div id="divResults" runat="server" class="container">
                    <h2>RESULTS
                    </h2>
                    <table class="table table-striped table-bordered">
                        <asp:Literal runat="server" ID="ltrlTableHeader"></asp:Literal>
                        <asp:Repeater ID="rptFacultyRanking" runat="server" OnItemDataBound="rptFacultyRanking_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal runat="server" ID="ltrlKFUPMID"></asp:Literal></td>
                                    <td>
                                        <asp:Literal runat="server" ID="ltrlFacultyName"></asp:Literal></td>
                                    <asp:Literal runat="server" ID="ltrlYearCols"></asp:Literal>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>
</asp:Content>
