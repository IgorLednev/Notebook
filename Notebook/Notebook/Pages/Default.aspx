<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Notebook.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Notebook</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class ="container">
        <div class="py-5 text-center">
            <h1>Записная книжка</h1>
            <p class="lead">Это тестовое задание для компании ФБ-Консалт. В приложении применяется ASP .Net, Entity Framework, Bootstrap. Имена контактов валидируются (не должны быть пустыми)</p>
         </div>
        <div class="row">
        <div class="col">
            <form id="form1" runat="server">
                <asp:ListView 
                    ID="ListView1" 
                    runat="server" 
                    ItemType="Notebook.Contact"
                    SelectMethod="GetContacts" 
                    UpdateMethod="EditContact" 
                    DeleteMethod="DeleteContact"
                    InsertMethod="InsertContact" 
                    DataKeyNames="Id">
                    <LayoutTemplate>
                        <table class="table table-striped table-bordered table-hover">
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
                                <div class="btn-group-vertical">
                                    <asp:Button 
                                        Cssclass="btn btn-primary"
                                        CommandName="Edit" 
                                        runat="server" 
                                        Text="Изменить" />
                                    <asp:Button 
                                        Cssclass="btn btn-danger"
                                        CommandName="Delete" 
                                        runat="server" 
                                        Text="Удалить" />
                                </div>
                            </td>
                        </tr>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <tr>
                            <td><%# Item.Id %></td>
                            <td>
                                <input 
                                    id="edit_name" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Name %>" />
                                <asp:RequiredFieldValidator 
                                    Cssclass="text-danger"
                                    ID="EditItem_Validator" 
                                    runat="server" 
                                    ControlToValidate="edit_name" 
                                    ErrorMessage="You must input a name!"
                                    ValidationGroup="ValidationGroup_Edit">
                                        Name is required
                                </asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <input 
                                    id="edit_company" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Company %>" />
                            </td>
                            <td>
                                <input 
                                    id="edit_telephone" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Telephone %>" />
                            </td>
                            <td>
                                <input 
                                    id="edit_email" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Email %>" />
                            </td>
                            <td>
                                <div class="btn-group-vertical">
                                    <asp:Button 
                                        Cssclass="btn btn-success"
                                        CommandName="Update" 
                                        runat="server" 
                                        Text="Сохранить" 
                                        ValidationGroup="ValidationGroup_Edit"/>
                                    <asp:Button 
                                        Cssclass="btn btn-warning"
                                        CommandName="Cancel" 
                                        runat="server" 
                                        Text="Отменить" />
                                </div>
                            </td>
                        </tr>
                    </EditItemTemplate>

                    <InsertItemTemplate>
                        <tr>
                            <td></td>
                            <td>
                                <input 
                                    id="insert_name" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Name %>" />
                                <asp:RequiredFieldValidator 
                                    Cssclass="text-danger"
                                    ID="InsertItem_Validator" 
                                    runat="server" 
                                    ControlToValidate="insert_name" 
                                    ErrorMessage="You must input a name!"
                                    ValidationGroup="ValidationGroup_Insert">
                                        Name is required
                                </asp:RequiredFieldValidator>
                            </td>
                            <td><input 
                                id="insert_company" 
                                class="form-control" 
                                runat="server" 
                                value="<%# BindItem.Company %>" />
                            </td>
                            <td>
                                <input 
                                    id="insert_telephone" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Telephone %>" />
                            </td>
                            <td>
                                <input 
                                    id="insert_email" 
                                    class="form-control" 
                                    runat="server" 
                                    value="<%# BindItem.Email %>" />
                            </td>
                            <td>
                                <div class="btn-group-vertical">
                                    <asp:Button ID="Button1"
                                        Cssclass="btn btn-primary"
                                        CommandName="Insert" 
                                        runat="server" 
                                        Text="Вставить" 
                                        ValidationGroup="ValidationGroup_Insert"/>
                                </div>
                            </td>
                        </tr>
                    </InsertItemTemplate>
                </asp:ListView>
            </form>
        </div>
        </div>
    </div>

    <style>
        .validation { color:red }
    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

