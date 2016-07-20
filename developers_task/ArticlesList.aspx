<%@ Page Title="ArticlesList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArticlesList.aspx.cs" Inherits="developers_task.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="ArticlesList" runat="server" 
                DataKeyNames="ArticleID" GroupItemCount="4"
                ItemType="developers_task.Models.Article" SelectMethod="GetArticles">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="ArticleBody.aspx?ArticleID=<%#:Item.ArticleID%>">
                                        <img src="<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ArticleBody.aspx?articleID=<%#:Item.ArticleID%>">
                                        <span>
                                            <%#:Item.ArticleTitle%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Date published: </b><%#:Item.DatePublished%>
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView> 
        </div>
    </section>
</asp:Content>