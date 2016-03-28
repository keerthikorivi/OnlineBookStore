<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>PullData</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js">
    </script>
</head>
<body>

<ul id="nav">
    <li><a href='pageA.html'>PageA.html</a> </li>
</ul>

<ol id="result">

    <script type="text/javascript">
        $(document).ready(function(){


        $('#result').load('welcometest.html');
        $('ul#nav li a').click(function(){

            var page=$(this).attr('href');
            $('#result').load('PageA.html');
            return false;
        });
        });
    </script>
</ol>



</body>
</html>