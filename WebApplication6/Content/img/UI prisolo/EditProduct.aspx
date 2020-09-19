<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Prisolo_Updated.EditProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prisolo</title>
    <!-- Css Styles -->
    <link rel="stylesheet" href="/Content/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/font-awesome.min.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .nav-item {
            background: 0;
        }

        .inner_today_views {
            background: #fff;
            box-shadow: 0px 2px 7px 0px #eee;
            padding: 20px;
            transition: 0.3s ease;
        }


            .inner_today_views h1 {
                font-size: 50px;
                font-weight: bold;
            }

            .inner_today_views p {
                font-size: 20px;
            }

        .views_icon i.fa {
            font-size: 90px;
            position: absolute;
            top: 20px;
            right: 10%;
            transition: 0.5s ease;
            color: rgba(0,0,0,.5);
        }

        .inner_today_views:hover .views_icon i.fa {
            font-size: 95px;
            color: #000;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark p-0">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <img src="../../Content/img/logo.png" width="150" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="Admin.aspx">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="VendorList.aspx">Vendor</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="UserList.aspx">User</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Products.aspx">Auctions</a>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="nav-link">Logout</asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main style="margin-top: 50px;">
            <div class="container">
                <div class="text-center">
                    <h2>Edit Product</h2>
                </div>
                <div class="EditformFields">
                    <div class="row m-0">
                        <div class="col-md-4 mb-3">
                            <label>Name</label>
                            <asp:TextBox ID="NameEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Email</label>
                            <asp:TextBox ID="EmailEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Country</label>
                            <asp:TextBox ID="CountryEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>City</label>
                            <asp:TextBox ID="CityEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Area</label>
                            <asp:TextBox ID="AreaEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Number</label>
                            <asp:TextBox ID="NumberEditTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            <asp:CheckBox ID="AuctionForBid" runat="server" />
                            <label for="AuctionForBid">This auction is available for bid?</label>
                        </div>
                    </div>
                    <div class="row m-0">
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="BackImageEdit" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="FileUpload1" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="FileUpload2" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="FileUpload3" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="FileUpload4" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <div class="custom-file">
                                    <asp:FileUpload ID="FileUpload5" class="custom-file-input" aria-describedby="inputGroupFileAddon01" runat="server" />
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Select Category</label>
                            <asp:DropDownList ID="CategoryDropDown" CssClass="form-control" runat="server">
                                <asp:ListItem Value="All" Selected="True">All</asp:ListItem>
                                <asp:ListItem Value="Accessories">Accessories</asp:ListItem>
                                <asp:ListItem Value="Antiques">Antiques</asp:ListItem>
                                <asp:ListItem Value="Art and Crafts">Art and Crafts</asp:ListItem>
                                <asp:ListItem Value="Baby and Kids">Baby and Kids</asp:ListItem>
                                <asp:ListItem Value="Bags">Bags</asp:ListItem>
                                <asp:ListItem Value="Boats and Marines">Boats and Marines</asp:ListItem>
                                <asp:ListItem Value="Books">Books</asp:ListItem>
                                <asp:ListItem Value="Business Equipment">Business Equipment</asp:ListItem>
                                <asp:ListItem Value="Campers and RVs">Campers and RVs</asp:ListItem>
                                <asp:ListItem Value="Cars and Accessories">Cars and Accessories</asp:ListItem>
                                <asp:ListItem Value="CDs and DVDs">CDs and DVDs</asp:ListItem>
                                <asp:ListItem Value="Clothing">Clothing</asp:ListItem>
                                <asp:ListItem Value="Collectible Toys">Collectible Toys</asp:ListItem>
                                <asp:ListItem Value="Computers and Accessories">Computers and Accessories</asp:ListItem>
                                <asp:ListItem Value="Costumes">Costumes</asp:ListItem>
                                <asp:ListItem Value="Coupons">Coupons</asp:ListItem>
                                <asp:ListItem Value="Electronics">Electronics</asp:ListItem>
                                <asp:ListItem Value="Exercise">Exercise</asp:ListItem>
                                <asp:ListItem Value="Fashion">Fashion</asp:ListItem>
                                <asp:ListItem Value="Food and Beverages">Food and Beverages</asp:ListItem>
                                <asp:ListItem Value="Free and Donation">Free and Donation</asp:ListItem>
                                <asp:ListItem Value="Furniture">Furniture</asp:ListItem>
                                <asp:ListItem Value="Gadgets">Gadgets</asp:ListItem>
                                <asp:ListItem Value="Games">Games</asp:ListItem>
                                <asp:ListItem Value="Halloween">Halloween</asp:ListItem>
                                <asp:ListItem Value="Hobbies">Hobbies</asp:ListItem>
                                <asp:ListItem Value="Home Decor">Home Decor</asp:ListItem>
                                <asp:ListItem Value="Home and Garden">Home and Garden</asp:ListItem>
                                <asp:ListItem Value="Household Appliances">Household Appliances</asp:ListItem>
                                <asp:ListItem Value="Jewelry">Jewelry</asp:ListItem>
                                <asp:ListItem Value="Jobs">Jobs</asp:ListItem>
                                <asp:ListItem Value="Kids Toys">Kids Toys</asp:ListItem>
                                <asp:ListItem Value="Makeup and Beauty">Makeup and Beauty</asp:ListItem>
                                <asp:ListItem Value="Motorcycles and Accessories">Motorcycles and Accessories</asp:ListItem>
                                <asp:ListItem Value="Musical Equipment">Musical Equipment</asp:ListItem>
                                <asp:ListItem Value="Outdoor and Camping">Outdoor and Camping</asp:ListItem>
                                <asp:ListItem Value="Pet Accessories">Pet Accessories</asp:ListItem>
                                <asp:ListItem Value="Tickets">Tickets</asp:ListItem>
                                <asp:ListItem Value="Tools">Tools</asp:ListItem>
                                <asp:ListItem Value="Phone and Tablets">Phone and Tablets</asp:ListItem>
                                <asp:ListItem Value="Shoes">Shoes</asp:ListItem>
                                <asp:ListItem Value="Sports Equipment">Sports Equipment</asp:ListItem>
                                <asp:ListItem Value="Vehicles">Vehicles</asp:ListItem>
                                <asp:ListItem Value="Video Games">Video Games</asp:ListItem>
                                <asp:ListItem Value="Wallets">Wallets</asp:ListItem>
                                <asp:ListItem Value="Watches">Watches</asp:ListItem>
                                <asp:ListItem Value="Wedding">Wedding</asp:ListItem>
                                <asp:ListItem Value="Others">Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Product Name</label>
                            <asp:TextBox ID="ProductNameEdit" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
</body>
</html>


