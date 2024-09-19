#!bin/bash
# read folder-structure.txt

folder_structure="folder-structure.conf"

ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
    alias pandock='docker run --rm -v "$(pwd):/data" -u $(id -u):$(id -g) pandoc/core'
else
    alias pandock='docker run --platform=linux/x86_64 --rm -v "$(pwd):/data" -u $(id -u):$(id -g) pandoc/core'
fi

echo -e "Do you want to create project in this folder/path?\n$(pwd)"
read -p "Press y to continue or n to exit: " confirm

if [ "$confirm" == "y" ]; then
    read -p "Enter the folder structure file name, like 'axx-bxx-...': " file_name
    mkdir -p "$file_name"
    uppercase=$(echo $file_name | sed 's/-/ /g' | awk '{for(i=1; i<=NF; i++) printf toupper(substr($i,1,1))}')
    read -p "Do you want to create File Manuscript_${uppercase}_v1.md? (y/n): " file_a
    if [ "$file_a" == "y" ]; then
        touch "$file_name/Manuscript_${uppercase}_v1.md"
        echo "Creating file: File Manuscript_${uppercase}_v1.md"
    fi
    read -p "Do you want to create a custom-reference.docx file? (y/n): " file_b
    if [ "$file_b" == "y" ]; then
        pandock -o "$file_name/custom-reference.docx" --print-default-data-file reference.docx
        echo "Creating file: custom-reference.docx"
    fi
    while IFS= read -r line
    do
    mkdir -p "$file_name/$line"
    echo "Creating folder: $line"
    done < "$folder_structure"

    if [ -d "$file_name/Config" ]; then
        mv "$file_name/custom-reference.docx" "$file_name/Config"
    fi

    exit 0
else
    echo "Exiting..."
    exit 1
fi