

#resize all files (photo) recursively for all photo in currentt directory:

for file in * {jpeg, jpg,  png, gitt, tiff}; do sips -Z 2048 "$file" --out "scaled_$file"; done


# Specify the input directory
input_dir="/Volumes/Seagate_Two/Family Drive/Videos and Photos/2023/2023.10.7 临澧维也纳/流程"

# Specify the output directory
output_dir="/Users/emilyli/Documents/PHOTO/Wedding_Photo_China_20231007/selected_from_200"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Resize and save photos to the specified output directory
for file in "$input_dir"/*.{jpeg,jpg,png,gif,tiff}; do
    filename=$(basename "$file")
    sips -Z 512 "$file" --out "$output_dir/scaled_$filename"
done