
/**
 * 
 * @param day ����
 * @param time ��
 * @param semester ѧ��
 * @param term ѧ��
 * @param weeks �ܴ�
 * @return
 */
function OpenWin(day, time, semester, term, weeks) {
	var returnValue = showModalDialog('FreeLabList.jsp?time=' + time + '&day='
			+ day + '&semester=' + semester + '&term=' + term + '&weeks=' + weeks);
}


function showModalDialog(url){
	var newWindow;//����һ���´���
	if (!newWindow || newWindow.closed) {
        var width = 200;
        var height = 200;
        var left = parseInt((screen.availWidth/2) - (width/2));//��Ļ����
        var top = parseInt((screen.availHeight/2) - (height/2));
        var windowFeatures = "width=" + width + ",height=" + height + ",toolbar=no, menubar=no,status=no,resizable=no,location=yes,left=" + left + ",top=" + top + "screenX=" + left + ",screenY=" + top;
        newWindow = window.open(url, "subWind", windowFeatures);
        //������ʷҳ��
        window.location.reload(true);
//        history.go(0);
    } else {
        // window is already open, so bring it to the front
        newWindow.focus();
    }
}