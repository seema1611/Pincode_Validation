#! /bin/bash -x
shopt -s extglob

#Pattern for pincode
num_Pattern="^[0-9]{6}$"

#Function to check pattern for pincode
function pincodeValidation() {

   if [[ $1 =~ $num_Pattern ]]
   then
      echo "Valid Pincode Format"
   else
      echo "Invalid Pincode Format"
   fi
}

read -p "Enter the pincode:" pincode
pincodeValidation $pincode

