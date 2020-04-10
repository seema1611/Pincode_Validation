#! /bin/bash -x
shopt -s extglob

#Pattern for pincode
num_Pattern="^([0-9]{3}[ ])*[0-9]{3}$"
first_alphabate_Pattern="^[A-Za-z@$^*!#%&]{1,}[0-9]*$"
last_alphabate_Pattern="^[0-9]*[A-Za-z]{1,}"

#Function to check pattern for pincode
function pincodeValidation() {

   if [[ $1 =~ $num_Pattern ]]
   then
      echo "Valid, Proper pincode"
   elif [[ $1 =~ $first_alphabate_Pattern ]]
   then
      echo "Invalid, Pincode start with alphabate or special character format"
   elif [[ $1 =~ $last_alphabate_Pattern ]]
   then
      echo "Invalid, Pincode Ends with alphabates format"
   else
      echo "Invalid, Pincode has not in the format"
   fi
}

read -p "Enter the pincode:" pincode
pincodeValidation $pincode



