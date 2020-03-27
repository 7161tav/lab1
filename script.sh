#!/bin/bash
answer=y
while [[ $answer == "y" ]]
do
  echo "by Tomshin Artyom. It s programm for create/delete/move your file"
  echo "Select [1] if you want to create file"
  echo "Select [2] if you want to delete file"
  echo "Select [3] if you want to move file"
  read choice
  echo "write the file name"
  read file
  case "$choice" in
    1)
      if  ls | grep "$file"
      then
        echo "file already exists"
      else
        touch $file
        echo "$file was created"
      fi ;;
    2)
      if  ls | grep "$file"
      then
        rm $file
        echo "file was deleted"
      else
        echo "$file does not exist"
      fi;;
    3)
      if  ls | grep "$file"
      then
        read -p "where do you want to move the file?   " path
        mv $file $path
        echo "file was moved"
      else
        echo "$file does not exist"
      fi;;
    *)
      echo "you shoud select 1-3"
      ;;
  esac
  echo "Do you want restart program? (y/n)"
  read answer
done

