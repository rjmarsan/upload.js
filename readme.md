#upload.js
A simple upload plugin for Processing.js, and some PHP scripts to manage the files
Currently a work-in-progress

## Upload Usage
include upload.js in your html
```html
<script src="upload.js" type="text/javascript"></script>
```

call upload(sketch, url) to upload it.
```javascript
upload(this, 'myuploadurl');
```

## Download Usage
`getall.php` will return a JSON array of images for you to use.

```javascript
//download all the images by making a call to the getall.php
$.getJSON("/path/to/your/php/getall.php", function(data) {
    //after we have the result, we make an image element for each, and add it to #content
    var target = $("#content"); //save our parent target to a var so we don't need to keep looking it up.
    $.each(data, function(key, val) {
        $("<img class='uploaded' src='path/to/your/images/directory/"+val+"'/>").appendTo(target);
    });
});
```

## Installation
You'll need a server that runs PHP to host your Processing sketch and associated HTML, and the PHP code, which includes the image upload location. Why? [this](http://en.wikipedia.org/wiki/Cross-origin_resource_sharing)
In `server/php` there are several php files. `config.php` contains the path to your images directory. Feel free to edit this to suit your needs. Make sure this folder exists, and is writable by PHP/Your web server.


## Credits
based off of:
http://permadi.com/blog/2010/10/html5-saving-canvas-image-data-using-php-and-ajax/
http://www.kevinsookocheff.com/2011/07/27/saving-canvas-data-to-an-image-file-with-javascript-and-php/
