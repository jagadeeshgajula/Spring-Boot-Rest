var seeplansebtn;
var persons=0;
function zipCodeValidator() {
	var num = document.getElementById('zip_id').value;

	matches = num.match(/^[0-9]{5}(?:-[0-9]{4})?$/);
	startWith = /^9[0-9].*$/;
	if (matches) {
		if (!(startWith.test(matches[0]))) {
			alert("Invalid ZIP");
		}
		if ((startWith.test(matches[0]))) {
			$.ajax({
				url : "http://localhost:6002/bsc/area/"+num
			}).then(function(data, status, jqxhr) {

				if(data == true)
					{
					seeplansebtn = true;
					}
			});
		}

	}
}

function mySelf() {

	var myselfdtbtn = document.getElementById('myselfDate');
	var myselfrvbtn = document.getElementById('remove');
	myselfdtbtn.style.visibility = 'visible';
	myselfrvbtn.style.visibility = 'visible';

}

function myselfbtnDisplay() {

	var valueDate = document.getElementById('myselfDate').value;
	console.log(valueDate);
	if (valueDate != null || valueDate != '')

	{
		if(seeplansebtn)
			{
		document.getElementById('plansButton').disabled = false;
		
		$.ajax({
			url : "http://localhost:6002/bsc/plan"
		}).then(function(data, status, jqxhr) {
			persons++;
			document.getElementById('planRates').innerHTML = data[0].premium*persons;
			console.log(data[0].premium+"*"+persons+"="+data[0].premium*persons);
			document.getElementById('person').value = persons;
			console.log(document.getElementById('person').value);
			
		});
			}
	}

}

function Remove() {
	var elemDate = document.forms.myForm.myselfDate;
	var elemRemove = document.forms.myForm.remove;
	elemDate.style.visibility = 'hidden';
	elemRemove.style.visibility = 'hidden';
	document.getElementById('plansButton').disabled = true;
	$.ajax({
		url : "http://localhost:6002/bsc/plan"
	}).then(function(data, status, jqxhr) {
		persons--;
		document.getElementById('planRates').innerHTML = data[0].premium * persons;
		console.log(data[0].premium*this.persons);
		document.getElementById('person').value = persons;
		console.log(data[0].premium);
	});
}

function mypartner() {

	var patdtbtn = document.forms.myForm.mypartnerDate;
	var patrvbtn = document.forms.myForm.patremove;
	patdtbtn.style.visibility = 'visible';
	patrvbtn.style.visibility = 'visible';

}
function myPartnerDisplay() {

	var valueDate = document.getElementById('mypartnerDate').value;
	console.log(valueDate);
	if (valueDate != null || valueDate != '')

	{
		if(seeplansebtn)
			{
		document.getElementById('plansButton').disabled = false;
		
		$.ajax({
			url : "http://localhost:6002/bsc/plan"
		}).then(function(data, status, jqxhr) {
			persons++;
			document.getElementById('planRates').innerHTML = data[0].premium*persons;
			console.log(data[0].premium+"*"+persons+"="+data[0].premium*persons);
			document.getElementById('person').value = persons;
			
		});
			}
	}

}


function patRemove() {
	var elemDate = document.forms.myForm.mypartnerDate;
	var elemRemove = document.forms.myForm.patremove;
	elemDate.style.visibility = 'hidden';
	elemRemove.style.visibility = 'hidden';
	
	$.ajax({
		url : "http://localhost:6002/bsc/plan"
	}).then(function(data, status, jqxhr) {
		persons--;
		document.getElementById('planRates').innerHTML = data[0].premium * persons;
		console.log(data[0].premium*persons);
		document.getElementById('person').value = persons;
		console.log(document.getElementById('person').value);
	});

}

function myDependent1() {

	var depdtbtn = document.getElementById("depDate1");
	var deprvbtn = document.getElementById("depremove1");
	var depbtn = document.getElementById("dependent2")
	depdtbtn.style.visibility = 'visible';
	deprvbtn.style.visibility = 'visible';
	depbtn.style.visibility = 'visible';

}

function depRemove1() {
	var elemDate = document.getElementById("depDate1");
	var elemRemove = document.getElementById("depremove1");
	var depbtn = document.getElementById("dependent2")
	elemDate.style.visibility = 'hidden';
	elemRemove.style.visibility = 'hidden';
	depbtn.style.visibility = 'hidden';

}

function myDependent2() {

	var depdtbtn = document.getElementById("depDate2");
	var deprvbtn = document.getElementById("depremove2");
	var depbtn3 = document.getElementById("dependent3")
	depdtbtn.style.visibility = 'visible';
	deprvbtn.style.visibility = 'visible';
	depbtn3.style.visibility = 'visible';

}

function depRemove2() {
	var elemDate = document.getElementById("depDate2");
	var elemRemove = document.getElementById("depremove2");
	var depbtn = document.getElementById("dependent2")
	var depbtn3 = document.getElementById("dependent3")
	elemDate.style.visibility = 'hidden';
	elemRemove.style.visibility = 'hidden';
	depbtn.style.visibility = 'hidden';
	depbtn3.style.visibility = 'hidden';
}

function myDependent3() {
	alert("Maximum of Two Dependents can be added");
}

