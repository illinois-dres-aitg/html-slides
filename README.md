# xml-slides
Resources to create HTML slides from an XML document.

## Examples

* [Basic Slides](https://raw.githack.com/illinois-dres-aitg/xml-slides/master/example/index.html)
* [Slides using the transcript option](https://raw.githack.com/illinois-dres-aitg/xml-slides/master/example-transcript/index.html)

## Creating HTML Slides

* Use the command prompt to generate the HTML slides from the XML file.
* Create a sub-directory to keep the XML and HTML slides.
* Run the a command to

### Windows

* Edit the `\xml-slides\xml-slides.bat` to define the path the to `\xml-slides\` directory
* Create a directory with your XML and generated HTML files.
* Use the following command to generate the HTML files from the XML file:

```
..\xml-slides\xml-slides.bat filename.xml

```

### macOS/Linux

* Edit the `\xml-slides\xml-slides` to define the path the to `\xml-slides\` directory
* Create a directory with your XML and generated HTML files.
* Use the following command to generate the HTML files from the XML file:

```
..\xml-slides\xml-slides filename.xml

```

## XML Format

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="funct.css" type="text/css"?>
<?xm-well_formed path="funct.dtd"?>
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>xml-slides Example Presentation</title>
  <person>
    <name>John Smith</name>
    <desc href="http://myuniversity.edu">My University</desc>
    <desc href="http://college.myuniversity.edu">My College</desc>
    <desc href="mailto:johnsmith@myuniversity.edu">johnsmith@myuniversity.edu</desc>
  </person>

  <conference>
    <name href="https://someconference.org">Some Conference</name>
    <desc>Online</desc>
    <desc>September 17th, 2020</desc>
  </conference>

  <desc href="../">Presentations</desc>

  <stylesheet media="screen">../css/bootstrap.min.css</stylesheet>
  <stylesheet media="screen">../css/bootstrap-theme.min.css</stylesheet>
  <stylesheet media="screen">../css/bootstrap-accessibility.css</stylesheet>
  <stylesheet media="screen">../css/xml-slides.css</stylesheet>

  <script>../js/jquery-2.1.1.min.js</script>
  <script>../js/bootstrap.min.js</script>
  <script>../js/bootstrap-accessibility.min.js</script>
  <script>../js/xml-slides.js</script>

  <slide>
    <title>Goals</title>
    <contents>
      <ul>
        <li>Goal 1</li>
        <li>Goal 2</li>
        <li>Goal 3</li>
        <li>Goal 4</li>
      </ul>
      <script type="text/javascript">
        slideShowURL()
      </script>
    </contents>
  </slide>

  <slide>
    <title>Topic</title>
    <contents>
      <ul>
        <li>Item 1</li>
        <li>Item 2</li>
        <li>Item 3</li>
        <li>Item 4</li>
      </ul>
    </contents>
  </slide>

</slides>
```

## Transcript


To include a button that discloses transcript content on each slide and geneates a trascript page, add the `<addtranscript/>` element as a child of the `<slides>` element. Example of [slides using the transcript option](https://raw.githack.com/illinois-dres-aitg/xml-slides/master/example-transcript/index.html).

```
...
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>xml-slides Example Presentation with Transcript</title>
...

```

The for each slide add a `<transcript>` element that contains the trascript information for that slide.

```
...
  <slide>
    <title>Topic</title>
    <contents>
      <ul>
        <li>Item 1</li>
        <li>Item 2</li>
        <li>Item 3</li>
        <li>Item 4</li>
      </ul>
    </contents>
    <transcript>
      Something about the first item.
      Something about the second item.
      Something about the third item.
      Something about the fourth item.
    </transcript>
  </slide>
....
```






