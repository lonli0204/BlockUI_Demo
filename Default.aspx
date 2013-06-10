<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BlockUI Demo</title>
    <script type="text/javascript" src="js/jquery-2.0.2.js"></script>  
    <script type="text/javascript" src="js/jquery.blockUI.js"></script> 
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#demo1').click(function () {
                $.blockUI({ message: $('#loginForm') });
            });
            $('#btn_close').click(function () {
                $.unblockUI();
            });
        });  
    </script>

    <style type="text/css">
        .btn_close01 { display:block; float:right; background-color:#000000; color:#FFFFFF; width:30px; height:30px; font-size:28px;}
        #form01{ background-color:#fff; padding:20px;}  
    </style> 
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <h3>hide & show Login Form-全頁遮罩</h3>
  
    <p>
        <input type="button" value="Login" id="demo1" />
    </p>
  
    <!-- Hidden form --> 
    <div id="loginForm" style="display:none" >
    <div class="btn_close01" id="btn_close"> X </div>

    <form id="form2" action="http://127.0.0.1/BlockUI_Demo/Default.aspx" method="post">
    <p><label>Username:</label><input type="text" name="name" /></p>
    <p><label>Password:</label><input type="password" name="password" /></p> 
    <input type="submit" name="submit" value="Login" />
    </form>
</div>
<!-- Hidden form --> 
   
    </div>
    </form>
</body>
</html>
