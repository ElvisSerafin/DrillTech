<%-- 
    Document   : OlvidoContrasena
    Created on : 09/11/2016, 12:01:34 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row" style="margin-top: 10%;">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
					<div class="alert-placeholder"></div>
					<div class="panel panel-success">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="text-center"><h2><b>Recuperar cuenta</b></h2></div>
									<form id="register-form" action="http://phpoll.com/recover/process" method="post" role="form" autocomplete="off">
										<div class="form-group">
											<label for="email">Ingrese Email </label>
											<input type="email" name="email" tabindex="1" class="form-control" placeholder="Email " value="" autocomplete="off" required="">
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
													<input type="submit" name="recover-submit" id="recover-submit" tabindex="2" class="form-control btn btn-success" value="Recuperar Cuenta">
												</div>
                                                                                            <div class="text-center">
                                                                                                <a href="Login.jsp" tabindex="5" class="forgot-password">Ir Login</a>
												</div>
                                                                                            
											</div>
										</div>
										<input type="hidden" class="hide" name="token" id="token" value="ae0aa93b5032106b97a4276e17a09061">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    </body>
</html>
