#! /bin/bash -x
shopt -s extglob

#Pattern for pincode
num_Pattern="^[0-9]{6}$"
first_alphabate_Pattern="^[A-Za-z@$^*!#%&]{1,}[0-9]*$"

#Function to check pattern for pincode
function pincodeValidation() {

   if [[ $1 =~ $num_Pattern ]]
   then
      echo "Valid, Proper pincode"
   elif [[ $1 =~ $first_alphabate_Pattern ]]
   then
      echo "Invalid, Pincode start with alphabate or special character format"
   else
      echo "Invalid, Pincode has not in format "
   fi
}

read -p "Enter the pincode 6 digit:" pincode
pincodeValidation $pincode


