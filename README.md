----------------------------------------------------------------------------------------------------------------------
                                             SpringProyectDemo1                                                      
                                                                                                                    
                                          Autor: Daniel Pérez Pérez                                                  
                                             Fecha: 25/08/2022                                                       
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
DESCRIPCIÓN
----------------------------------------------------------------------------------------------------------------------
Ejemplo de creación de un proyecto web con maven en el contexto de Spring. Ejemplo de uso de controladoras, mapeos de
rutas, modelo de spring, etc.

La versión de org.springframework.web.servlet.DispatcherServlet (ver web.xml) es incompatible con jakarta.servlet.Servlet. Por lo que para ejecutar este proyecto debe hacerlo con Apache TomCat 9 dado que Apache TomCat 10 implementa la nueva estructura JakartaEE. 

Si deseas crear aplicaciones web con Spring sobre Apache TomCat 10 es mejor que utilices spring boot. (Localiza mis repositorios sobre aplicaciones web con Spring Boot 3).

----------------------------------------------------------------------------------------------------------------------
ESPECIFICACIÓN TÉCNICA DE DESARROLLO UTILIZADO
----------------------------------------------------------------------------------------------------------------------
Entorno de Desarrollo: Eclipse, versión: 2022-03 (4.23.0)
Servidor: Apache Tomcat, versión: 9
Jdk: OpenJdk, versión: 17.1
Gestor de proyecto: Maven, versión: 3.8.0
Id Artefacto maven: maven-archetype-webapp, versión: 1.4
Faceta:  Dynamic Web Module, versión: 4.0

----------------------------------------------------------------------------------------------------------------------
DEPENDENCIAS
----------------------------------------------------------------------------------------------------------------------
Spring Framework: Spring Web MVC v.5.3.22      
Javax servlet: v.4.0.1
              
----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA ABRIR EL PROYECTO EN ECLIPSE
----------------------------------------------------------------------------------------------------------------------
1º. Copie el directorio con el código en el directorio de su espacio de trabajo de eclipse.
2º. Desde eclipse, importe el proyecto haciendo click en File -> Open Projects from File System 
3º. En Import source, haciendo click en el botón "Directory..." seleccione la carpeta que contiene el proyecto.
4º. Haga click en Finish
5º. Se recomienda realizar un Maven Update (Click derecho sobre el proyecto Maven -> Update Project...
6º. Recompilar (salvo que tenga activado compilación automática).
7º. Ejecutar, por ejemplo haciendo click derecho sobre el proyecto -> Run As -> 1 Run on Server

----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA LA LECTURA Y ANÁLISIS DEL PROYECTO
----------------------------------------------------------------------------------------------------------------------
Para el análisis de este proyecto, se recomienda seguir el siguiente orden, el cual, casi coincide con el orden que se ha seguido para configurar e implementar este proyecto y que se indica a continuación:

1º Creación del proyecto MAVEN con Artigact Id: maven-archetype-webapp (y eliminación del fichero .jsp que aparece por defecto).

2º Modificación del fichero POM.XML
	- Adaptar la versión del JDK modificando y estableciendo las propiedades maven.compiler.source y maven.compiler.target con valor 17
	- Añadir las dependencias javax.servlet-api, spring-webmvc
        - (Forzar un Maven Update Proyect para importar las dependencias).

3º Modificación del fichero de despliegue web.xml añadiendo la configuración den servlet que ejecutará el contenedor principal de spring e indicación del fichero .xml de configuración del contenedor de spring relativo a las peticiones de usuario (session-context.xml). Notar que la versión del esquema de web.xml es la 4.0 la cual debe coincidir con la versión de la faceta de Dinamic Web Proyect en las propiedades del proyecto. Revisar que en las propiedades del proyecto la versión Dinamic Web Proyect sea 4.0 y en Java Build Path figuren las dependencias de maven como chequeadas.

4º Creación del fichero /WEB-INF/app-context.xml que contiene la configuración del contenedor de spring.

5º Creación de los directorios de los recursos: /src/main/webapp/img, /src/main/webapp/styles y /src/main/webapp/WEB-INF/views y sus recursos.

6º Creación de las clases contenidas en el paquete es.dsw.controllers y es.dsw.models

Nota: Analice cada uno de los ejemplos que se le proporciona en este proyecto.
