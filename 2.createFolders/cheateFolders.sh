for i in {1..10}
do
  dir_name="folder_$i"
  mkdir "$dir_name"
  echo "$dir_name created!"
done

echo "Finished!!"