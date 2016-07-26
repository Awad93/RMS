<%@ Page Language="C#" MasterPageFile="~/Repository/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search_ISIPublication.aspx.cs" Inherits="RMS.Profile.Forms.Search_ISIPublication" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Search ISI Publictions</title>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="col-lg-12 form-group">
                <div class="form-inline">
                    <input id="txtSearch" type="text" placeholder="Search by Title" class="form-control" runat="server" />
                    <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click" />
                </div>
                <div class="form-inline">
                    <asp:RadioButtonList ID="rbList" RepeatDirection="Horizontal" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rbList_SelectedIndexChanged">
                        <asp:ListItem Text="Title" Value="title" Selected="True" />
                        <asp:ListItem Text="WOS Number" Value="wos" />
                        <asp:ListItem Text="Year" Value="year" />
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <asp:UpdatePanel ID="pnlSearchResult" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />                
            </Triggers>

            <ContentTemplate>
                <div id="divSearchResult" class="row-fluid">
                    <table class="table table-striped">
                        <asp:Repeater ID="rptSearchResult" runat="server" OnItemDataBound="rptSearchResult_ItemDataBound">
                            <HeaderTemplate>
                                <thead>
                                    <tr>
                                        <td>#</td>
                                        <td>Title</td>
                                        <td>Authors</td>
                                        <td>Source</td>
                                        <td>Year</td>
                                    </tr>
                                </thead>
                                <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="cbPublication" runat="server" />
                                        <asp:HiddenField ID="hfWosNumber" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></td>
                                    <td>
                                        <asp:Literal ID="ltrlAuthors" runat="server"></asp:Literal></td>
                                    <td>
                                        <asp:Literal ID="ltrlSource" runat="server"></asp:Literal></td>
                                    <td>
                                        <asp:Literal ID="ltrlYear" runat="server"></asp:Literal></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                            </FooterTemplate>
                        </asp:Repeater>
                    </table>
                    <asp:Button ID="btnAdd" Text="Add" runat="server" OnClick="btnAdd_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
