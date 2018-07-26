#!/bin/sh
############################################
# Returns the git commit count for use as a build number similar to svn rev
############################################
git rev-list HEAD | wc -l | tr -d ' '


