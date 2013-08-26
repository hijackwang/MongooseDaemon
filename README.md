#MongooseDaemon

`MongooseDaemon` is an objective C wrapper around
the embedable `mongoose` http server for iOS or Mac
development. It is ideal for both embedded http services
as well as simply debugging your iOS or Mac applications
file structure. `MongooseDaemon` is offered under a BSD
style license.

`Mongoose` is a lightweight embedable http server
written by Sergey Lyubka and offered under
a BSD style license. More information on
mongoose can be found at the [project's
github](https://github.com/valenok/mongoose).

##Usage

Clone the project directory and add submodules. Add the following files to your Xcode project:

- `MongooseDaemon.h|.m`
- `mongoose/mongoose.h|.c`

Then you can start it within one of your classes to
provide http access to your iOS or Mac application.

For example, to start `MongooseDaemon` when your application
starts on port 8888:

Add the following to `MyAppDelegate.m`:

    #import "MongooseDaemon.h"
    
    @implementation MyAppDelegate {
        MongooseDaemon    *mongooseDaemon;
    }
    
    - (void)applicationDidFinishLaunching:(UIApplication *)application {
        mongooseDaemon = [[MongooseDaemon alloc] init];
        mongooseDaemon.listeningPort = 8888;
        [mongooseDaemon start];
    }
    - (void)dealloc {
        [mongooseDaemon stop];
    }

And that's it!

##TODO

- Add support for more of mongoose's options.
- Implement mongoose callbacks and fire delegate/notifications.

---

Credit:
2008 Rama McIntosh, 
2013 CIM

Mongoose is dual-licensed. It is available under the terms of GNU GPL v.2 license license for free, or under the terms of standard commercial license provided by Cesanta Software.
