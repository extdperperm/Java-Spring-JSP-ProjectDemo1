<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 1 - Ejemplo 7</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="./styles/index.css">
</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel2">
            <!--Ejemplo de notaci�n en java de Expression language (EL) haciendo uso de $. Como se comprueba en este ejemplo, t�cnicamente no es obligatorio que la controladora
                deba tramitar los par�metros recibidos.
            -->
            
            <!-- A la hora de acceder al objeto del negocio bajo el par�metro de AlumnoData, fijarse en como se puede acceder escribiendo los m�todos geters sin la palabra "get" y sin los par�ntesis empezando en minuscula.
                 Tambi�n se puede especificar el nombre completo del m�todo get incluido los par�ntesis (ej: Edad).
             -->
            <div class="item"><p><span>Resultado Ejemplo 7:</span> A continuaci�n se muestran los datos del alumno.  Ejecutado Correctamente.</p></div>
            <div class="item"><p><b>Nombre:</b> ${AlumnoData.nom}</p>
                              <p><b>Apellidos:</b> ${AlumnoData.apell}</p>
                              <p><b>Edad:</b> ${AlumnoData.getEdad()}</p>
            </div>
            <div class="item"><p style="text-align:center;"><a href="./">Volver</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>