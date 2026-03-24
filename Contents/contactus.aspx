<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Listonsocial.master" AutoEventWireup="true"
    CodeFile="contactus.aspx.cs" Inherits="Contents_contactus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Page-Enter" content="blendTrans(Duration=0)" />
    <meta http-equiv="Page-Exit" content="blendTrans(Duration=0)" />
    <meta name="format-detection" content="telephone=no" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Fleet Starts Here-->
    <div id="fleet-sub">
        <div class="left">
            <h2>
                Wide Range of
            </h2>
            <h1>
                Apps</h1>
        </div>
        <div class="right">
        </div>
    </div>
    <!--Fleet Ends Here-->
    <!--Content Starts Here-->
    <div id="sub-cont">
        <div id="bred-crumb">
            <h1>
                Contact Us</h1>
            <div class="clear clearfix">
            </div>
        </div>
        <div id="contact">
            <div id="block1" style="height: 160px ! important;">
                <span>&nbsp;CALL:<strong class="red"> 1-800-792-4060</strong></span> <span>EMAIL:<strong
                    class="blue"> <a href="mailto:Info@AppBuilderOnline.com">Info@AppBuilderOnline.com</a></strong></span>
            </div>
            <div id="block2">
                <div class="hrs">
                    <span class="hd-grey">Office Hours:</span> <span>Monday to Friday
                        <br />
                        11am to 7pm EST.</span>
                </div>
                <div id="visit">
                    <span class="hd-grey">Visit Us: </span><span><strong>List On Social</strong></span>
                </div>
                <div id="address">
                    <span>United States</span>
                    <ul>
                        <li>The GrayBar Building at Grand Central</li>
                        <li>420 Lexington Avenue</li>
                        <li>New York, NY 10170</li>
                    </ul>
                </div>
                <div id="address">
                    <span class="cust-font1">Canada</span>
                    <ul>
                        <li>20 Kingsbridge Garden Circle </li>
                        <li>Mississauga</li>
                        <li>Ontario L5R 3K7</li>
                    </ul>
                </div>
                <div class="clear clearfix">
                </div>
            </div>
            <div id="form">
                <span class="field">
                    <p class="cust-font1">
                        Name:</p>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></span> <span class="field">
                        <p class="cust-font1">
                            Email:</p>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox></span> <span class="field">
                            <p class="cust-font1">
                                Company:</p>
                            <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox></span> <span class="field">
                                <p class="cust-font1">
                                    Phone / Mobile:</p>
                                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="ftvMobile" runat="server" TargetControlID="txtMobile"
                                    FilterType="Custom" FilterMode="ValidChars" ValidChars="-+0123456789" />
                            </span><span class="field">
                                <p class="cust-font1">
                                    How Did You Find Us?:</p>
                                <asp:TextBox ID="txtFind" runat="server"></asp:TextBox></span> <span class="field">
                                    <p class="cust-font1">
                                        Subject:</p>
                                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></span>
                <span class="area-m">
                    <p class="cust-font1">
                        Address:</p>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></span>
                <span class="area-l">
                    <p class="cust-font1">
                        Message:</p>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox></span>
                <div class="clear clearfix">
                </div>
                <div class="btn-holder">
                    <asp:LinkButton ID="lnkReset" runat="server" CssClass="btn gray" OnClientClick="return ClearFields()"
                        ToolTip="Click here to reset values"><span>Reset</span></asp:LinkButton>
                    <asp:LinkButton ID="lnkSubmit" runat="server" CssClass="btn red" OnClientClick="return ValidFields()"
                        ToolTip="Click here to Save"><span>Submit</span></asp:LinkButton>
                </div>
                <div id="btns">
                    <a id="lnkDownload" class="btn-red" href="http://www.appbuilderonline.com/abo/softwares/appbuilderonline.exe">
                        Remote Desktop Help</a>
                </div>
                <div class="clear clearfix">
                </div>
            </div>
            <div id="get-touch">
            </div>
            <div class="clear clearfix">
            </div>
        </div>
        <div class="clear clearfix">
        </div>
    </div>
    <!--Content Ends Here-->

    <script type="text/javascript" language="javascript">
        var liContact = document.getElementById("liContact");
        liContact.className = "active margin-rht";
        var alertMsg = '';
        var txtName = document.getElementById('<%=txtName.ClientID %>');
        var txtMail = document.getElementById('<%=txtMail.ClientID %>');
        var txtCompany = document.getElementById('<%=txtCompany.ClientID %>');
        var txtMobile = document.getElementById('<%=txtMobile.ClientID %>');
        var txtFind = document.getElementById('<%=txtFind.ClientID %>');
        var txtSubject = document.getElementById('<%=txtSubject.ClientID %>');
        var txtAddress = document.getElementById('<%=txtAddress.ClientID %>');
        var txtMessage = document.getElementById('<%=txtMessage.ClientID %>');
        function ValidFields() {
            if (txtMail.value.replace(/^\s+|\s+$/g, "") == "") {
                alertMsg += 'Please Enter Mail Id \n';
                txtMail.value = "";
                txtMail.focus();
            }
            else if (!validateEmail(txtMail.value)) {
                alertMsg += 'Please Enter Valid Mail Id \n';
                txtMail.value = "";
                txtMail.focus();
            }
            if (txtMessage.value.replace(/^\s+|\s+$/g, "") == "") {
                alertMsg += 'Please Enter Message \n';
                txtMessage.value = "";
                txtMessage.focus();
            }
            if (alertMsg != '') {
                alert(alertMsg);
                alertMsg = '';
                return false;
            }
            else
                return true;
        }
        function ClearFields() {
            txtName.value = '';
            txtMail.value = '';
            txtCompany.value = '';
            txtMobile.value = '';
            txtFind.value = '';
            txtSubject.value = '';
            txtAddress.value = '';
            txtMessage.value = '';
        }
        function validateEmail(elementValue) {
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            return emailPattern.test(elementValue);
        }
        function validateMobile(elementValue) {
            if (isNaN(elementValue)) {
                return false;
            }
            return true;
        }
    </script>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-19917374-3']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>

</asp:Content>
