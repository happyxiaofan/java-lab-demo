//创建XMLHttpRequest对象         
    function createXMLHttpRequest() {  
        if(window.XMLHttpRequest) { //Mozilla 浏览器  
            XMLHttpReq = new XMLHttpRequest();  
        }  
        else if (window.ActiveXObject) { // IE浏览器  
            try {  
                XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");  
            } catch (e) {  
                try {  
                    XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");  
                } catch (e) {}  
            }  
        }  
    }  
    //发送请求函数  
    function sendRequest(url) {  
        createXMLHttpRequest();  
        XMLHttpReq.open("get", url, true);  
        XMLHttpReq.onreadystatechange = processResponse;//指定响应函数  
        XMLHttpReq.send(null);  // 发送请求  
    }  
    // 处理返回信息函数  
    function processResponse() {  
        if (XMLHttpReq.readyState == 4) { // 判断对象状态  
            if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息  
                updateMenu();  
            } else { //页面不正常  
                alert("您所请求的页面有异常。");  
            }  
        }  
    }  
    //更新菜单函数  
    function updateMenu() {  
        var res=XMLHttpReq.responseXML.getElementsByTagName("res")  
         
        var list = document.all.list;  
        list.options.length=0;  
        for(var i=0;i<res.length;i++){  
            list.add(new Option(res[i].firstChild.data,res[i].firstChild.data));  
        }  
    }  
    // 创建级联菜单函数  
    function showSubMenu(obj) { 
        //window.location.href="test.jsp?sort=" + obj
        sendRequest("lab/menu.jsp?sort=" + obj );  
        // document.all.mli.options[0].selected=true;  
    }    