function DoEnquiry(Product) {
    try {
       
        var Name = $("#txtname").val();
        var Mobile = $("#txtmobile").val();
        var Email = $("#txtemail").val();
        var Message = $("#txtmessage").val();

        if (Message == undefined ||  Message == "") {
            alert("Message is required field.");
            return false;
        }
        if (Mobile == undefined || Mobile == "") {
            alert("Mobile is required field.");
            return false;
        }
        if (Email == undefined || Email == "") {
            alert("Email is required field.");
            return false;
        }
        if (Name == undefined || Name == "") {
            alert("Name is required field.");
            return false;
        }
         


        $.ajax({
            type: "POST",
            url: "WenMthods.aspx/SendEmail",
            data: JSON.stringify({ Name: Name, Mobile: Mobile, Email: Email, Message: Message, Product: Product }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert("Enquiry sent.");
                 $("#txtname").val('');
                 $("#txtmobile").val('');
                 $("#txtemail").val('');
                 $("#txtmessage").val('');

            },
            failure: function (response) {
                alert("Failure : " + response.d);
            },
            error: function (response) {
                alert("Error : " + response.d);
            }
        });
    }
    catch (err) {
        console.log(err);
    }
    // hideProgressBar();
}