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
`getall.php` will return a JSON array of images for you to use




Consult the examples and server directories for a better idea on what's going on.



based off of:
http://permadi.com/blog/2010/10/html5-saving-canvas-image-data-using-php-and-ajax/
http://www.kevinsookocheff.com/2011/07/27/saving-canvas-data-to-an-image-file-with-javascript-and-php/
