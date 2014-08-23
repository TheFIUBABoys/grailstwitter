<html>
<head>
    <title><g:layoutTitle default="Grails"/></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"/>
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
    <g:layoutHead/>
    <g:javascript library="application"/>
</head>

<body>

<div class="nav">
    <ul class="nav nav-pills">
        <li><a href="${createLink(uri: '/')}">Home</a></li>
        <li><a href="${createLink(uri: '/login/auth')}">Login</a></li>
        <li><a href="${createLink(uri: '/')}">Link 2</a></li>

    %{--Authenticated options--}%
        <sec:ifLoggedIn>
            <li><a href="#" class="disabled"><sec:username/></a></li>
            <li class="pull-right">
                <a href="${createLink(controller: 'logout')}">(Logout)</a>
            </li>
        </sec:ifLoggedIn>
    </ul>
</div>

<div class="body">
    <g:layoutBody/>
</div>

</body>
</html>
