import QtQuick 2.2

Item {
    width: 500; height: 500;
    Image{
        id: image;
        width: 200;
        asynchronous: true;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        fillMode: Image.PreserveAspectFit;
        source: "images/slark.jpg"
        onStatusChanged: {
            if(image.status===Image.Ready){
                text.text="加载完毕";
                image.width=500;
            }else if(image.status===Image.Loading){
                text.text="加载中";
            }
        }
    }
    Rectangle{
        width: 100; height: 30;
        anchors.bottom: parent.bottom;
        anchors.horizontalCenter: parent.horizontalCenter;
        color: "pink";
        Text{
            id: text;
            anchors.centerIn: parent;
            text: "加载图片";
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                image.source="http://www.3dmgame.com/uploads/allimg/141226/276_141226085330_3.jpg";
            }
        }
    }
}

