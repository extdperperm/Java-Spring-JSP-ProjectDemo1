<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 1 - Ejemplo 9</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="../styles/index.css">
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
            <div class="item"><p><span>Resultado Ejemplo 9:</span> Ejecutado Correctamente.</p></div>
            <div class="item"><p><span>Ejemplo 10:</span> Formulario que env�a por m�todo POST varios datos del profesor a la ruta relativa <b>./ejemplo10</b> (controladora MasEjemplosController) y la controladora realiza una verificaci�n tal que si alg�n dato es vac�o se retorna a la vista actual informando del error.</p>
            				 <div><form name="ejemplo10" method="POST" action="./ejemplo10">
            						  <div><label ${DataProfesor.indicadorNomError}>Nombre: </label><input type="text" name="nom" value="${DataProfesor.nom}" placeholder="Ej: Miguel" /></div><!--
            					   --><div><label ${DataProfesor.indicadorApellError}>Apellidos: </label><input type="text" name="apell" value="${DataProfesor.apell}" placeholder="Ej: Rodriguez P�rez" /></div><!--
            					   --><div><label ${DataProfesor.indicadorEdadError}>Edad: </label><input type="number" name="edad" min="1" max="100" value="${DataProfesor.edad}" /></div><!--
            					   --> <br/><p style="color: red; text-align: center;">${DataProfesor.msgError}</p>
            					      <div><input type="submit" value="Enviar" /></div>
            					  </form>
            					 
                            </div>
            </div>
            <div class="item"><p style="text-align:center;"><a href="../">Volver</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>