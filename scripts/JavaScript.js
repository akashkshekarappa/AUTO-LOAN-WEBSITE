function myFunc() {
    alert("Work in progress!");
}

function loadDoc() {

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            myFunction(this);
        }
    };
    xhttp.open("GET", "rates.xml", true);
    xhttp.send();

}

function myFunction(xml) {

    var i;
    var xmlDoc = xml.responseXML;
    var table = "<tr><th>Loan Amount</th><th>24 - 36 Mon</th><th>37 - 48 Mon</th><th>49 - 60 Mon</th><th>61 - 72 Mon</th><th>73 - 84 Mon</th></tr>";
    var x = xmlDoc.getElementsByTagName("loan");
    for (i = 0; i < x.length; i++) {
        table += "<tr><td>" +
            x[i].getElementsByTagName("LoanAmount")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("twoThreeYears")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("threefourYears")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("fourfiveyears")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("fivesixyears")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("sixsevenyears")[0].childNodes[0].nodeValue +
            "</td></tr > ";
    }
    document.getElementById("demo").innerHTML = table;
}

function toggleTable() {
    var x = document.getElementById("collapseme");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }

}

function Check() {
    var chkPassport = document.getElementById("confirmValidation");
    var zip = document.getElementById('homeZip'); 
    var loanAmt = document.getElementById('loanAmount'); 
    var loanTerm = document.getElementById('loanTerm');

    if ((zip.value == "" && loanAmt.value == "" ) && loanTerm.value == "") {

        return false;
    }
    else {
        //if (chkPassport.checked) {

        //    alert("Your application is submitted. You will receive a confirmation email to the email address in the file.");
        //}
        if (!(chkPassport.checked)) {
            alert("Please accept confirmation checkbox.");
        }
    }
}

function Confirm() {
    var confirm_value = document.createElement("INPUT");
    confirm_value.type = "hidden";
    confirm_value.name = "confirm_value";
    if (confirm("Are you sure you want to log out?")) {
        confirm_value.value = "OK";
    } else {
        confirm_value.value = "Cancel";
    }
    document.forms[0].appendChild(confirm_value);
}

$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});