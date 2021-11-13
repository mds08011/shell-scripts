#!/usr/bin/env bash
# Displaying the Last Updated File
# Sometimes you might need to find the last updated file for certain operations. The following simple program shows us how to do this in bash using the awk command. It will list either the last updated or created file in your current working directory.
# For the sake of simplicity, we’ll avoid describing how awk functions in this example. Instead, you can simply copy this code to get the task done.

ls -lrt | grep ^- | awk 'END{print $NF}'