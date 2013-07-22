<html>
<head>
    <title>Create a new account to manage your Wedding List</title>
    <meta name="layout" content="kickstart" />

    <g:set var="layout_nomainmenu"		value="${true}" scope="request"/>
    <g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
</head>

<body>

<section id="login" class="first">
    <div class="row">
        <div class="span3"></div>
        <div class="span6">
            <h3>Confirm your Target Account Data</h3>
            <form id='loginForm' class='form-horizontal' action='${postUrl}' method='POST' autocomplete='off'>
                <fieldset class="form">
                    <div class="control-group fieldcontain ${hasErrors(bean: _DemoPageInstance, field: 'name', 'error')} ">
                        <label for='username' class="control-label">UserName</label>
                        <div class="controls">
                            <input type='text' class='span4' name='j_username' id='username'/>
                        </div>
                    </div>

                    <div class="control-group fieldcontain ${hasErrors(bean: _DemoPageInstance, field: 'name', 'error')} ">
                        <label for='password' class="control-label">Password:</label>
                        <div class="controls">
                            <input type='password' class='span4' name='j_password' id='password'/>
                        </div>
                    </div>


                </fieldset>
                <div class="controls">
                    <input type='submit' id="submit" class="btn btn-success" value='Submit'/>
                </div>
            </form>
        </div>
        <div class="span3"></div>
    </div>
</section>

<script type='text/javascript'>
    <!--
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>

</body>
</html>
