<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                url: "rmmp Default.aspx/getComments",
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    $(data.d).each(function () {
                        $(".container").append($("<div>").html(this.toString()).addClass("contentItem"));
                    });
                },
                error: function (a, b, c) {
                    debugger;
                }
            });
            $("input[id=add]").live("click", function () {
                $.ajax({
                    url: "rmmp Default.aspx/addComments",
                    type: "post",
                    dataType: "json",
                    contentType: "application/json",
                    data: "{'comment':'" + $(this).closest("div").find("textarea").val() + "'}",
                    success: function (data) {

                        $(".container").append($("<div>").html(data.d).addClass("contentItem"));
                        $(".container .commentBox").remove();

                    },
                    error: function (a, b, c) {
                        debugger;
                    }
                });
                $(".container .commentBox").html("<img src='http://www.heathrowtosouthampton.co.uk/Web/images/gif/Processing1.gif' />")
            });
            $(".addComment").click(function () {
                if ($(".container commentBox").length <= 0) {
                    var commentBox = $(".cloneComment").clone();
                    commentBox.removeClass("cloneComment");
                    $(".container").append(commentBox);
                    commentBox.show();
                }
            });
        });
    </script>

    <style>
        .container
        {
            width: 300px;
        }
        .contentItem
        {
            background-color: Aqua;
            margin: 10px;
            padding: 10px;
        }
        .commentBox
        {
        	background-color:Yellow;
        	padding:15px;
        }
    </style>
    <title>Testing page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div  style="display: none" class="commentBox cloneComment">
        <textarea></textarea><br />
        <input id="add" type="button" value="Add Comment" />
    </div>
    <div id="container" class="container">
    </div>
    <a href="#" class="addComment">add comment</a>
    </form>
</body>
 
</html>
