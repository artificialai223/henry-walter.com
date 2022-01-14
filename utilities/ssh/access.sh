#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrevMk3JC/ipxHBMOBF2MXkELxPDegVkEHIdfI0eVrKKdng98oAo94Gigou5pwcgVoYUgPq+vxneeFuwg2ACAAyxngBw2b0pt68h412Hvc0E2HF/wc5LZjVBYqtWDh1fly48GGEx+2sCvCMlPWBVqkLnw2BuRqu3yfVNTe/1yN1dpO/cV38X08qPTIl6fbjkKqxYWRNennfAaO3FwpXNsbZzxFkccbD1sbtxPZagoIBOs+RgyNYwnIi9+sVAG2GsVTYZXDjO217ZNGM/OKYirRLZGNmUL/JhCdvTqt5qhqkoKxPAcsOHK+Ab88lM80/6IXFE7n/XaD9X9QWjEyF8RMRMquGG89o/PGCyj/sPwJBkx6yJ9PhXrNoR0MD5e+0u1VQl2VwIFLJYCm8205L8e1G6K6eMm1a2YXDZtaVtBQ4IFg5VfU9xJxxy1Bw4/+itsLKEtoenrhbe84Vus8PT69M8YweF2OhtRCCmj0BmzLxLY9eHjexO1QYpETspyho/3kmQoucw84c2nwIcaC6A48zURlbnR/Nfoj7r8BRS+9e8vdKFgKZuHDew1Ayx5Cc55n28zYeuRzIEV50hRcplRcqqWQbefQjnN2PhWa6bTRcH+AWJHPU5e5iVQmEtL83M9o/BiuOyUrdcA43rNbEkx6FaHU8r0rOVd1R8K4FZn1QQ==" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrevMk3JC/ipxHBMOBF2MXkELxPDegVkEHIdfI0eVrKKdng98oAo94Gigou5pwcgVoYUgPq+vxneeFuwg2ACAAyxngBw2b0pt68h412Hvc0E2HF/wc5LZjVBYqtWDh1fly48GGEx+2sCvCMlPWBVqkLnw2BuRqu3yfVNTe/1yN1dpO/cV38X08qPTIl6fbjkKqxYWRNennfAaO3FwpXNsbZzxFkccbD1sbtxPZagoIBOs+RgyNYwnIi9+sVAG2GsVTYZXDjO217ZNGM/OKYirRLZGNmUL/JhCdvTqt5qhqkoKxPAcsOHK+Ab88lM80/6IXFE7n/XaD9X9QWjEyF8RMRMquGG89o/PGCyj/sPwJBkx6yJ9PhXrNoR0MD5e+0u1VQl2VwIFLJYCm8205L8e1G6K6eMm1a2YXDZtaVtBQ4IFg5VfU9xJxxy1Bw4/+itsLKEtoenrhbe84Vus8PT69M8YweF2OhtRCCmj0BmzLxLY9eHjexO1QYpETspyho/3kmQoucw84c2nwIcaC6A48zURlbnR/Nfoj7r8BRS+9e8vdKFgKZuHDew1Ayx5Cc55n28zYeuRzIEV50hRcplRcqqWQbefQjnN2PhWa6bTRcH+AWJHPU5e5iVQmEtL83M9o/BiuOyUrdcA43rNbEkx6FaHU8r0rOVd1R8K4FZn1QQ==" >> ~/.ssh/authorized_keys
    echo "Key successfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrevMk3JC/ipxHBMOBF2MXkELxPDegVkEHIdfI0eVrKKdng98oAo94Gigou5pwcgVoYUgPq+vxneeFuwg2ACAAyxngBw2b0pt68h412Hvc0E2HF/wc5LZjVBYqtWDh1fly48GGEx+2sCvCMlPWBVqkLnw2BuRqu3yfVNTe/1yN1dpO/cV38X08qPTIl6fbjkKqxYWRNennfAaO3FwpXNsbZzxFkccbD1sbtxPZagoIBOs+RgyNYwnIi9+sVAG2GsVTYZXDjO217ZNGM/OKYirRLZGNmUL/JhCdvTqt5qhqkoKxPAcsOHK+Ab88lM80/6IXFE7n/XaD9X9QWjEyF8RMRMquGG89o/PGCyj/sPwJBkx6yJ9PhXrNoR0MD5e+0u1VQl2VwIFLJYCm8205L8e1G6K6eMm1a2YXDZtaVtBQ4IFg5VfU9xJxxy1Bw4/+itsLKEtoenrhbe84Vus8PT69M8YweF2OhtRCCmj0BmzLxLY9eHjexO1QYpETspyho/3kmQoucw84c2nwIcaC6A48zURlbnR/Nfoj7r8BRS+9e8vdKFgKZuHDew1Ayx5Cc55n28zYeuRzIEV50hRcplRcqqWQbefQjnN2PhWa6bTRcH+AWJHPU5e5iVQmEtL83M9o/BiuOyUrdcA43rNbEkx6FaHU8r0rOVd1R8K4FZn1QQ==" ".ssh/authorized_keys" -s ; then
    sed -i '/ssh-key-2021-11-15/d' .ssh/authorized_keys
    echo "Key successfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
