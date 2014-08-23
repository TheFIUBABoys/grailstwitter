<head>
    <meta name='layout' content='main'/>
    <title>Login</title>
</head>

<body>
<div class="container">

    <g:if test='${flash.message}'>
        <div class='login_message'>${flash.message}</div>
    </g:if>

    <form role="form" action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="j_username" autofocus="true"
                   placeholder="Your username">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="j_password" placeholder="Your password">
        </div>

        <div class="checkbox">
            <label>
                <input type="checkbox" name='${rememberMeParameter}' id='remember_me'
                       <g:if test='${hasCookie}'>checked='checked'</g:if>> Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-default" id="login_button">Submit</button>
    </form>

    <p>
        (Valid user names are graeme, jeff, peter and burt. Password is password.)
    </p>

</div>
</body>
