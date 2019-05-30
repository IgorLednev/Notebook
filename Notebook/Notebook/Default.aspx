<!--

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Notebook.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Notebook</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" ItemType="Notebook.Contact"
             SelectMethod="GetContacts" UpdateMethod="EditContact" DeleteMethod="DeleteContact"
             InsertMethod="InsertContact" DataKeyNames="Id">
            <LayoutTemplate>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Имя</th>
                        <th>Организация</th>
                        <th>Телефон</th>
                        <th>Электронный адрес</th>
                        <th></th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server"></tr>
                </table>
            </LayoutTemplate>

            <ItemTemplate>
                <tr>
                    <td><%# Item.Id %></td>
                    <td><%# Item.Name %></td>
                    <td><%# Item.Company %></td>
                    <td><%# Item.Telephone %></td>
                    <td><%# Item.Email %></td>
                    <td>
                        <asp:Button CommandName="Edit" runat="server" Text="Изменить" />
                        <asp:Button CommandName="Delete" runat="server" Text="Удалить" />
                    </td>
                </tr>
            </ItemTemplate>

            <EditItemTemplate>
                <tr>
                    <td><%# Item.Id %></td>
                    <td>
                        <input id="edit_name" runat="server" value="<%# BindItem.Name %>" />
                        <asp:RequiredFieldValidator 
                            ID="EditItem_Validator" 
                            runat="server" 
                            ControlToValidate="edit_name" 
                            ErrorMessage="You must input a name!"
                            ValidationGroup="ValidationGroup_Edit">
                                <text class="validation">*</text>
                        </asp:RequiredFieldValidator>
                    </td>
                    <td><input id="edit_company" runat="server" value="<%# BindItem.Company %>" /></td>
                    <td><input id="edit_telephone" runat="server" value="<%# BindItem.Telephone %>" /></td>
                    <td><input id="edit_email" runat="server" value="<%# BindItem.Email %>" /></td>
                    <td>
                        <asp:Button CommandName="Update" runat="server" Text="Сохранить" ValidationGroup="ValidationGroup_Edit"/>
                        <asp:Button CommandName="Cancel" runat="server" Text="Отмена" />
                    </td>
                </tr>
            </EditItemTemplate>

            <InsertItemTemplate>
                <tr>
                    <td></td>
                    <td>
                        <input id="insert_name" runat="server" value="<%# BindItem.Name %>" />
                        <asp:RequiredFieldValidator 
                            ID="InsertItem_Validator" 
                            runat="server" 
                            ControlToValidate="insert_name" 
                            ErrorMessage="You must input a name!"
                            ValidationGroup="ValidationGroup_Insert">
                                <text class="validation">*</text>
                        </asp:RequiredFieldValidator>
                    </td>
                    <td><input id="insert_company" runat="server" value="<%# BindItem.Company %>" /></td>
                    <td><input id="insert_telephone" runat="server" value="<%# BindItem.Telephone %>" /></td>
                    <td><input id="insert_email" runat="server" value="<%# BindItem.Email %>" /></td>
                    <td>
                        <asp:Button ID="Button1" 
                            CommandName="Insert" 
                            runat="server" 
                            Text="Вставить" 
                            ValidationGroup="ValidationGroup_Insert"/>
                    </td>
                </tr>
            </InsertItemTemplate>

            
        </asp:ListView>
    </form>

    <style>
        th, td { padding: 8px; }
        th { background: #28a4fa; color: white; font-weight: bold; }
        tr:nth-of-type(even) { background: #eee; }
        tr:nth-of-type(odd) { background: #fffbd6; }
        .validation { color:red }
    </style>
</body>
</html>

-->