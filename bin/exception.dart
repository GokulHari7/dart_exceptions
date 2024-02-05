class InvalidPhoneNumberException implements Exception{

}

bool? validatePhoneNumber(String phone){
  if(phone.length==10){
    return true;
  }else{
    throw InvalidPhoneNumberException();
  }
}

void main(){
  //exception handling
  try{
    final phoneValid=validatePhoneNumber('78678333');
  } 
  on InvalidPhoneNumberException catch(_){ //already known exceptions can be written like this. If there are more than one known exceptions, code it also in this way using on
    print('Invalid phone number');
  }
  catch(e){  //these are unknown exceptions
    print(e);
  }
  
}