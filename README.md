# usb-mount-notifier
Simple command line app that print to stdout when usb drive mounted and unmounted with mount point

You can find executable in build directory.

Use with node.js:
```
var spawn = require('child_process').spawn,
    usb_notifier = spawn('usb-mount-notifier');

usb_notifier.stdout.on('data', function (data) {
  console.log('stdout: ' + data);
});
```

example of output:
```
unmounted: /Volumes/Transcend
mounted: /Volumes/Transcend
unmounted: /Volumes/Transcend
```

Works with OS X.

# License
usb-mount-notifier is released under the [MIT License](http://opensource.org/licenses/MIT)
