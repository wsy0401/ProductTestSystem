/*
        * 这里的作用是自动设置Frame的高度，前提条件是iframe的src和当前文件在同一个顶级域名下
        * 具体请参考http://caibaojian.com/iframe-adjust-content-height.html
        */
/*
 * When the iframe is on a different subdomain, uncomment the following line
 * and change "example.com" to your domain.
 */
// document.domain = "example.com";
function setIframeHeight(obj) {
    // var iframe=document.getElementById("ProjectHandleIframe");
    var iframe=obj;
    if (iframe) {
        var iframeContent = iframe.contentWindow || iframe.contentDocument;
        if (iframeContent.document.body) {
            iframe.paddingTop=20+"px";
            iframe.height = iframeContent.document.documentElement.scrollHeight || iframeContent.document.body.scrollHeight;
        }
    }
};