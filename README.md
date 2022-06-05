

. ./literate_executable_readme.sh <<"."
# This is the project.

This is a basic description of what it does.

We'll go over all the options in more detail.

.

HOW2 compile <<"."
# This cleans any old files.
make clean

# The `nproc` doesn't fork-bomb.
make -j$(nproc)
.


HOW2 package <<"."

# First compile it all.
make clean all
.
