---
layout: default
title: Projects
permalink: /projects/
active: projects
---


<div class="page-header">
<h1>Projects</h1>
</div>

<h2>On-going</h2>
<p>Projects that I am currently working on</p>
<div class="row">
{% include project-card.html image="vltPog9" name="ionEngine" link="projects/ionengine" description="3d application framework" %}
{% include project-card.html image="4nqK8Jp" name="Adrift" link="projects/adrift" description="space-combat fps roguelike" %}
{% include project-card.html image="5ug4Wk2" name="ICEX Visualization" link="projects/icex-vis" description="volumetric data visualization" %}
{% include project-card.html image="jpgjbiw" name="ICEX Reconstruction" link="projects/icex-geom" description="geometric surface reconstruction" %}
</div>

<hr />

<h2>Finished</h2>
<p>Projects which have reached some sort of conclusive state</p>
<div class="row">
{% include project-card.html image="6Jcpd47" name="Fractal Renderer" link="projects/fractal" description="mandelbrot fractal renderer" %}
{% include project-card.html image="BTLmPEM" name="Ray Tracer" link="projects/raytracer" description="basic software ray tracer" %}
{% include project-card.html image="Pix7XjS" name="Happy Cabbage Adventure" link="projects/happycabbageadventure" description="platform adventure game" %}
{% include project-card.html image="SMQkXPI" name="Oculus Rift Racer" link="projects/riftracer" description="virtual reality racing game" %}
{% include project-card.html image="kSaCuBR" name="AlloyRender" link="projects/alloy" description="heterogeneous render compositor" %}
{% include project-card.html image="qh1DCmN" name="Chopper" link="projects/chopper" description="toy helicopter dodging game" %}
{% include project-card.html image="OEFde4L" name="Geometric Conquest" link="projects/geometricconquest" description="simple rts game" %}
</div>

<hr />

<h2>Backburner</h2>
<p>Projects I'm interested in continuing but not working on right now</p>
<div class="row">
{% include project-card.html image="vB708wf" name="Alluvial" link="projects/alluvial" description="open-world simulation rpg" %}
{% include project-card.html image="ReqFcQV" name="Chronicle" link="projects/chronicle" description="story-driven adventure game" %}
</div>

<hr />

<h2>Unfinished/Abandoned</h2>
<p>Projects that I never finished and don't plan to return to</p>
<div class="row">
{% include project-card.html image="ozJkApK" name="Relic" link="projects/relic" description="WIP crap rpg" %}
{% include project-card.html image="N36BAeq" name="Fireflight" link="projects/fireflight" description="global game jam attempt" %}
</div>


<?php setActive('Projects'); ?>
