/*
    这个是全选按钮的全选与全不选*

 */
function reverseCheckbox(name) {
    var checkboxes=document.getElementsByName(name);
    for(var i =0; i<checkboxes.length;i++){
        if(checkboxes[i].checked==true)
            checkboxes[i].checked=false;
        else
            checkboxes[i].checked=true;
    }
}