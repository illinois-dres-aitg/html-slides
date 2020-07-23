# xml-slides
Resources to create HTML slides from an XML document

## Creating HTML Slides

Use the command prompt to gene

### Windows


### macOS/Linux


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

Add the `<addtranscript/>` element as a child of the `<slides>` element.

```
...
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>xml-slides Example Presentation with Transcript</title>
...

```

The for each slide add a `<transcript>` element.

```
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
```






