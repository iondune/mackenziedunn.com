---
layout: default
title: Style Guidelines
permalink: /etc/style/
active: etc
---

<h1>Style Guidelines</h1>

<h2>Overview</h2>

<p>
This is the codified style guidelines I use for all of my projects. It is focused in particular
on C++ use but may generally be applicable to other languages. It contains both syntactic styling rules
(such as whitespace use, naming conventions, etc.) and semantic rules (related to class design and
preferred functionality).
</p>

<h2>Syntax Rules</h2>

<h3>Basic Structure</h3>

<h4>Indentation</h4>

<p>
Use hard tabs for all left-side indentation. Hard tabs are actual <code>\t</code> characters which
have not been expanded manually into regular space characters. This is a somewhat controversial
choice, but I make it adamantly because I find the arguments against to be weak and due to a few key
benefits.
</p>

<p>
The most typical argument against hard tab usage is that it produces files which appear inconsistent
across different environments and editors. I believe that this is an advantage, however. I have
never worked on a software team that agreed over how many spaces each indent level should have
(preferring anything from 2, 3, 4, 8, and even others). Using hard tabs allows each developer to
use their preferred indentation level without interfering with anyone else.
</p>

<p>
Another common argument is that hard tabs make it difficult or impossible to align parameters to a function
definition across multiple lines, as in the following example:
</p>

<pre class="prettyprint">// Do Not Do This!
void Function(Argument foo,
              Argument bar)
{
}</pre>

<p>
However, as discussed later in this document, I do not employ alignment of this nature, preferring to
keep all arguments on the same line if possible or breaking to a singly increased level of indentation
if not. Consider:
</p>

<pre class="prettyprint">void Function(Argument foo,
----Argument bar)
{
}</pre>

<p>
Note that in the above and all following examples, I'll specify a hard tab as a series of 4 dashes.
This implies that the preferred tab size is 4 spaces, which it is, but it is not explicitly required
as such - that is the beauty of hard tabs.
</p>

<h4>Line Wrapping</h4>

<p>There is no specific column maximum specified by these style guidelines. In particular, I prefer
to allow code to end past 80 columns when necessary. With modern screenspace availability the traditional 80
column limit is somewhat outdated. Something along the lines of 120-160 is more appropriate, even when allowing
for multiple windows tiled horizontally on a single monitor, but no such limit is stipulated by this guideline.</p>

<p>However, lines should not stretch indefinitely. The most common sources of long lines are
lengthy parameter lists and many layers of indentation within a single function. As described
later in this document, both of these constructs are discouraged by semantic rules.</p>

<h4>Curly Brace Placement</h4>

<p><strong>In all cases</strong> where the closing curly brace is on a different line, place the opening curly brace on a new line as well. Consider:</p>

<pre class="prettyprint">if (Test)
{
----for (x = 0; x &lt; 10; ++ x)
----{
--------printf("%d\n", x);
----}
}</pre>

<pre class="prettyprint">class Foo
{
public:
----struct Bar
----{
--------int x;
--------double y;
----}
}</pre>

<p>The stipulation about which line contains the closing curly brace exists to allow usage of, for example, this clean
usage of an initializer list.</p>

<pre class="prettyprint">DoWithList({x, y, z});</pre>

<p>It is not required to always avoid indentation in these cases, however. Consider the following acceptable
definition of a bodyless method.</p>

<pre class="prettyprint">void Foo()
{}</pre>

<h3>Naming Conventions</h3>

<h4>Classes and Types</h4>

<p>Names of types should be camel case with the first letter lowercase.</p>

<p>Examples:</p>

<pre class="prettyprint">typedef double f64;
struct vec2
{
----float x, y;
};
</pre>

<p>Definitions of constructs which behave like primitive types should mimic the appearance of built-in type keywords. For
example, a two-dimensional vector is implemented as an object but behaves most like a primitive type, so it
should be styled accordingly.</p>

<?php setActive('Etc.'); ?>
