# xml-slides
Resources to create HTML slides from an XML document, including an index file of all the files using their titles.

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
| transcript | slides | Enables the generation of a transcript for each slide and a index file of all the transcript information |


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


Example:

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="funct.css" type="text/css"?>
<?xm-well_formed path="funct.dtd"?>
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>xml-slides Example Presentation</title>
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

  <desc href="https://github.com/illinois-dres-aitg/xml-slides">xml-slides Home</desc>

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

Example:
```
...
<slides>
 <lang>en</lang>
  <addtranscript/>
  <title>xml-slides Example Presentation with Transcript</title>
...

```

The for each slide add a `<transcript>` element that contains the trascript information for that slide.

Example:

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

Example:

```
<slides>
 <lang>en</lang>
  <noslidenumbers/>
  <title>xml-slides Example Presentation without slide number rendered on each slide</title>
```

