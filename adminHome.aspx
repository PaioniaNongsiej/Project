﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="MediRecipe.admin" %>

<head>
    <meta charset="utf-8" />
    <title>ADMIN HOMEPAGE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html, body, h1, h2, h3, h4, h5 {
            font-family: "Raleway", sans-serif
        }
    </style>
</head>
<html>
<body class="w3-light-grey">
    <!-- Top container -->
    <div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
        <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
        <span class="w3-bar-item w3-right">Logo</span>
    </div>

    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar">
        <br>
        <div class="w3-container w3-row">
            <div class="w3-col s4">
                <img src="image/logouser.png" class="w3-circle w3-margin-right" style="width:46px">
            </div>
            <div class="w3-col s8 w3-bar">
                <span>Welcome, <strong>Admin</strong></span><br />
                <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
                <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
            </div>
        </div>
        <hr>
        <div class="w3-container">
            <h5>Dashboard</h5>
        </div>
        <div class="w3-bar-block">
            <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
            <a href="#" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Dashoard</a>
         
            <a onclick="myRecipe()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn1">
               <i class="fa fa-bookmark"></i> Recipe <i class="fa fa-caret-down"></i>
            </a>
            <div id="recipe" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">view Recipe</a>
                <a href="#" class="w3-bar-item w3-button">Add Recipe</a>
                <a href="#" class="w3-bar-item w3-button">Edit Recipes</a>
            </div>

            <a onclick="myUser()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
               <i class="fa fa-users fa-fw"></i> Users <i class="fa fa-caret-down"></i>
            </a>
            <div id="user" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Users</a>
            </div>

            <a onclick="myProduct()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn3">
               <i class="fa fa-bullseye fa-fw"></i> Product <i class="fa fa-caret-down"></i>
            </a>
            <div id="product" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Product</a>
                <a href="#" class="w3-bar-item w3-button">Add Product</a>
                <a href="#" class="w3-bar-item w3-button">Edit Products</a>
            </div>
            
            <a onclick="myOrder()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn4">
               <i class="fa fa-diamond fa-fw"></i> Orders <i class="fa fa-caret-down"></i>
            </a>
            <div id="order" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Orders</a>
                <a href="#" class="w3-bar-item w3-button">Orders details</a>
            </div>

            <a onclick="myShipper()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn5">
               <i class="fa fa-bank fa-fw"></i> Shippers <i class="fa fa-caret-down"></i>
            </a>
            <div id="shipper" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Shippers</a>
                <a href="#" class="w3-bar-item w3-button">Add Shipper</a>
                <a href="#" class="w3-bar-item w3-button">Edit/Remove Shipper</a>
            </div>

            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cog fa-fw"></i>  Settings</a><br><br />
        </div>
    </nav>


    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:300px;margin-top:43px;">

        <!-- Header -->
        <header class="w3-container" style="padding-top:22px">
            <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-padding-16">
                    <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Feedbacks</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Views</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>sales</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>2</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Users</h4>
                </div>
            </div>
        </div>

        <div class="w3-panel">
            <div class="w3-row-padding" style="margin:0 -16px">
                <div class="w3-third">
                    <h5>Regions</h5>
                    <img src="image/region.jpg" style="width:100%" alt="Google Regional Map">
                </div>
                <div class="w3-twothird">
                    <h5>Feeds</h5>
                    <table class="w3-table w3-striped w3-white">
                        <tr>
                            <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
                            <td>New record, over 90 views.</td>
                            <td><i>10 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
                            <td>Database error.</td>
                            <td><i>15 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
                            <td>New record, over 40 users.</td>
                            <td><i>17 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
                            <td>New feedback</td>
                            <td><i>25 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
                            <td>Check transactions.</td>
                            <td><i>28 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
                            <td>CPU overload.</td>
                            <td><i>35 mins</i></td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-eye w3-text-green w3-large"></i></td>
                            <td>New recipe</td>
                            <td><i>39 mins</i></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <div class="w3-container">
            <h5>General Stats</h5>
            <p>New Visitors</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-green" style="width:25%">+25%</div>
            </div>

            <p>New Users</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-orange" style="width:50%">50%</div>
            </div>

            <p>Bounce Rate</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-red" style="width:75%">75%</div>
            </div>
        </div>
       
        <div class="w3-container">
            <h5>Recent Users</h5>
            <ul class="w3-ul w3-card-4 w3-white">
                <li class="w3-padding-16">
                    <img src="/w3images/avatar2.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                    <span class="w3-xlarge">Mike</span><br>
                </li>
                <li class="w3-padding-16">
                    <img src="/w3images/avatar5.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                    <span class="w3-xlarge">Jill</span><br>
                </li>
                <li class="w3-padding-16">
                    <img src="/w3images/avatar6.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                    <span class="w3-xlarge">Jane</span><br>
                </li>
            </ul>
        </div>
        <hr>

        <div class="w3-container">
            <h5>Recent Feedbacks</h5>
            <div class="w3-row">
                <div class="w3-col m2 text-center">
                    <img class="w3-circle" src="/w3images/avatar3.png" style="width:96px;height:96px">
                </div>
                <div class="w3-col m10 w3-container">
                    <h4>John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12 PM</span></h4>
                    <p>Keep up the GREAT work! I am cheering for you!! </p><br>
                </div>
            </div>

            <div class="w3-row">
                <div class="w3-col m2 text-center">
                    <img class="w3-circle" src="/w3images/avatar1.png" style="width:96px;height:96px">
                </div>
                <div class="w3-col m10 w3-container">
                    <h4>Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15 PM</span></h4>
                    <p>great recipes</p><br>
                </div>
            </div>
        </div>
        <br>
        <div class="w3-container w3-dark-grey w3-padding-32">
            <div class="w3-row">
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-green">Demographic</h5>
                    <p>Language</p>
                    <p>Country</p>
                    <p>City</p>
                </div>
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-red">System</h5>
                    <p>Browser</p>
                    <p>OS</p>
                    <p>More</p>
                </div>
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-orange">Target</h5>
                    <p>Users</p>
                    <p>Active</p>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="w3-container w3-padding-16 w3-light-grey">
            <h4>FOOTER</h4>
            <p>Powered by <a href="" target="_blank">MediRecipe</a></p>
        </footer>

        <!-- End page content -->
    </div>

    <script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

        // Accordion 
        function myAccFunc() {
            var x = document.getElementById("demoAcc");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        function myRecipe() {
            var x = document.getElementById("recipe");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myUser() {
            var x = document.getElementById("user");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myProduct() {
            var x = document.getElementById("product");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myOrder() {
            var x = document.getElementById("order");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myShipper() {
            var x = document.getElementById("shipper");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        // Click on the "Jeans" link on page load to open the accordion for demo purposes
        document.getElementById("myBtn").click();
        document.getElementById("myBtn1").click();
        document.getElementById("myBtn2").click();
        document.getElementById("myBtn3").click();
        document.getElementById("myBtn4").click();
        document.getElementById("myBtn5").click();
// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
    </script>

</body>
</html>