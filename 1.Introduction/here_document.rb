#!/usr/bin/ruby -w

print <<EOF
This is the first way of creating
here document ie. multiple line string.
EOF

# same as above
print <<"EOF";
This is the second way of creating
here document ie. multiple line string.
EOF

# you can stack them
print <<"foo", <<"bar"
    I said foo.
foo
    I said bar.
bar

#! execute commands
print <<`EOC`
    echo hi there
    echo lo there
EOC