#!/bin/bash

#!/bin/bash

# Create a text file and write multiple lines to it
cat <<EOL > textfile.txt
This is the first line of text

EOL

# Append another line to the text file
echo "This is an appended line of text" >> textfile.txt

# Display the contents of the text file
cat textfile.txt
