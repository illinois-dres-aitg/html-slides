# html-slides 1.1
Resources to create HTML slides from an XML document using the command line.  An XSLT stylesheet is used to convert an XML document into a set of HTML files representing a slide show, with an index file and separate html files for slide.  There is an option to include the text from transcription on each the slides from a presentation.

## Examples

* [Basic Slides](https://raw.githack.com/illinois-dres-aitg/html-slides/master/example/index.html)
* [Slides using the transcript option](https://raw.githack.com/illinois-dres-aitg/html-slides/master/example-transcript/index.html)

## Installation

HTML slides uses the `node` modules [saxon-js](https://www.saxonica.com/saxon-js/index.xml) and [xslt3](https://www.saxonica.com/saxon-js/documentation/index.html#!starting/installing-nodejs) for transforming XML files to HTML.  The modules can be installed using the `npm install` command.

## Creating HTML Slides

* Create a sub-directory to keep the XML and HTML slides.
* Place the XML file containing the slide information in the sub-directory.
* Change the command prompt to the sub-directory.
* Use one of the command line files in `html-slides` directory to generate the HTML files in the sub-direcotry.

### Windows

* Use the following command to generate the HTML files from the XML file:

```
..\html-slides\html-slides.bat filename.xml

```

### macOS/Linux

* Use the following command to generate the HTML files from the XML file:

```
../html-slides/html-slides filename.xml

```

## XML Format

### `Slides` Element Options

| Element    | Parent Element | Description |
|------------|--------|-------------|
| conference | slides | Information on the event to include in the index file |
| desc       | slides | Descriptive information about the presentation, can have an `href` attribute for a link.  For example can be used for a link back to a website related to the presentation. |
| footer     | slides | Element contains HTML and text content for the footer of the index and each slide |
| noslidenumbers | slides | Disables generating rendered slide number information in each slide | person     | slides | Information on a person to include in the index file.  There can be more than one person block |
| script     | slide | Contains a reference to a Javascript file included on each slide |
| slide      | slides | Container element for each slide in the set of slides |
| slides     | root   | Container element for all of the information to generate the slides |
| style      | slides | Contains a reference to CSS file to include in each slide |
| title      | slides | A title for the set of slides |
| addtranscript | slides | Enables the generation of a transcript for each slide and a index file of all the transcript information |


### `Person` and `Conference`Element Options

| Element    | Parent Element | Description |
|------------|--------|-------------|
| desc       | person or conference | Descriptive information about a person or conference, can have an `href` attribute for a link |
| name       | person or conference | name of the person or conference, can have an `href` attribute for a link |


### `Slide` Element Options

| Element    | Parent Element | Description |
|------------|--------|-------------|
| contents   | slide | The HTML code fragment for the content of a slide |
| title      | slide  | Used at the H1 element content in each slide as the link text in the index of slides  |
| script     | slide | Javascript block to use for customizing scripting on a slide |
| style      | slide | CSS block to use for customizing content on a slide |
| transcript | slide | Transcript block to allow a transcript of lecture content for that slide to be accessible through a "Transcript" disclosure button on a slide.  Use periods to generate line breaks in the rendered transcript text. |


### Example of XML File Used To Generate HTML Slides

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="funct.css" type="text/css"?>
<?xm-well_formed path="funct.dtd"?>
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>html-slides Example Presentation</title>
  <person>
    <name>Jane Smith</name>
    <desc href="http://myuniversity.edu">My University</desc>
    <desc href="http://college.myuniversity.edu">My College</desc>
    <desc href="mailto:janesmith@myuniversity.edu">janesmith@myuniversity.edu</desc>
  </person>

  <conference>
    <name href="https://someconference.org">Some Conference</name>
    <desc>Online</desc>
    <desc>September 17th, 2020</desc>
  </conference>

  <desc href="https://github.com/illinois-dres-aitg/html-slides">html-slides Home</desc>

  <stylesheet media="screen">../css/bootstrap.min.css</stylesheet>
  <stylesheet media="screen">../css/bootstrap-theme.min.css</stylesheet>
  <stylesheet media="screen">../css/bootstrap-accessibility.css</stylesheet>
  <stylesheet media="screen">../css/html-slides.css</stylesheet>

  <script>../js/jquery-2.1.1.min.js</script>
  <script>../js/bootstrap.min.js</script>
  <script>../js/bootstrap-accessibility.min.js</script>
  <script>../js/html-slides.js</script>

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


To include a button that discloses transcript content on each slide and geneates a trascript page, add the `<addtranscript/>` element as a child of the `<slides>` element. Example of [slides using the transcript option](https://raw.githack.com/illinois-dres-aitg/html-slides/master/example-transcript/index.html).

### Example of Enabling Transcript Feature
```
...
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>html-slides Example Presentation with Transcript</title>
...

```

The for each slide add a `<transcript>` element that contains the trascript information for that slide.

### Example of a Slide with a `transcript` Block

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

## No Slide Number Option

By default each slide has the slide number and total number of slides in the navigation bar at the beginning of every page.  The `noslidenumber` element can be used to not have the slide number information in the navigation bar.

### Example of Disabling Slide Numbers on Each Slide

```
<slides>
 <lang>en</lang>
  <noslidenumbers/>
  <title>html-slides Example Presentation without slide number rendered on each slide</title>
```

## Version History

### Version 1.1
* Updated to bootstrap 5
* Fixed bug with slide number appearing on index page
