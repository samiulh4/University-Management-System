var request1;
var request2;

function searchActiveStudent() {//  searchActiveStudent() Method Start.
    var student_id = document.getElementById("student_id1").value;
    var url = "Search_Active_Student?student_id1=" + student_id;
    if (window.XMLHttpRequest) {
        request1 = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        request1 = new ActiveXObject("Microsoft.XMLHTTP");
    }
    try {
        request1.onreadystatechange = getActiveStudent;
        request1.open("GET", url, true);
        request1.send();
    } catch (e) {
        alert("Unable To Connect To Server");
    }
}// searchActiveStudent() Method End.
function getActiveStudent() {// getActiveStudent() Method Start.
    if (request1.readyState == 4) {
        var data = request1.responseText;
        document.getElementById('table1').innerHTML = data;
    }
}// getStudentActivation() Method End.

function searchDeactiveStudent() {//  searchDeactiveStudent() Method Start.
    var student_id = document.getElementById("student_id2").value;
    var url = "Search_Deactive_Student?student_id2=" + student_id;
    if (window.XMLHttpRequest) {
        request2 = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        request1 = new ActiveXObject("Microsoft.XMLHTTP");
    }
    try {
        request2.onreadystatechange = getDeactiveStudent;
        request2.open("GET", url, true);
        request2.send();
    } catch (e) {
        alert("Unable To Connect To Server");
    }
}// searchDeactiveStudent() Method End.
function getDeactiveStudent() {// getDeactiveStudent() Method Start.
    if (request2.readyState == 4) {
        var data = request2.responseText;
        document.getElementById('table2').innerHTML = data;
    }
}// getDeactiveStudent() Method End.

