<%@ Page Title="Article Body" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ArticleBody.aspx.cs" Inherits="developers_task.ArticleBody" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="articleBody" runat="server" ItemType="developers_task.Models.Article" SelectMethod ="GetArticles" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ArticleTitle %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="<%#:Item.ImagePath %>" style="border:solid; height:300px" alt="<%#:Item.ArticleTitle %>"/>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br /><%#:Item.MainBody %>
                        <br />
                        <span><b>Date published:</b>&nbsp;<%#:Item.DatePublished %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>