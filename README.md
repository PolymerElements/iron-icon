# iron-icon

The `<iron-icon>` element displays an icon.

## How to style an iron-icon
The default style of an `<iron-icon>` can be changed with CSS. Here's an example that changes the default size of an iron-icon from 24px-by-24px to 32px-by-32px:

    <style>
      .big {
        height: 32px;
        width: 32px;
      }
    </style>

    <iron-icon class="big" src="star.png"></iron-icon>

## How to display an iron-icon
An `<iron-icon>` can be displayed using one of two attributes: `src` or `icon`.

An example using the `src` attribute:

    &lt;!-- step 1 of 2: import iron-icon --&gt;
    <link rel="import" href="/components/iron-icon/iron-icon.html">
    
    &lt;!-- step 2 of 2: specify a path to an image --&gt;
    <iron-icon src="<image>"></iron-icon>

Here's an example that loads an image from the same directory: 

    <link rel="import" href="/components/iron-icon/iron-icon.html">

    <iron-icon src="star.png"></iron-icon>

An example using the `icon` attribute:
    
    &lt;!-- step 1 of 2: import a set of icons --&gt;
    <link rel="import" href="/components/iron-icons/<iconset>-icons.html">

    &lt;!-- step 2 of 2: specify an iconset and an icon of the set --&gt;
    <iron-icon icon="<iconset>:<icon>"></iron-icon> 

Polymer includes several sets of icons. Each of these sets are placed inside of an HTML file of [iron-icons](#iron-icons). (Notice that icons is pluralized!)

Tip: Whenever you import a set of icons from `iron-icons`, you're also indirectly importing `iron-icon`. In other words, if you import `iron-icons` in a file, you don't have to explicitly import `iron-icon`.

Here's an example that selects the "menu" icon from the set of icons in iron-icons/iron-icons.html:

    <link rel="import" href="/components/iron-icons/iron-icons.html">

    <iron-icon icon="iron:menu"></iron-icon>

TIP: Polymer's default set of icons is iron-icons. If you select an icon from this set, you can specify just the name of the icon as the value of the `icon` attribute.  

Here's an example that selects the "email" icon from the set of icons in iron-icons/communications-icons.html:

    <link rel="import" href="/components/iron-icons/communication-icons.html">

    <iron-icon icon="communication:email"></iron-icon>

Extra: To create your own set of icons, explore [iron-iconset](#iron-iconset) for bitmap icons and [iron-iconset-svg](#iron-iconset-svg) for SVG icons. 

Extra: To view Polymer's provided set of icons, explore [iron-icons](#iron-icons)