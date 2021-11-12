function daumPost() {
    new daum.Postcode({
        oncomplete: function(data) {
           var addr = ""
               if(data.userSelectedType === 'R'){
            	   addr = data.roadAddress
               }else{
            	   addr = data.jibunAddress
               }
 			document.getElementById("addr1").value = data.zonecode
			$("#addr2").val(addr)
			$("#addr3").focus()
        }
    }).open();
}