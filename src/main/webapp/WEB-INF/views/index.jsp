<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 1</title>
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
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 1</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>C</b>omprender la estructura y elementos de un proyecto web con el gestor de proyecto MAVEN.</p>
                                                    <p class="objetivos">- <b>C</b>onfiguraci�n b�sica de un proyecto MVC Web con Spring (Pom.xml, web.xml, etc).</p>
                                                    <p class="objetivos">- <b>F</b>amiliarizarse con la arquitectura Modelo Vista Controlador de Spring.</p>
                                                    <p class="objetivos">- <b>S</b>er capaz de crear las controladoras (@Controller).</p>
                                                    <p class="objetivos">- <b>D</b>ominar la gesti�n de direcciones o urls (@RequestMapping).</p>
                                                    <p class="objetivos">- <b>P</b>lantear diversas formas de env�o y recogida de par�metros con GET Y POST (@RequestParam).</p>
                                                    <p class="objetivos">- <b>C</b>omprender y hacer uso del Modelo en Spring (Model)</p>
                                                    <p class="objetivos">- <b>E</b>ntender y saber usar las notaciones en Expression language (EL) para renderizar los datos en las vistas .jsp</p>
                                                    <p class="objetivos">- <b>F</b>amiliarizarse en general con las Java Annotation de Spring.</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi�n: 2022-03 (4.23.0)</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi�n: 9</p>
                                                    <p><span>Jdk:</span> OpenJdk, versi�n: 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi�n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi�n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi�n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versi�n 5.3.22. M�dulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versi�n: 4.0.1</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentaci�n y Sitios de Inter�s</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentaci�n de Spring</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#mvc-view" target="_blank">Leer</a> Documentaci�n sobre Spring Views I</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/view.html" target="_blank">Leer</a> Documentaci�n sobre Spring Views II</p>
                                                    <p><a href="https://www.javatpoint.com/spring-mvc-form-tag-library" target="_blank">Leer</a> Documentaci�n Spring Mvc Tags</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1:</span> Enlace que al hacer clic realiza una petici�n por el m�todo GET a la ruta relativa <b>/ejemplo1</b> (controladora MainController) que implementa el m�todo java ejem1 y que delega en la vista example1. <a href="./ejemplo1">Haz clic aqu�</a></p></div>
            <div class="item"><p><span>Ejemplo 2:</span> Enlace que al hacer clic realiza una petici�n por el m�todo GET a la ruta relativa <b>/ejemplo2</b> (controladora MainController) con env�o de par�metros. <a href="./ejemplo2?Ciclo=DAW&Grupo=3A&Turno=Noche">Haz clic aqu�</a></p></div>
            <div class="item"><p><span>Ejemplo 3:</span> Formulario que env�a por m�todo POST a la misma ruta relativa que en el ejemplo anterior <b>ejemplo2</b> (controladora MainController) pero que recoge otro m�todo de la controladora con la sobre carga del m�todo POST.</p>
            				 <div><form name="ejemplo3" method="POST" action="./ejemplo2">
            						  <div><label>Ciclo: </label><input type="text" name="Ciclo" placeholder="Ej: Desarrollo de Aplicaciones Web"/></div><!--
            					   --><div><label>Grupo: </label><input type="text" name="Grupo" placeholder="Ej: 2A"/></div><!--
            					   --><div><label>Turno: </label><input type="text" name="Turno" placeholder="Ej: Ma�ana"/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 4:</span> Enlace que al hacer clic realiza una petici�n por el m�todo GET a la ruta relativa <b>./MasEjemplos/ejemplo4</b> (controladora MainController). Puede comprobar como se pueden especificar rutas l�gicas en los mapeos de cualquier nivel. Analice el c�digo de la controladora. Es importante que tenga en cuenta que los mapeos relativos de las rutas que especifique, afecta a las rutas relativas de los recursos (.css, .js etc). <a href="./MasEjemplos/ejemplo4">Haz clic aqu�</a></p></div>
            <div class="item"><p><span>Ejemplo 5:</span> Enlace que al hacer clic realiza una petici�n por el m�todo GET a la ruta relativa <b>./ejemplo5</b> (controladora MainController). En este caso, debe analizar el c�digo de la controladora, pues la vista relacionada f�sicamente se encuentra en un directorio que no es el raiz de las vistas. Es decir, las vistas se pueden organizar f�sicamentes en difernetes niveles de carpetas. <a href="./ejemplo5">Haz clic aqu�</a></p></div>
            <div class="item"><p><span>Ejemplo 6:</span> Formulario que env�a por m�todo POST a la ruta relativa <b>./ejemplo6</b> (controladora MainController) un n�mero que se recoge con anotaciones @RequestParam (Ver c�digo de la controladora), se trata sumandole 5 y se carga en el Modelo de Spring un nuevo atributo para que alimente la vista que mostrar� el resultado. Tenga en cuenta que da igual que el m�todo de env�o sea GET o POST, pues la forma de recoger los par�metros puede ser la misma.</p>
            				 <div><form name="ejemplo6" method="POST" action="./ejemplo6">
            						  <div><label>N�mero: </label><input type="number" name="numero" required/>+5</div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 7:</span> Formulario que env�a por m�todo POST varios datos del alumno a la ruta relativa <b>./ejemplo7</b> (controladora MainController) y se recoge con anotaciones @RequestParam (Ver c�digo de la controladora), se crea un objeto Alumno (modelo de negocio) que a su vez se carga en el Modelo de Spring que alimentar� la vista.</p>
            				 <div><form name="ejemplo7" method="POST" action="./ejemplo7">
            						  <div><label>Nombre: </label><input type="text" name="fnombre" placeholder="Ej: Miguel" required/></div><!--
            					   --><div><label>Apellidos: </label><input type="text" name="fapellidos" placeholder="Ej: Rodriguez P�rez" required/></div><!--
            					   --><div><label>Edad: </label><input type="number" name="fedad" min="1" max="100"/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 8:</span> Formulario que env�a por m�todo POST varios datos del alumno a la ruta relativa <b>./ejemplo8</b> (controladora MainController) y se recoge con un solo par�metro de tipo MAP con la anotaci�n @RequestParam (Ver c�digo de la controladora), se crea un objeto Alumno (modelo de negocio) que a su vez se carga en el Modelo de Spring que alimentar� la vista. Este ejemplo muestra como se pueden recoger un n�mero indeterminados de par�metros (m�ltiples par�metros) sin especificar por cada par�metro una @RequestParam.</p>
            				 <div><form name="ejemplo8" method="POST" action="./ejemplo8">
            						  <div><label>Nombre: </label><input type="text" name="nom" placeholder="Ej: Miguel" required/></div><!--
            					   --><div><label>Apellidos: </label><input type="text" name="apell" placeholder="Ej: Rodriguez P�rez" required/></div><!--
            					   --><div><label>Edad: </label><input type="number" name="edad" min="1" max="100" required/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 9:</span> Este ejemplo invoca a un m�todo de una controladora que por defecto mapea las rutas bajo ./OtrosEjemplos/ para todos sus m�todos. Esto puede ser interesante si se desea que para cada controladora se mape�n sus m�todos en diferentes regiones o areas. En este caso, al hacer click en el enlace de este ejemplo se invoca a <b>./OtrosEjemplos/ejemplo9</b> (controladora MasEjemplosController) que mostrar� un formulario con el ejemplo 10. <a href="./OtrosEjemplos/ejemplo9">Haz clic aqu�</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>