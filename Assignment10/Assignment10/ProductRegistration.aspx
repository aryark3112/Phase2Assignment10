<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Products</title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            height: 33px;
            width: 161px;
        }
        .auto-style7 {
            height: 27px;
            width: 161px;
        }
        .auto-style8 {
            height: 29px;
            width: 161px;
        }
        .auto-style9 {
            height: 31px;
            width: 161px;
        }
        .auto-style10 {
            height: 30px;
            width: 161px;
        }
        .auto-style12 {
            height: 33px;
            width: 323px;
        }
        .auto-style13 {
            height: 27px;
            width: 323px;
        }
        .auto-style14 {
            height: 29px;
            width: 323px;
        }
        .auto-style15 {
            height: 31px;
            width: 323px;
        }
        .auto-style16 {
            height: 30px;
            width: 323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">
            <div class="col-md-4">Product Registration</div>
        </div>
        <div class="row">
            <div class="col-md-4"><asp:Image runat="server" ID="Image3" ImageUrl="~/Images/p4.jpg"
    Width="259px" Height="150px" CssClass="img fluid" /></div>
        </div>
        <table class="w-100">
            <tr>
                <td class="auto-style6">Product Name</td>
                <td class="auto-style12">
                    <asp:TextBox ID="PrdName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PrdName" ErrorMessage="Please Enter Product Name first" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Category</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="PrdCtg" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PrdCtg" ErrorMessage="Please Enter Category First" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Price</td>
                <td class="auto-style14">
                    <asp:TextBox ID="PrdPrice" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PrdPrice" ErrorMessage="Please Enter Product Price" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PrdPrice" ErrorMessage="Price should be between 10 to 10000" ForeColor="Red" MaximumValue="10000" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Description</td>
                <td class="auto-style15">
                    <asp:TextBox ID="PrdDes" runat="server" Height="84px" Width="290px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PrdDes" ErrorMessage="Please Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Release Date</td>
                <td class="auto-style16">
                    <asp:Calendar ID="PrdRdate" runat="server" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px"></asp:Calendar>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="LblInfo" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
