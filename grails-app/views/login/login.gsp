<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
      <g:form action="login" method="POST">
          <div class="loginForm">
              <div>
                <div>
                  <label for="email">Email</label>
                  <g:textField name="email" value="${emailMap?.email}"/>
                </div>
                <div>
                  <label for="password">password</label>
                  <g:passwordField name="password"/>
                </div>
              </div>
          </div>
          <fieldset class="buttons">
              <g:link class="create" controller="user" action="create">Registrarse</g:link>
              <g:submitButton name="login" class="login" value="Entrar" />
          </fieldset>
      </g:form>
    </body>
</html>
