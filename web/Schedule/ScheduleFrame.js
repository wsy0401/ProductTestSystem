function ClickForDetails(obj) {
    var imgs = obj.getElementsByTagName("img");
    var reqDetail = obj.nextElementSibling;
    if (imgs[0].style.display != "none") {
        imgs[0].style.display = "none";
        imgs[1].style.display = '';
        reqDetail.style.display = '';
    }
    else {
        imgs[0].style.display = "";
        imgs[1].style.display = "none";
        reqDetail.style.display = "none";
    }
}
/*
* @li 用于定位当前点击的是哪个ScheduleItem，传入的参数为this
* @tabNo 用于定位当前点击的是哪个menubox中的menu，同时用于遍历中的限制
* @tabLimit 用于限制最多可以有多少个menu
* */
function setTab(li, tabNo, tabLimit) {
    var menubox = li.parentElement.parentElement;//第一层parentElement是ul，第二层才是menubox
    var contentbox = menubox.nextElementSibling;
    var tabs = contentbox.children;
    for (var i = 0; i < 4; i++) {
        if (tabs[i])
            tabs[i].style.display = (i == tabNo ? "block" : "none");
    }
}