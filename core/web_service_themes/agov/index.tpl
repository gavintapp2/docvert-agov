<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ACT Government Docvert trial">
		<meta name="author" content="ACT Government">
    <title>Docvert&thinsp;&mdash;&thinsp;web service</title>

    <link rel="stylesheet" type="text/css" href="static/agov/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,600italic,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="static/agov/screen.css">

    <script type="text/javascript" src="lib/jquery/jquery-1.5.min.js"></script>
    <script type="text/javascript" src="static/agov/jquery.dropp.js"></script>
    <script type="text/javascript" src="static/agov/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/agov/index.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body onunload="" class="index-page">
    
    <nav class="navbar">
      <ul id="nav-main">
        <li><a href="mailto:pascal.klein@act.gov.au">Contact</a></li>
        <li><a href="tests">Tests</a></li>
        <li><a href="/" class="current">Web Service</a></li>
      </ul>
    </nav>
      
    <div class="container">
	    <header class="clearfix">
        <h1><a href="http://docvert.com/">Doc<span class="syllable">vert</span> <span class="version">5.1</span></a></h1>
        <p class="what">Welcome to the <abbr title="Australian Capital Territory">ACT</abbr> Government&rsquo;s <abbr  title="Microsoft">MS</abbr> Word <code>.docx</code> &rarr; <abbr title="HyperText Markup Language">HTML</abbr> conversion system.</p>
          <p>A few notes about this system:</p>
          <ul>
            <li>input files must make proper use of Word “styles” to designate document hierarchies</li>
          	<li>input files must be prepared for publication&thinsp;&mdash;&thinsp;<strong>do not</strong> upload documents not intended for public dissemination</li>
          	<li>this conversion system is open source software</li>
          </ul>
      </header>
		  
		  <section id="content">
		    <form method="post" action="web-service" enctype="multipart/form-data" role="form">
          <div id="">
            <fieldset id="upload_fieldset" class="form-group">
              <legend>Upload Documents</legend>
                <div id="upload_documents">
              	  <div id="upload_from_file" class="upload_button">
              	    <label for="upload_file"><span>From File</span></label>
              	    <input type="file" name="upload_file[]" id="upload_file" multiple="multiple">
                  </div>
              	  <div id="upload_from_web" class="upload_button">
              	    <label for="upload_web"><span>From Web</span></label>
                  </div>
                </div>
              	<h2 class="upload_list">Documents to Convert</h2>
              	  <ul id="upload_list">
              	  </ul>
		  			</fieldset>
		  			<fieldset id="pipelines" class="form-group">
              <legend>Theme (<abbr title="Extensible Markup Language">XML</abbr> Pipeline)</legend>
              <label for="pipeline">
                <select name="pipeline" id="pipeline" class="form-control">
                  % for pipeline in sorted(pipelines):
                  <option value="{{pipeline['id']}}">{{pipeline['name']}}</option>
                  % end			
                </select>
              	Select an output format. For <abbr title="HyperText Markup Language">HTML</abbr> select <em>Web Standards</em>
              </label>
            </fieldset>
            <fieldset id="autopipelines">
              <legend>
                <input type="hidden" name="break_up_pages_ui_version" id="break_up_pages_ui_version" value="2">
              	<input type="checkbox" name="break_up_pages" id="break_up_pages"/>
              	  <label for="break_up_pages">Break over multiple pages?</label>
              </legend>
              <div id="autopipelines_options">
                <p class="note"><span>Please note that some pipelines don&rsquo;t support multiple pages.</span></p>
              	<select name="autopipeline" id="autopipeline">
                  % for auto_pipeline in auto_pipelines:
              	  <option value="{{auto_pipeline['id']}}">{{auto_pipeline['name']}}</option>
                  % end			
		  					</select>
              </div>
            </fieldset>
		  			<div id="upload_from_web_dialog">
              <input type="text" name="upload_web[]" id="upload_web">
		  			</div>
		  			<fieldset id="advanced">
		  				<legend><a href="#advanced">Advanced <span class="showHide">&#9654;</span></a></legend>
		  				<div class="inner">
		  					<p id="afterconversion">
                  <label for="after_conversion_preview"><input type="radio" id="after_conversion_preview" name="afterconversion" value="preview" checked="checked">Preview conversion</label> &nbsp;
              	  <label for="after_conversion_zip"><input type="radio" id="after_conversion_zip" name="afterconversion" value="zip">Download .ZIP</label>
                </p>
              </div>
            </fieldset>
            <div id="submit_error">
              <span>Please choose a file or web <abbr title="Uniform Resource Locator">URL</abbr> to convert</span>
            </div>
            <div id="button_tray">
              <input type="submit" value="Submit" id="upload_submit" class="btn btn-primary">
            </div>
          </div><!-- closes #page -->
		  		<div id="libreOfficeStatus" class="libreOfficeStatus_{{libreOfficeStatus}}">LibreOffice <span></span></div>
		  	</form>
		  </section>
		  
		  <footer>
		    <p>foobar</p>
		  </footer>
		  
    </body>
  </div> <!-- closes .container -->
</html>