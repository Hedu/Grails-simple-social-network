<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Social Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">
      <%--
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
        --%>
    </content>

    <div class="mainPictureDiv" role="presentation">
        <%--<img class="mainPicture" src="<g:createLinkTo dir="images" file="summer-time.jpg" />" /--%>
        <div class="mainContent">
          <span class="title">Bienvenidos a Social Grails</span>
          <div class="buttonsZone">
            <g:link class="create btn" controller="user" action="create">Registrarse</g:link>
            <g:link class="create btn" controller="user" action="create">Entrar</g:link>
          </div>
        </div>
    </div>

    <g:if test="${session.user?.admin == true}">
      <div id="content" role="main">
        <section class="row colset-2-its">
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
  </g:if>

</body>
</html>
