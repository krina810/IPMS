/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

    function Empty(element, AlertMessage){ 
        if(element.value.trim()=== ""){ 
            alert(AlertMessage); element.focus(); return false; }	
        
        return true; } 
   
    function emailValidator(element, alertMsg){ 
        var emailvalid = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/; 
        if(element.value.match(emailvalid)) { 
            
            return true;
        }else{ 
            alert(alertMsg); element.focus(); return false; } }
    
    function onlynumbers(inputtxt)  
{  
  var phoneno = /^\d{10}$/;  
  if(inputtxt.value.match(phoneno))  
        {  
      return true;  
        }  
      else  
        {  
        alert("Enter 10 digits...");  
        return false;  
        }  
}

 


