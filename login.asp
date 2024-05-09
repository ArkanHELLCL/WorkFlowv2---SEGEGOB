<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml">
	<head>
		<title>Ingreso - Sistema WorkFlow MSGG V3.6.2024</title>
		<!--head-->
		<!-- #INCLUDE FILE="include\template\meta.inc" -->
		<!-- #INCLUDE FILE="include\template\loginhead.inc" -->	
		<!--head-->
	</head>
	<%
	'Response.AddHeader "Refresh",CStr(CInt(Session.Timeout + 1) * 60)
	Response.AddHeader "cache-control", "private"
	Response.AddHeader "Pragma","No-Cache"
	Response.Buffer = TRUE
	Response.Expires = 0
	Response.ExpiresAbsolute = 0
	'Session.Contents.Removeall()  
    Session.Abandon
	
	servername=Request.ServerVariables("SERVER_NAME")%>
	<body class="text-center justify-content-center">
		<!-- form container -->
		<div class="form-container">
			<!-- form login -->
			<div class="form-login">
				<!-- Table with panel -->					
				<div class="card card-cascade narrower">
					<!--Card image-->
					<div class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-center align-items-center">						
						<div class="text-left">Ingresa tus</div>
						<div id="UsrPhoto"></div>
						<div class="text-right">Credenciales</div>					
					</div>
					<!--/Card image-->

					<form role="form" action="/valida-usuario" method="POST" name="login" id="login" class="form-signin needs-validation">			
						<div>
							<div id="UsrPhoto"></div>
							<div>					
								<div class="md-form" style="text-align:initial;">
									<div class="error-message input-field">						
										<i class="material-icons prefix">account_circle</i>							
										<input type="text" id="USR_Cod" name="USR_Cod" class="form-control validate" autofocus required>
										<span class="select-bar"></span>
										<label for="USR_Cod">Usuario</label>							
									</div>						
								</div>								
								<div class="md-form " style="text-align:initial;">
									<div class="error-message input-field">
										<i class="material-icons prefix">vpn_key</i>										
										<input type="password" id="USR_Pass" name="USR_Pass" class="form-control validate" required>
										<i class="far fa-eye-slash viewpass" data-key="#USR_Pass"></i>
										<span class="select-bar"></span>
										<label for="USR_Pass">Contraseña</label>							
									</div>						
								</div>
							</div>
						</div>
						<a href="#" class="text-primary toggle" tabindex="-2" style="float:right;" id="forgot">¿Olvidaste tu clave?</a>
						<br/>
						<button class="btn btn-primary animated waves-effect" type="submit"><i class="fas fa-sign-in-alt"></i> Ingresar</button>				
						<div class="card-footer text-muted text-center mt-4">			  
							<p class="text-muted" id="copyright">Sistema WorkFlow v3.06 2026<br/>Ministerio Subsecretaría General de Gobierno</p>
							<div class="bicolor bottom ">
								<span class="azul"></span>
								<span class="rojo"></span>
							</div>
						</div>

					</form>			  	
				</div>
				<!-- Table with panel -->
			</div>
			<!-- form login -->
			
			<!-- form forgot -->
			<div class="form-forgot">
				<!-- Table with panel -->					
				<div class="card card-cascade narrower">
					<!--Card image-->
					<div class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-center align-items-center">						
						<div class="text-left">Ingresa tu Correo</div>						
					</div>
					<!--/Card image-->

					<form role="form" action="/graba-olvido-contrasena" method="POST" name="forgot-pass" id="forgot-pass" class="form-signin needs-validation">			
						<div>							
							<div>					
								<div class="md-form " style="text-align:initial;">
									<div class="error-message input-field">						
										<i class="material-icons prefix">mail</i>							
										<input type="email" id="USR_Mail" name="USR_Mail" class="form-control validate" required>
										<span class="select-bar"></span>
										<label for="USR_Mail">Correo</label>							
									</div>						
								</div>							
							</div>
							<a href="#" class="text-primary toggle" tabindex="-2" style="float:right;" id="forgot2"><i class="fas fa-undo"></i> Voler</a>
							<br/>
							<button class="btn btn-primary animated waves-effect" type="submit"><i class="fas fa-paper-plane"></i> Solicitar</button>				
							<div class="card-footer text-muted text-center mt-4">			  
								<p class="text-muted" id="copyright3">Sistema WorkFlow v3.06 2026<br/>Ministerio Subsecretaría General de Gobierno</p>
								<div class="bicolor bottom ">
									<span class="azul"></span>
									<span class="rojo"></span>
								</div>
							</div>
						</div>
					</form>			  	
				</div>
				<!-- Table with panel -->
			</div>
			<!-- form forgot -->
			
			<!-- form newpass -->
			<div class="form-newpass">
				<!-- Table with panel -->					
				<div class="card card-cascade narrower">
					<!--Card image-->
					<div class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-center align-items-center">						
						<div class="text-left">Cambia tu Clave</div>						
					</div>
					<!--/Card image-->

					<form role="form" action="/graba-contrasena" method="POST" name="new-pass" id="new-pass" class="form-signin needs-validation">			
						<div>							
							<div>					
								<div class="md-form" style="text-align:initial;">
									<div class="error-message input-field">						
										<i class="material-icons prefix">vpn_key</i>										
										<input type="password" id="inputPassword" name="inputPassword" class="form-control validate" required>
										<i class="far fa-eye-slash viewpass" data-key="#inputPassword"></i>
										<span class="select-bar"></span>
										<label for="inputPassword">Nueva Clave</label>							
									</div>						
								</div>							
								
								<div class="md-form" style="text-align:initial;">
									<div class="error-message input-field">						
										<i class="material-icons prefix">vpn_key</i>										
										<input type="password" id="inputPasswordConfirm" name="inputPasswordConfirm" class="form-control validate" required>
										<i class="far fa-eye-slash viewpass" data-key="#inputPasswordConfirm"></i>
										<span class="select-bar"></span>
										<label for="inputPasswordConfirm">Repetir Clave</label>							
									</div>						
								</div>
							</div>
							<a href="#" class="text-primary toggle2" tabindex="-2" style="float:right;" id="forgot3"><i class="fas fa-undo"></i> Voler</a>
							<br/>
							<button class="btn btn-primary animated waves-effect" type="submit"><i class="fas fa-exchange-alt"></i> Cambiar</button>				
							<div class="card-footer text-muted text-center mt-4">			  
								<p class="text-muted" id="copyright3">Sistema WorkFlow v3.06 2026<br/>Ministerio Subsecretaría General de Gobierno</p>
								<div class="bicolor bottom ">
									<span class="azul"></span>
									<span class="rojo"></span>
								</div>
							</div>
						</div>
						<input type="hidden" id="usr_cod2" name="usr_cod2" value="">						
						<input type="hidden" id="usr_pass2" name="usr_pass2" value="">
					</form>			  	
				</div>
				<!-- Table with panel -->
			</div>
			<!-- form newpass -->
			
		</div>
		<!-- form container -->
		
	</body>
</html>