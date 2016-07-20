<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="developers_task.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <h3>Add an Article:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelAddTitle" runat="server">Title:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddArticleTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Article name required." ControlToValidate="AddArticleTitle" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddBody" runat="server">Body:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddMainBody" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Body required." ControlToValidate="AddMainBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddDatePublished" runat="server">Date Published:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddDatePublished" runat="server" placeholder="ex: 23/03/2015"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Date Published required." ControlToValidate="AddDatePublished" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddImageLink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image Link required." ControlToValidate="AddMainBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddArticleButton" runat="server" Text="Add Article" OnClick="AddArticleButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Remove Article:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveArticle" runat="server">Article:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveArticle" runat="server" ItemType="developers_task.Models.Article" 
                    SelectMethod="GetArticles" AppendDataBoundItems="true" 
                    DataTextField="ArticleTitle" DataValueField="ArticleID" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveArticleButton" runat="server" Text="Remove Article" OnClick="RemoveArticleButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>



    <p></p>
    <h3>Edit Article:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelEditArticle" runat="server">Article:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownEditArticle" runat="server" ItemType="developers_task.Models.Article" 
                    SelectMethod="GetArticles" AppendDataBoundItems="true" 
                    DataTextField="ArticleTitle" DataValueField="ArticleID" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="EditTitle" runat="server">Title:</asp:Label></td>
            <td>
                <asp:TextBox ID="EditArticleTitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="EditBody" runat="server">Body:</asp:Label></td>
            <td>
                <asp:TextBox ID="EditMainBody" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="EditDate" runat="server">Date Published:</asp:Label></td>
            <td>
                <asp:TextBox ID="EditDatePublished" runat="server" placeholder="ex: 15/03/2013"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="EditImage" runat="server">Image Link:</asp:Label></td>
            <td>
                <asp:TextBox ID="EditImageLink" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="EditArticleButton" runat="server" Text="Edit Article" OnClick="EditArticleButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelEditStatus" runat="server" Text=""></asp:Label>
</asp:Content>