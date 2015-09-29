//����XMLHttpRequest����         
    function createXMLHttpRequest() {  
        if(window.XMLHttpRequest) { //Mozilla �����  
            XMLHttpReq = new XMLHttpRequest();  
        }  
        else if (window.ActiveXObject) { // IE�����  
            try {  
                XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");  
            } catch (e) {  
                try {  
                    XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");  
                } catch (e) {}  
            }  
        }  
    }  
    //����������  
    function sendRequest(url) {  
        createXMLHttpRequest();  
        XMLHttpReq.open("get", url, true);  
        XMLHttpReq.onreadystatechange = processResponse;//ָ����Ӧ����  
        XMLHttpReq.send(null);  // ��������  
    }  
    // ��������Ϣ����  
    function processResponse() {  
        if (XMLHttpReq.readyState == 4) { // �ж϶���״̬  
            if (XMLHttpReq.status == 200) { // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ  
                updateMenu();  
            } else { //ҳ�治����  
                alert("���������ҳ�����쳣��");  
            }  
        }  
    }  
    //���²˵�����  
    function updateMenu() {  
        var res=XMLHttpReq.responseXML.getElementsByTagName("res")  
         
        var list = document.all.list;  
        list.options.length=0;  
        for(var i=0;i<res.length;i++){  
            list.add(new Option(res[i].firstChild.data,res[i].firstChild.data));  
        }  
    }  
    // ���������˵�����  
    function showSubMenu(obj) { 
        //window.location.href="test.jsp?sort=" + obj
        sendRequest("lab/menu.jsp?sort=" + obj );  
        // document.all.mli.options[0].selected=true;  
    }    