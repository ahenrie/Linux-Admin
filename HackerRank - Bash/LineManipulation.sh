# Iterate through a file line by line and extract the 2 and 7 char
while IFS= read -r line; do
    char1="${line:1:1}"
    char2="${line:6:1}"
    echo "$char1$char2"
done

# Same thing but with cut
while IFS= read -r line; do
    char1=$(echo "$line" | cut -c2)
    char2=$(echo "$line" | cut -c7)
    echo "$char1$char2"
done


# Display a range of characters starting at the position of a string and ending at the position (both positions included).
while IFS= read -r line; do
    chars=$(echo "$line" | cut -c2-7)
    echo $chars
done

while IFS= read -r line; do
    echo "${line:1:6}"
done
