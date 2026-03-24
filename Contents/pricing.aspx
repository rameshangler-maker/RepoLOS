<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Listonsocial.master" AutoEventWireup="true"
    CodeFile="pricing.aspx.cs" Inherits="Contents_pricing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Css/contents.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Basics.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main-wrapper">
        <div id="main" class="clrscr">
            <div class="shadow">
                <div class="shadow-l">
                    &nbsp;</div>
                <div id="content" class="column pricing">
                    <div class="section">
                        <h1 class="title">
                            Pricing &amp; Packages available</h1>
                        <div id="content-area" class="content">
                            <!--<h2>Pricing & Packages available</h2>-->
                            <div class="subheader">
                                Looking to get started? Good call! We have a variety of options to suit any budget.
                                Select the package that works best and let’s get it on.</div>
                            <table class="sticky-enabled">
                                <thead>
                                    <tr>
                                        <th class="first">
                                            <div class='table-header'>
                                                Here’s what you get:</div>
                                        </th>
                                        <th class="second">
                                            <h2>
                                                Base Package</h2>
                                            <div class='subheader'>
                                                Recommended package for Realtors with existing Facebook Fanpage and Twitter accounts</div>
                                        </th>
                                        <th class="third">
                                            <h2>
                                                All-Inclusive Package</h2>
                                            <div class='subheader'>
                                                Recommended for Realtors who are new to social media marketing</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd">
                                        <td class="first">
                                            RE2social Facebook and Twitter Application
                                        </td>
                                        <td class="second">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="even">
                                        <td class="first">
                                            Listings posted/syndicated automatically on Facebook
                                        </td>
                                        <td class="second">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="first">
                                            Custom Facebook Listing tab
                                        </td>
                                        <td class="second">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="even">
                                        <td class="first">
                                            Users can browse and view listings in Facebook
                                        </td>
                                        <td class="second">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="first">
                                            Automatic real estate news story posts/syndication
                                        </td>
                                        <td class="second">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="even">
                                        <td class="first">
                                            Facebook Fanpage creation
                                        </td>
                                        <td class="second">
                                            <div class="no">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="first">
                                            Contact list import
                                        </td>
                                        <td class="second">
                                            <div class="no">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="even">
                                        <td class="first">
                                            Custom Facebook welcome page
                                        </td>
                                        <td class="second">
                                            <div class="no">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="first">
                                            Facebook Profile Information Uploaded
                                        </td>
                                        <td class="second">
                                            <div class="no">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <tr class="even">
                                        <td class="first">
                                            Facebook Album Picture Uploads
                                        </td>
                                        <td class="second">
                                            <div class="no">
                                                &nbsp;</div>
                                        </td>
                                        <td class="third">
                                            <div class="yes">
                                                &nbsp;</div>
                                        </td>
                                    </tr>
                                    <%--<tr class="price odd">
                                        <td class="first">
                                        </td>
                                        <td class="second">
                                            <div class='price'>
                                                $39/month</div>
                                        </td>
                                        <td class="third">
                                            <div class='price'>
                                                $39/month</div>
                                            <div class='fee'>
                                                (+$250 setup fee)</div>
                                        </td>
                                    </tr>--%>
                                    <%--<tr class="purchase even">
                                        <td class="first">
                                        </td>
                                        <td class="second">
                                            <form action="/pricing" accept-charset="UTF-8" method="post" id="re2social-purchase-this-plan-form">
                                            <div>
                                                <input type="hidden" name="product_id" id="edit-product-id" value="2" />
                                                <input type="image" name="submit" id="edit-submit" class="form-submit" src="../Images/purchase-this-plan.png" />
                                                <input type="hidden" name="form_build_id" id="form-d7241ed5bc49cad9c596ea3ea5a0ea99"
                                                    value="form-d7241ed5bc49cad9c596ea3ea5a0ea99" />
                                                <input type="hidden" name="form_id" id="edit-re2social-purchase-this-plan-form" value="re2social_purchase_this_plan_form" />
                                            </div>
                                            </form>
                                        </td>
                                        <td class="third">
                                            <form action="/pricing" accept-charset="UTF-8" method="post" id="re2social-purchase-this-plan-all-form">
                                            <div>
                                                <input type="hidden" name="product_id" id="edit-product-id-1" value="5" />
                                                <input type="image" name="submit" id="edit-submit-1" class="form-submit" src="../Images/purchase-this-plan.png" />
                                                <input type="hidden" name="form_build_id" id="form-5b9a139d5f2a014e76e7b61df8e6dab9"
                                                    value="form-5b9a139d5f2a014e76e7b61df8e6dab9" />
                                                <input type="hidden" name="form_id" id="edit-re2social-purchase-this-plan-all-form"
                                                    value="re2social_purchase_this_plan_all_form" />
                                            </div>
                                            </form>
                                        </td>
                                    </tr>--%>
                                </tbody>
                            </table>
                            <%-- <h2>
                                Consulting Package</h2>
                            Social media, Search Engine Optimization (SEO), Search Engine Marketing (SEM), website
                            and comprehensive online marketing strategy consulting available. Contact us to
                            inquire about group sessions.
                            <p>
                                <strong>Consulting: $200 / hr</strong></p>
                            <a href="mailto:info@re2social.ca">
                                <img src="../Images/contact-us.png" alt=""
                                    title="" width="194" height="40" /></a>
                            <div>
                                <div class="hidden" id="popup">
                                    <form action="/pricing" accept-charset="UTF-8" method="post" id="re2social-where-located-form">
                                    <div>
                                        <div class="question">
                                            Where are you located?</div>
                                        <div class="form-item" id="edit-located-wrapper">
                                            <select name="located" class="form-select required" id="edit-located">
                                                <option value="" selected="selected">Select your location</option>
                                                <option value="0">Toronto Canada</option>
                                                <option value="1">Somewhere Else</option>
                                            </select>
                                        </div>
                                     </div>
                                    </form>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
