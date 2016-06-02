{%- extends 'basic_noin.tpl' -%}
{% from 'mathjax.tpl' import mathjax %}


{%- block header -%}
<!DOCTYPE html>
<html>
<head>
{%- block html_head -%}
<meta charset="utf-8" />
<title>{{resources['metadata']['name']}}</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<script>
$(document).ready(function(){
  $("div.code_cell:not(:has(div.output_wrapper))").hide();
  $("div.input").hide();
  $("div.output_prompt").text("");
})
</script>

{% for css in resources.inlining.css -%}
    <style type="text/css">
    {{ css }}
    </style>
{% endfor %}

<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
  margin-left: 3em;
}

div#notebook {
  overflow: visible;
  border-top: none;
  padding-top: 0;
}

div.container {
  width: 1400px;
  margin-left: 0;
  margin-right: 0;

  /* Get rid of weird shadow around container */
  box-shadow: none !important;
}

/* Allows large pandas tables to be displayed entirely */
div.output_subarea {
  overflow-x: visible;
}

@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  } 
  div.output_wrapper { 
    display: block;
    page-break-inside: avoid; 
  }
  div.output { 
    display: block;
    page-break-inside: avoid; 
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

<!-- Loading mathjax macro -->
{{ mathjax() }}
{%- endblock html_head -%}
</head>
{%- endblock header -%}

{% block body %}
<body>
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">
{{ super() }}
    </div>
  </div>
</body>
{%- endblock body %}

{% block footer %}
</html>
{% endblock footer %}
