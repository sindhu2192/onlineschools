<!doctype html>
<html>
<head>
    <meta name="layout" content="mentor"/>
    <title>Welcome to Grails</title>
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>

        <ul class="dropdown-menu">
            <li class="dropdown-item"><g:link controller="course" action="index" >Course </g:link></li>
            <li class="dropdown-item"><g:link controller="subject" action="index" >Subject</g:link> </li>
            <li class="dropdown-item"><g:link controller="chapter" action="index" >Chapter </g:link></li>

        </ul>
    </li>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                <li class="dropdown-item"><a href="#">${plugin.name} - ${plugin.version}</a></li>
            </g:each>
        </ul>
    </li>
</content>

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="logo.png" class="grails-logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to Online Schools</h1>

        <p>
            Finding the right online degree program for you can feel like trying to find a needle in a haystack. That's why we have outlined our online school selections, some of their potential benefits, and their most popular programs among online students*. Get more information from one or all of them to help you on your education journey!
        </p>

        <div id="controllers" role="navigation">
            <h2>Available Controllers:</h2>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

</body>
</html>
