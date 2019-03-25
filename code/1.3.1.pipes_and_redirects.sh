#!/bin/bash
mkdir lbthw_pipes_redirects
cd lbthw_pipes_redirects

# Type ls to check that there are no files in this new folder
ls

# Now we're going to echo something, but instead of outputting to the terminal
# we're going to redirect to a file.
echo "contents of file1" > file1
ls
cat file1

#What we've done there is create a file just by using the right chevron, and
the output of the echo command got redirected to that file. This is a basic
redirect.
# Pipe
cat file1 | grep -c contents

# Again, you'll notice that the output of cat did not go to the terminal. Instead it got piped to the input of another command. The pipe operator - so called because it looks like a pipe, but also because it acts like a plumbing component that connects two things together - also redirects the output of one command to the input of another.
# The resulting output uses the grep program to count (with the minus c flag) the number of times the word contents is seen. If you're not familiar with what grep is you will need to learn as it's one of the most commonly used shell programs.  The wiki page for grep is a good place to start.
# You might be wondering why we need pipes? You could just write the output of one command to a file, and then run another command on that file, then delete that file.
# There are a few reasons why pipes are better. One is that less disk space is used. The data is passed from one command to the other without the need to write to disk. If the output of the first command is very large, this can be a significant saving.
# Another reason is that it's faster. Both the left and the right command are run at the same time, and the data is passed between them while they both run.
# Next I'm going to show you an example of where the output of one command is NOT passed through the pipe.
cat file2
# You'll get an error saying the file does not exist. No surprise there.
# Now what happens if you try to pipe the output of that file to grep again?
cat file2 | grep -c No
# That may be surprising to you. This time the output of the cat command was not redirected, but instead went to the terminal. Why is that?
# The answer is that not all output you see in the terminal is the same.
#There are different channels that output can go to. Most output goes to what is called the 'standard out' channel, and this channel by default goes to the terminal, unless you redirect it. However, there is another output channel called 'standard error', and this channel is also normally directed at the terminal. So, when you run the cat command on a non-existent file, the error you see is pushed to this 'standard error' channel instead of the 'standard out' channel.
# Now a rule about pipes is that they only pass the standard out to the receiving program, not the standard error. So when the file does not exist, cat puts the error on standard error, so the pipe does not receive that data. In fact, it receives nothing, so grep outputs zero to its standard output.
# Questions you might ask at this point are:
#- what decides whether the output goes to one channel or the other?
#- isn't standard out and standard error a bit of a mouthful?
# For the first, the application developer decides whether the output goes to one channel or the other. And they are not always consistent about it. Some applications put their help text on standard error, and some on standard output, for example [vagrant vs grep].
# For the second quesiton, standard out and standard error are a bit of a mouthful, so there is an alternative way to reference them. Standard out is referred to as 'file descriptor 1', and standard error is referred to as 'file descriptor 2'. These file descriptors are automatically created as part of every process and associated with the terminal by default - assuming you're running on a terminal. In other words, they conform to 'standard' - hence standard output, standard error.
# There is another standard file descriptor - standard input, which is referred to as file descriptor 0.  Standard input, as the name suggests, directs data to the input of a command.
# So, for example, if we want to pass a file's contents to grep then we can use the left chevron to do that. Type
grep -c contents < file1
# If you go back to the original redirect command we ran
echo "contents of file1" > file1
# we used the right chevron to redirect file descriptor 1 or standard out to a file. We could also have written this, and it would have been exactly equivalent.
echo "contents of file1" 1> file1
# The added '1' indicates that file descriptor one is being redirected. The one is implicitly added by default, but you can change it to other file descriptor numbers.
# Now remove the file you created.
rm file1
# What will happen?
# echo "contents of file1" 2> file1
POLL TODO
- 'contents of file1' in file1
- no file1 at all
- empty file1
- error
- something else

# ?? TODO Compare:
 cat file1 | grep -c contents
# except that we don't use a program (cat in this case) to push standard out to a pipe, which in turn passes the data to the standard input of the grep program.
# One pattern you see quite often in bash is the suppression of standard error.  If you know errors are coming and don't care for whatever reason and you don't want it filling up your terminal, then you may want

# Here we're going to look at a simple example to illustrate. If we type in a command that doesn't exist:
qwerty
# we get an error message, as you might expect. If we try to redirect the output to a file
qwerty > error
# then it has no effect. But we can tell the redirect operator to push the standard error output to a file by specifying the file descriptor 2 rather than the implicit file descriptor 1:
qwerty 2> error
# Great - we've created a file called error that contains the standard error output:
cat error
# But we still might have a problem - if the error output is huge then we have created a massive file that we will only then want to delete. What we want is a special file to redirect to that can just eat data without writing it to disk. Such a special file exists and is called devnull. If you type
qwerty 2> /dev/null
# then the output is placed in a data sink that eats data for as long as you write to it. If you try and cat that file
cat /dev/null
# then nothing comes out.
# Slash dev is a folder in linux that has files in it that represent real and virtual devices, like printers, terminals, disk drives  and so on.
# Within this, null is a special device that acts as a file but doesn't write anything anywhere.
# There are other devices like this available, such as dev zero, which emits zeros, and dev random, which outputs random data.
# Another common pattern seen is that users want to direct standard error and standard out to the same file.
# One way to achieve this is with the ampersand operator. First we redirect standard error to the same place as standard output like this:
qwerty 2>&1
# To break this down, the first two characters (two and right chevron) tell the shell that we are referring to standard error, and the last two (ampersand and one) tell the shell that the output of standard error should be directed to wherever standard output is pointed at.
# Now we want to redirect that to a file. This is where things get very tricky. After decades of working with bash I still forget how to do this, and have to either look it up or run a simple example to check that I'm right.
# You might think that it would be as simple as this:
qwerty 2>&1 > alloutput
# But that does not work! The error output ends up on the terminal, and not the file. Reversing the order of the operators, however, does work:
qwerty > alloutput 2>&1
# This feels very counter-intuitive, but there is a good reason for it. Key to understanding this is to read the command left to right rather than as a whole.
# With the first command, what we instructed was
qwerty 2>&1
# 'Run the qwerty command, and wire standard error to wherever standard ouptut is pointed to right now.'
# At this point in the command, standard output is pointed at the terminal, so standard error is wired to the terminal. When we add the redirection of standard output to the file in the command
qwerty 2>&1 > alloutput
# then the shell only redirects the standard output to the file and NOT the standard error.
# If we reverse the order in the correct version, then we say, from left to right:
qwerty > alloutput 2>&1
# 'Run the qwerty command, and redirect standard output to a file. Then redirect standard error to wherever standard output is going now'
# If you want to master this technique, which is very often used, then remember to read the command from left to right and remember that each channel is individually wired to go wherever it's configured to rather than 'fused' together in any sense.

# So far you have seen only one kind of redirection to a file that uses the right chevron.
echo "Some content" > file3
# This create a new file and writes the otuput to it.
cat file3
# But what happens if the file already exists? If you re-run the redirection command but slightly altered:
echo "Some other content" > file3
# you see that the file has been effectively deleted, and a new one put in its place
cat file3
# A redirection resulting in an existing file being recreated from empty and its old contents deleted is called 'clobbering'. If you want to append to the end of a file, then you use two right chevrons.
echo "Some further content" >> file3
cat file3
# Multiple chevrons (both left and right) can mean different things in different contexts, so it can take a while to get all of them clear in your mind.
# With respect to redirection, it's often safer to use two right chevrons when redirecting. Even if the file doesn't exist, it will still create it if necessary.
# Cleanup
cd ..
rm -rf lbthw_pipes_redirects
