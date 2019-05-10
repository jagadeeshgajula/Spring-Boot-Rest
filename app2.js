var cartCount;
var i=0;
var data; 
$.ajax({
	url : "http://localhost:6002/bsc/plan"
}).then(function(data, status, jqxhr) {

	this.data = data;
	var person = document.getElementById('person').value;
	
	for(i=0;i<data.length;i++){
		console.log(person*data[i].premium)
	document.getElementById('1').innerHTML+=
    	`<form action="success.jsp">
    	<div id="1" style="display: inline-block;padding: 10px;">
        <strong><p id="head2">Minimum Coverage PPO $`+data[i].premium*person+`</p></strong>
        <input type="hidden" name="premium" value="`+data[i].premium*person+`">
        <input type="hidden" name="planName" value="`+data[i].plan_Name+`">
        <button class="button1" id=`+i +` onclick="add(this.id)">Add To Cart</button><br />
        <input type="checkbox" name="item" value="1">Compare<br />
        <p><br/></p>
        <p id="r11">Individual - $7,900</p>
        <p id="r12">Family - $15,800</p>
        <p><br/></p>
        <p id="r13">Individual - $7,900</p>
        <p id="r14">Family - $15,800</p>
        <input type="submit">
    </div>
    </form>`;
	}
	console.log(this.data[0]);
});

function add(value)
{
	if(!cartCount)
		{
			++i;
			checkOutBtn='<div><button style="background-color:#008CBA; padding:10px; border-radius:10px;">CheckOut</button></div>';
			/*<input type="button" value="X" name="remove" id="remove" onclick="remove()" >*/
			rembtn='<div><button>X</button></div>';
							cartCount=data[value];
							document.getElementById('cnt').innerHTML=i;
							document.getElementById('cartItem').innerHTML=cartCount.head+rembtn+checkOutBtn;
		}

}
function check()

{

	var checked = 0;
	
	var j =0;
	
	var d = document.getElementsByName('item');
	
	for(i=0;i<d.length;i++){
	
	if(d[i].checked)

	{

		checked++;
		
		if(checked > 2)

		{

				document.getElementById('error').innerHTML = '<p>you can compare only 2 planes </p>';
				
				document.getElementById('error').style="display:block"

		}

		else{

				document.getElementById('error').style="display:none";

			}

}

if((checked >= 1 ) ){

	for(j=0;j<d.length;j++)

			if((!d[j].checked)){

					document.getElementById(d[j].value).style="display:none"; 

			} 

	} 

 } 

}


    
