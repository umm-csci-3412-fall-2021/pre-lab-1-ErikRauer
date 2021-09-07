#!/bin/bash

# Match the pattern for r0_input.txt and convert to proper format
# Recognizes pattern <name>, <food> 
awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt > r0_output.txt

# Match the pattern for r1_input.txt and convert to proper format
# Recognizes pattern: I am <name>. <any characters> is <sandwich type>
awk 'match($0, /I am ([a-zA-Z]+). .* is ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt

# Match the pattern for r2_input.txt and convert to proper format
# Recognizes pattern: sandwich with <toppings> <for here or to go>
awk 'match($0, /sandwich with ([a-zA-z.]+) (for here|to go)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r2_input.txt > r2_output.txt

