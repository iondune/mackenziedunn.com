---
layout: default
title: Resume
permalink: /resume/
active: resume
script: |
  $(document).ready(function() {
    $(".pop").popover({html:true});
  });
---

# Resume

<div class="panel panel-danger">
  <div class="panel-heading">
    <h2 class="panel-title"><span class="glyphicon glyphicon-cog" style="margin-right: 10px;"></span>Technical Skills</h2>
  </div>
  <div class="panel-body">
    <h4 class="text-danger" style="margin-top: 0;">Advanced</h4>

{% for skill in site.data.resume.skills.advanced %}
  <button type="button" class="btn btn-default pop" data-container="body" data-toggle="popover" data-placement="top" data-content="{{ skill.description }}">
    {{ skill.name }}
  </button>
{% endfor %}

    <h4 class="text-danger" style="margin-top: 25px">Intermediate</h4>

{% for skill in site.data.resume.skills.intermediate %}
  <button type="button" class="btn btn-default pop" data-container="body" data-toggle="popover" data-placement="top" data-content="{{ skill.description }}">
    {{ skill.name }}
  </button>
{% endfor %}

    <h4 class="text-danger" style="margin-top: 25px">Familiar With</h4>

{% for skill in site.data.resume.skills.familiar %}
  <button type="button" class="btn btn-default pop" data-container="body" data-toggle="popover" data-placement="top" data-content="{{ skill.description }}">
    {{ skill.name }}
  </button>
{% endfor %}

  </div>
</div>


<div class="panel panel-warning">
  <div class="panel-heading">
    <h2 class="panel-title"><span class="glyphicon glyphicon-tasks" style="margin-right: 10px;"></span>Projects</h2>
  </div>
  <div class="panel-body">
    My largest and most interesting project is <a href="http://www.ionengine3d.com">ionEngine</a>. Additionally, see the <a href="projects">Projects</a> and <a href="portfolio">Portfolio</a> sections.
  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h2 class="panel-title"><span class="glyphicon glyphicon-book" style="margin-right: 10px;"></span> Education</h2>
  </div>
  <div class="panel-body">
    <h4 class="no-break text-success">California Polytechnic State University</h4><span style="margin-left: 20px;">San Luis Obispo, CA</span>
    <ul>
      <li>Computer Science MS — <strong>GPA: 3.94</strong></li>
      <li>Software Engineering BS — <strong>GPA: 3.87</strong></li>
      <li>Expected graduation Winter 2016</li>
    </ul>

    <h4 class="text-success">Coursework</h4>
    <div class="row">

{% assign columns_iterator = "1,2,3" | split: "," %}
{% assign course_array = site.data.resume.courses %}
{% assign class_array = "visible-xs col-xs-12,visible-md visible-sm col-sm-6,visible-lg col-lg-4" | split: "," %}

{% for columns in columns_iterator %}
  {% assign each = course_array.size | divided_by: columns | ceil %}
  {% assign class_index = columns | minus: 1 %}

  {% for col in (1..columns) %}
    <div class="{{ class_array[class_index] }}">
      <ul>
        {% for i in (1..each) %}
          {% assign index = col | minus: 1 | times: each | plus: i | minus: 1 %}
          <li>{{ course_array[index].name }}</li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
{% endfor %}

    </div>

    <h4 class="text-success">Publications</h4>
    <div class="row">
      <ul>
        <li><a href="http://www.hmc.edu/lair/publications/2014/nelson_GRAPP_2014.pdf">
          Surface Reconstruction of Ancient Water Storage Systems
        </a></li>
        <li><a href="http://newwww.hmc.edu/lair/publications/2013/dobke_UUST_2013.pdf">
          Towards Three-dimensional Underwater Mappingwithout Odometry
        </a></li>
      </ul>
    </div>
  </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading">
    <h2 class="panel-title"><span class="glyphicon glyphicon-globe" style="margin-right: 10px;"></span> Experience</h2>
  </div>
  <div class="panel-body">
    <div class="row">

{% for experience in site.data.resume.experience %}
  <div class="col-lg-4 col-sm-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h3 class="panel-title">{{ experience.heading }}</h3>
      </div>
      <div class="panel-body">
        {{ experience.body }}
      </div>
    </div>
  </div>

  {% cycle '', '<div class="clearfix visible-md visible-sm"></div>' %}
{% endfor %}

    </div>
  </div>
</div>

<div class="row">
<div class="col-sm-12">
  <p>A static .pdf version of this resume can be found <a href="http://iondune.com/resume/IanDunn.pdf">here</a>.</p>
</div>
</div>
