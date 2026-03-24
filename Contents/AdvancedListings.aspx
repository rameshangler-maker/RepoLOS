<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvancedListings.aspx.cs"
    Inherits="Contents_AdvancedListings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width = device-width" />
    <meta name="format-detection" content="telephone=no" />
    <title>Treb Details</title>
    <link href="../CSS/AppleListings.css" rel="stylesheet" type="text/css" />
    <link href="../Images/favicon.ico" rel="shortcut icon" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="jqt" class="portrait" style="color: #000000 !important;">
        <div id="forms" class="current" style="color: #000000 !important;">
            <div class="scroll" id="dvimgmain" runat="server" style="color: #000000 !important;">
                <ul class="edit rounded" id="liimgmain" visible="false" runat="server">
                    <li>
                        <img width="280" height="210" alt="image description" id="imgmain" runat="server"
                            visible="false" /></li>
                </ul>
                <ul class="edit rounded">
                    <li><b><span>Price:</span> <span>
                        <asp:Label ID="lblPrice" runat="server"></asp:Label></span> </b></li>
                    <li><span>Status:</span> <span>
                        <asp:Label ID="lblStatus" runat="server"></asp:Label></span> </li>
                    <li><span>MLS:</span> <span>
                        <asp:Label ID="lblMLS" runat="server"></asp:Label></span> </li>
                    <li id="liPropertyType" runat="server" visible="false"><span>Property Type:</span> <span>
                        <asp:Label ID="lblPropertyType" runat="server"></asp:Label></span> </li>
                    <li id="liCategory" runat="server" visible="false"><span>Category:</span> <span>
                        <asp:Label ID="lblCategory" runat="server"></asp:Label></span> </li>
                    <li id="liSubcategory" runat="server" visible="false"><span>Sub-category:</span> <span>
                        <asp:Label ID="lblSubCategory" runat="server"></asp:Label></span></li>
                    <li id="liHouseStyle" runat="server" visible="false"><span>House Style:</span> <span>
                        <asp:Label ID="lblHouseStyle" runat="server"></asp:Label></span></li>
                    <li id="liAge" runat="server" visible="false"><span>Age:</span> <span>
                        <asp:Label ID="lblAge" runat="server"></asp:Label></span></li>
                    <li id="liBedrooms" runat="server" visible="false"><span>Bedrooms:</span> <span>
                        <asp:Label ID="lblBedrooms" runat="server"></asp:Label></span></li>
                    <li id="liBathrooms" runat="server" visible="false"><span>Bathrooms:</span> <span>
                        <asp:Label ID="lblBathrooms" runat="server"></asp:Label></span></li>
                    <li id="liFireplace" runat="server" visible="false"><span>Fireplace:</span> <span>
                        <asp:Label ID="lblFireplace" runat="server"></asp:Label></span></li>
                    <li id="liPool" runat="server" visible="false"><span>Pool:</span> <span>
                        <asp:Label ID="lblPool" runat="server"></asp:Label></span></li>
                    <li id="liWaterfront" runat="server" visible="false"><span>Waterfront:</span> <span>
                        <asp:Label ID="lblWaterfront" runat="server"></asp:Label></span></li>
                    <li id="liWorkshop" runat="server" visible="false"><span>Workshop:</span> <span>
                        <asp:Label ID="lblWorkshop" runat="server"></asp:Label></span></li>
                    <li id="liHouseSize" runat="server" visible="false"><span>House Size:</span> <span>
                        <asp:Label ID="lblHousesize" runat="server"></asp:Label></span> </li>
                </ul>
                <div id="dvFeatures" visible="false" runat="server">
                    <b style="padding: 10px;">Features</b>
                    <ul class="edit rounded">
                        <li>
                            <asp:Label ID="lblFeatures" runat="server" Text="Label"></asp:Label>
                        </li>
                    </ul>
                </div>
                <div id="dvOtherDescription" visible="false" runat="server">
                    <b style="padding: 10px;">Other Description</b>
                    <ul class="edit rounded">
                        <li>
                            <asp:Label ID="lblOtherDescription" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </div>
                <ul class="edit rounded" id="ulImages" visible="false" runat="server">
                    <li id="liimg1" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img1" runat="server" visible="false" /></li>
                    <li id="liimg2" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img2" runat="server" visible="false" /></li>
                    <li id="liimg3" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img3" runat="server" visible="false" /></li>
                    <li id="liimg4" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img4" runat="server" visible="false" /></li>
                    <li id="liimg5" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img5" runat="server" visible="false" /></li>
                    <li id="liimg6" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img6" runat="server" visible="false" /></li>
                    <li id="liimg7" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img7" runat="server" visible="false" /></li>
                    <li id="liimg8" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img8" runat="server" visible="false" /></li>
                    <li id="liimg9" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img9" runat="server" visible="false" /></li>
                    <li id="liimg10" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img10" runat="server" visible="false" /></li>
                </ul>
            </div>
        </div>
    </div>
    </form>
    <%--<form id="form1" runat="server">
    <div id="jqt" class="portrait" style="color: #000000 !important;">
        <div id="forms" class="current" style="color: #000000 !important;">
            <div class="scroll" id="dvimgmain" runat="server" style="color: #000000 !important;">
                <ul class="edit rounded">
                    <li id="liimgmain" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="imgmain" runat="server"
                            visible="false" /></li>
                    <li><b><span>Price:</span> <span>
                        <asp:Label ID="lblPrice" runat="server"></asp:Label></span> </b></li>
                  
                    <li><span>Status:</span> <span>
                        <asp:Label ID="lblStatus" runat="server"></asp:Label></span> </li>
                    <li><span>MLS:</span> <span>
                        <asp:Label ID="lblMLS" runat="server"></asp:Label></span> </li>
                    <li id="liPropertyType" runat="server" visible="false"><span>Property Type:</span> <span>
                        <asp:Label ID="lblPropertyType" runat="server"></asp:Label></span> </li>
                    <li id="liCategory" runat="server" visible="false"><span>Category:</span> <span>
                        <asp:Label ID="lblCategory" runat="server"></asp:Label></span> </li>
                    <li id="liSubcategory" runat="server" visible="false"><span>Sub-category:</span> <span>
                        <asp:Label ID="lblSubCategory" runat="server"></asp:Label></span></li>
                    <li id="liHouseStyle" runat="server" visible="false"><span>House Style:</span> <span>
                        <asp:Label ID="lblHouseStyle" runat="server"></asp:Label></span></li>
                    <li id="liAge" runat="server" visible="false"><span>Age:</span> <span>
                        <asp:Label ID="lblAge" runat="server"></asp:Label></span></li>
                    <li id="liBedrooms" runat="server" visible="false"><span>Bedrooms:</span> <span>
                        <asp:Label ID="lblBedrooms" runat="server"></asp:Label></span></li>
                    <li id="liBathrooms" runat="server" visible="false"><span>Bathrooms:</span> <span>
                        <asp:Label ID="lblBathrooms" runat="server"></asp:Label></span></li>
                    <li id="liFireplace" runat="server" visible="false"><span>Fireplace:</span> <span>
                        <asp:Label ID="lblFireplace" runat="server"></asp:Label></span></li>
                    <li id="liPool" runat="server" visible="false"><span>Pool:</span> <span>
                        <asp:Label ID="lblPool" runat="server"></asp:Label></span></li>
                    <li id="liWaterfront" runat="server" visible="false"><span>Waterfront:</span> <span>
                        <asp:Label ID="lblWaterfront" runat="server"></asp:Label></span></li>
                    <li id="liWorkshop" runat="server" visible="false"><span>Workshop:</span> <span>
                        <asp:Label ID="lblWorkshop" runat="server"></asp:Label></span></li>
                    <li id="liHouseSize" runat="server" visible="false"><span>House Size:</span> <span>
                        <asp:Label ID="lblHousesize" runat="server"></asp:Label></span> </li>
                    <li><b>Features</b></li>
                    <li>
                        <asp:Label ID="lblFeatures" runat="server" Text="Label"></asp:Label>
                    </li>
                    
                    <li><b>Other Description</b></li>
                    <li>
                        <asp:Label ID="lblOtherDescription" runat="server" Text="Label"></asp:Label></li>
                    <li id="liimg1" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img1" runat="server" visible="false" /></li>
                    <li id="liimg2" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img2" runat="server" visible="false" /></li>
                    <li id="liimg3" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img3" runat="server" visible="false" /></li>
                    <li id="liimg4" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img4" runat="server" visible="false" /></li>
                    <li id="liimg5" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img5" runat="server" visible="false" /></li>
                    <li id="liimg6" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img6" runat="server" visible="false" /></li>
                    <li id="liimg7" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img7" runat="server" visible="false" /></li>
                    <li id="liimg8" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img8" runat="server" visible="false" /></li>
                    <li id="liimg9" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img9" runat="server" visible="false" /></li>
                    <li id="liimg10" visible="false" runat="server">
                        <img width="280" height="210" alt="image description" id="img10" runat="server" visible="false" /></li>
                   
                </ul>
            </div>
        </div>
    </div>
    </form>--%>
</body>
</html>
