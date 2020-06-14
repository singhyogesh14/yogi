<%@ Page Title="" Language="C#" MasterPageFile="~/Rellin.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Photo_copier_rellin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Enquiry</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="#">Enquiry</a></li>
              
            </ul>
        </div>
    </div><!--/breadcrumbs-->

       <!--=== Content Part ===-->
    <div class="container content blog-page blog-item">		
          

        <div class="post-comment">
           
            <form>
                <label>Name</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="txtname">
                    </div>                
                </div>
                <label>Mobile <span class="color-red">*</span></label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="txtmobile">
                    </div>                
                </div>
                
                <label>Email <span class="color-red">*</span></label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="txtemail">
                    </div>                
                </div>
                
                <label>Message</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-11 col-md-offset-0">
                        <textarea class="form-control" rows="8" id="txtmessage"></textarea>
                    </div>                
                </div>
                
                <p><button class="btn-u" type="button" onclick="DoEnquiry('Rellin Enquiry');">Send Message</button></p>
            </form>
        </div>
        <!-- End Comment Form -->
    </div><!--/container-->		
    <!--=== End Content Part ===-->
    </div>
</asp:Content>

