<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Security Compliance Reporting"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <g:javascript library="jquery"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>

<body>

<nav id="mainNav" class="navbar navbar-top">
    <div class="navbar-inner">
        <div class="container">

            <div id="infusionsoft-logo">
                <a id=""><g:img dir="images" file="logo.png"/></a>

                <div class="appName">Security Compliance Reporting</div>
            </div>
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>


            <div class="nav-collapse">
                
                <ul class="nav pull-right">
                <!-- 
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li><g:link controller="manageUsers">Manage Users</g:link></li>
                    </sec:ifAllGranted>
                    <sec:ifLoggedIn>
                        <li><g:link controller="Logout">Logout</g:link></li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li><g:link controller="Login">Login</g:link></li>
                    </sec:ifNotLoggedIn>
                    -->
                </ul>
            </div>
        </div>
    </div>
</nav>


<div id="mainContent" class="container">

    <div class="error alert-error"></div>

    <g:if test="${flash.message}">
        %{--<bootstrap:alert class="alert-success">${flash.message}</bootstrap:alert>--}%
    </g:if>

    <g:if test="${flash.error}">
        %{--<bootstrap:alert class="alert-error">${flash.error}</bootstrap:alert>--}%
    </g:if>

    <g:layoutBody/>

</div>
<footer class="container">
    <p class="copyright">&copy; ${new Date().format("yyyy")} Infusionsoft Inc. All rights reserved</p>
</footer>


<script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
<!-- App version: <g:meta name="app.version"/> -->

</body>
</html>
