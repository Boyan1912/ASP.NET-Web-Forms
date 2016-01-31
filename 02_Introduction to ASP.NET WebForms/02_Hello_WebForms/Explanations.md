# Auto-generated files & folders explanations

## Folders
	+ App_Data - designated to contain application data files including .mdf database files, XML files, and other data store files. The App_Data folder is used by ASP.NET to store an application's local database, such as the database for maintaining membership and role information.
	+ App_Start - groups ASP.NET configuration. Initially contains:
		* BundleConfig.cs - registers CSS and JS so that they can be bundled and minified.
		* RouteConfig.cs - used to register various route patterns for the Asp.Net application.
	+ Content - used for static files like style sheets (css files), icons and images. Initially it contains the bootstrap.css files.
	+ fonts - contains fonts, Initially - glyphicons
	+ Scripts - stores the JavaScript files of the application. By default Visual Web Developer fills this folder with standard WebForms, bootstrap, and jQuery files.

## Files
	+ Bundle.config - configurations for the Bundle class
	+ Global.asax - contains code for responding to application-level events raised by ASP.NET or by HttpModules. The Global.asax file resides in the root directory of an ASP.NET-based application. At run time, Global.asax is parsed and compiled into a dynamically generated .NET Framework class derived from the HttpApplication base class. The Global.asax file itself is configured so that any direct URL request for it is automatically rejected; external users cannot download or view the code written within it. The Application_Start Method starts the application and calls its configuration methods.
	+ Site.Master - the layout for the pages in the application. A single master page defines the look and feel and standard behavior for all of the pages (or a group of pages) in the application.
	+ Web.config - Configuration data stored in XML file. One can specify configuration settings that affect all Web applications on a server, that affect only a single application, that affect individual pages, or that affect individual folders in a Web application. configuration settings can be made for features such as compiler options, debugging, user authentication, error-message display, connection strings, and more.

## The "code behind" model
	When a WebForm is added to the application it generates an ".aspx" file that is easy to extend and add features to. This is then immediately reflected in the ".aspx.designer.cs" file which in its turn allows for the "code-behind" class - ".aspx.cs" - to have access to the form's components and the request the form generates. It is then easy to control the server response's output at the specified route.
