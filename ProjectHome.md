The Seam Carving GUI is a GUI front end to [CAIR](http://brain.recall.googlepages.com/cair), which is an
implementation of Arial Shamir's seam carving algorithm (aka content aware image resizing, aka image retargeting).

## A Little History ##

I ran into a comment by Andy Owen re the [Slashdot article](http://science.slashdot.org/article.pl?sid=07/08/25/1835256) about
Content-Aware Image Resizing and decided his late night hack was cool
enough to deserve an easy to use interface. Besides, after a few days of
seeing the [impressive demonstration video](http://www.youtube.com/watch?v=vIFCV2spKtg) about the SIGGRAPH [paper on seam carving](http://www.faculty.idc.ac.il/arik) I found myself wishing I could be doing seam carving on
some images of my own.

Thus version 1.0 through 1.3 of the Seam Carving GUI came to be. Andy has
moved onto other things and I got an email from Brain\_Recall (Joe) about
his work on writing a more true-to-the-paper form of the algorithm. His
stuff looked really quite impressive so I egged him on. Once his code was
functionally complete I change the Seam Carving GUI to use CAIR for the
backend. Not only does his code work much better for stretching images
(and in general), but it's also multi-threaded and has a couple cool new
features. So with the new backend, the Seam Carving GUI reached version
1.4. Since then I have been keeping up with improvements done in CAIR by
Joe and adding features and documentation as requested from users came
in.

## Version History ##

1.11
  * Update to latest CAIR 2.19 with speed improvements (Brain\_ReCall)
  * Ported latest CAIR to Mac OS X (use mach semaphores) (Gabe)
  * Windows build with MSVC 2008 for speed improvements (Gabe)
  * Windows build has installer (Gabe)
  * Updated to Qt 4.5.2 (Gabe)

1.10
  * Update to latest CAIR 2.17 with speed improvements (Brain\_ReCall)
  * Update progress bars to use new CAIR callbacks. (Gabe)

1.9
  * Update to latest CAIR 2.15.1 (Brain\_ReCall)
  * Added forward energy parameter (Brain\_ReCall)
  * Progress bar for HD Quality (Brain\_ReCall)
  * Retain/Remove/Clear Brush now scaled to zoom level (Brain\_ReCall)
  * Upgraded to Qt 4.4.1 (Gabe)
  * Save/Load Mask as PNG (Gabe)
  * The Mask is saved/restored in undo/redo operations (Gabe)
  * Shortcuts changed to be platform specific (Gabe)

1.8
  * Update to latest CAIR 2.13
  * Performance improvements
  * CAIR license change to LGPL v2.1
  * seam-carving-gui license change to GPL v2.0

1.7
  * Update to latest CAIR
  * New choice of edge filter
  * Reorganized GUI a bit around “Remove” function
  * Added a few more tool tips

1.6:
  * Update to latest CAIR
  * Removed marked button (will shrink to remove marked, then expand to original size)
  * HD Mode
  * More parameters to teak hoe CAIR works
  * CAIR performance improvements

1.5:
  * Upgraded to CAIR 2.6.1
  * Can view images horizontal energy function as well as vertical
  * Created a cursor when hovering over the image to represent the mark area size
  * Retain/Remove marks are also shrunk with the image (will not disappear)
  * You can select to erase areas marked for retain/remove

## Features and Screenshots ##

Features and screenshots can be found on the static [Content Aware Image Resizing](http://www.gabeiscodingstatic.com/contentawareimageresizing-seamcarving) google page for the program.

## Technical Details ##

The GUI is written in Qt 4, and should be capable of being built on Mac, Linux and Windows. CAIR is written in C++ and is mostly unmodified from it's source besides some hooks for progress and canceling. It depends on pthreads which are native on Mac/Linux but have a port for building on Win32 (dll included for easy building). All platforms with the proper build environment (libqt4-dev in Ubuntu, otherwise [get Qt4](http://trolltech.com/developer/downloads/qt/) from Trolltech) should be able to build the application. Under Linux run `qmake seam-carving-gui.pro` (or under some distros `qmake-qt4 seam-carving-gui.pro`) and then `make`.

The Windows binary I provide is built with mingw and the mingw redistributable dll is included.

## Platform Specific Instructions ##

Under Mac OS X with Qt Open Source Edition installed (from the pre-built
dmg image), you can build the application from the command line as
follows:
```
$ qmake -spec macx-g++ seam-carving-gui.pro
$ make
$ open SeamCarvingGui.app
```
To package Qt into the application to make it relocatable to another computer, you can run
```
$ bash packageMac.sh
```
Under Windows with MinGW, set your QMAKESPEC environment variable to
win32-g++ and your QTDIR properly (usually handled by the
installer). Then run the following commands:
```
>qmake seam-carving-gui.pro
>mingw32-make
```
The executable will be placed in the "release" directory. Copy
mingwm10.dll and pthreadVSE2.dll into the same directory to be self
contained.

## A Little Wrap Up ##

Enjoy! If you have questions, complaints, or have a cool project you used
this on, feel free to try and reach me at gaberudy+seamcarving@gmail.com,
and if I haven’t completely abandoned this project I may get back to you!

For more information and updates goto my weblog: http://gabeiscoding.com

Cheers
--
Gabe Rudy