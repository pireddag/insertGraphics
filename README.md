# insertGraphics
Inserts Scheme graphics in a TeXmacs document

The Scheme functions go in `.TeXmacs/progs/insertGraphics` (pay attention to the case!). I have already placed them in a directory with the right name and nesting, the tree `/insertGraphics/` needs to be copied to the `prog` directory of TeXmacs.

Load the package `insertGraphics`.

The `insertGraphics` command takes one arguments, which is the absolute or relative file paths of a file, and outputs a TeXmacs graphics.

The file must consist of valid Scheme commands and define a variable called `SchemeGraphics` containing the graphics specified in TeXmacs Scheme format. This variable is then converted into a TeXmacs tree and forwarded to TeXmacs for typesetting.

There is a test file and its pdf output (`test_insertGraphics.tm` and `test_insertGraphics.pdf`); the TeXmacs test file reads the files `graphicsCommands.scm`; it expects it to be in the same directory as itself.

## Security

In order to run this macro in TeXmacs it is necessary to set the security level to "Accept all scripts".

**One is then responsible for making sure that his TeXmacs documents are running only safe scripts!** 

Unsafe scripts could delete all the data on your hard drive.

Please see how to change TeXmacs security options in the TeXmacs manual (section 1, "User preferences", of the part "Configuring TeXmacs"). I am not writing it here so that a conscious effort on the part of the user is needed to change the setting.
