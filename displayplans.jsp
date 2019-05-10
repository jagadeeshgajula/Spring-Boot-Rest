<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="app2.js"></script>
<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body >
<%
String person = request.getParameter("person");
%>
<input type="hidden" name="person" id="person" value=<%=person %> >
<p><image src="https://healthysolutionsinsuranceservices.com/wp-content/uploads/2016/10/Blue_Shield_of_California.svg_-810x213.png" align="center" height="100" width="250">
   </image> Individual and Family plans:</p>
   <div id="cartItem" class="close"></div>
<hr>

<div class="tab">
	
	  <button class="tablinks">Medical plans
	  <image src="https://www.kent.edu/sites/default/files/og_menu_utilities_images/16-0922-8.gif" align="center" class="tablinks" height="60" width="50">
      </button></image>
           
           
      <button class="tablinks" >Dental plans
      <image src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMkSlsQKTWyjQ2figPCe4tVx6JOco1Wo4pvDbT14TfH2BXvNbUOg" align="center" class="tablinks" height="80" width="80">
      </button></image>
           
      <button class="tablinks" >vision plans
      <image class="tablinks" src="https://image.shutterstock.com/image-vector/vector-round-glasses-icon-symbol-260nw-342114746.jpg" align="center" height="60" width="60">
      </button></image>
            
             <button class="tablinks" id="cart" style="float:right; color:#008CBA;">Shopping Cart:<span id="cnt">0</span></button>           
    </div> 
    
<div id="Medical"   >
     
   	 <h3 style="color: #008CBA;"  align="left" >Medical Plan Quotes</h3>
		
		<p> you may select up to two plans to compare or you may apply for a plan</p>
			Sort by:<select style=" padding: 14px 28px";>
			<option value="Monthly Premium">Monthly Premium</option>
			<option value="Deductible">Deductible</option>
			<option value="Co-Payment Max">Co-Payment Max</option>
			</select> 
	
	<button class="button" style=" padding: 14px 28px"; onclick="check()">Compare
    </div>
  
    <div id="Dental" class="tabcontent"></div>
    <div id="vision" class="tabcontent"></div>
   
<div id="error"> </div>
<div style="float: center;">

     <div  style="display: inline-block;padding: 10px;">
       	<b><p id="head1">Plan Name Monthly Rate/Premium</p></b>
           <p><br/><br/><br/><br/><br/><br/><br/><br/></p>
        <b><p id="row1">Calendar Year Medical Deductible</p></b>
            <p><br/><br/></p>
        <b> <p id="row2">Calendar Year Out-of-Pocket Maximum</p></b>
        </div>
        
      <div id="1" style="display: inline-block;padding: 10px;">
            
            
        </div>
        
        <!-- <div id="2" style="display: inline-block; padding: 10px;">
           <strong> <p id="head3"></p></strong>
           <button class="button1" id="2" onclick="add(this.id)">Add To Cart</button><br />
            <input type="checkbox" name="item" value="2">Compare<br />
            <p><br/></p>
            <p id="r21"></p>
            <p id="r22"></p>
             <p><br/></p>
            <p id="r23"></p>
            <p id="r24"></p>
        </div>
        
        <div id="3" style="display: inline-block; padding:10px;">
          <strong><p id="head4"></p></strong>
           <button class="button1" id="3"  onclick="add(this.id)">Add To Cart</button><br />
            <input type="checkbox" name="item" value="3">Compare<br />
            <p><br/></p>
            <p id="r31"></p>
            <p id="r32"></p>
             <p><br/></p>
            <p id="r33"></p>
            <p id="r34"></p>
        </div> -->
        
    </div>
    <script>
    	document.getElementById("cart").addEventListener("click",function(e)
    			{
    			document.getElementById("cartItem").className="open";
    			});
    	document.getElementById("cartItem").addEventListener("click",function(e){
    		document.getElementById("cartItem").className="close";
    	});
    </script>
    </body>
</html>