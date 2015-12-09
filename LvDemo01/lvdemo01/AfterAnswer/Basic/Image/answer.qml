import QtQuick 2.2

Item {
    width: 800; height: 500;
    Image{
        id: image;
        width: 500;
        anchors.top: parent.top;
        anchors.horizontalCenter: parent.horizontalCenter;
        fillMode: Image.PreserveAspectFit;
        onStatusChanged: {
            if(image.status===Image.Ready){
                mouseLarge.enabled=true;
                mouseSmall.enabled=true;
                text.text="加载完成";
            }else if(image.status===Image.Loading){
                text.text="加载中";
            }
        }
    }
    Rectangle{
        id: rect01;
        width: 100; height: 30;
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
        color: "gray";
        Text{
            anchors.centerIn: parent;
            text: "缩小";
        }
        MouseArea{
            id: mouseSmall;
            enabled: false;
            anchors.fill: parent;
            onClicked: {
                if(image.width>100){
                    image.width=image.width/1.5;
                }
            }
        }
    }
    Rectangle{
        id: rect02;
        width: 100; height: 30;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: parent.bottom;
        color: "gray";
        Text{
            id: text;
            text: "加载";
            anchors.centerIn: parent;
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                image.source="http://www.3dmgame.com/uploads/allimg/141226/276_141226085330_3.jpg";
            }
        }
    }
    Rectangle{
        id: rect03;
        width: 100; height: 30;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        color: "gray";
        Text{
            anchors.centerIn: parent;
            text: "放大";
        }
        MouseArea{
            id: mouseLarge;
            enabled: false;
            anchors.fill: parent;
            onClicked: {
                if(image.width<800){
                    image.width=image.width*1.5;
                }
            }
        }
    }
}

