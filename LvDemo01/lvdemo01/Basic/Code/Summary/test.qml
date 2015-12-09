import QtQuick 2.2

Item {
    id: container;
    width: 500; height: 500;
    property real colorR: 0;
    property real colorG: 0;
    property real colorB: 0;
    function setColor(R,G,B){
        testRect.color=Qt.rgba(R,G,B,1.0);
        console.log(R,G,B);
    }
    Text{
        text: "ColorPicker by FishyChen";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 8;
        font.bold: true;
        font.pixelSize: 24;
    }
    Rectangle{
        id: testRect;
        width: 150;
        height: 150;
        color: "black";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 48;
        border.width: 2; border.color: "black";
        radius: 10; antialiasing: true;
    }
    Rectangle{
        id: rectR;
        width: 150; height: 2;
        color: "gray";
        anchors.left: rectB.left;
        anchors.bottom: rectG.top;
        anchors.bottomMargin: 40;
        Rectangle{
            id: dragR;
            x: -12;
            width: 24; height: 24;
            opacity: 0.7; color: "purple";
            radius: 12; antialiasing: true;
            anchors.verticalCenter: parent.verticalCenter;
            MouseArea{
                anchors.fill: parent;
                drag.target: dragR;
                drag.axis: Drag.XAxis;
                drag.minimumX: 0-12;
                drag.maximumX: rectR.width-12;
                onPositionChanged: {
                    textR.text=parseInt((dragR.x+12)/rectR.width*100)+"%";
                    colorR=(dragR.x+12)/rectR.width;
                    setColor(colorR,colorG,colorB);
                }
            }
        }
        Image{
            anchors.right: parent.left;
            anchors.rightMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/left.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragR.x>-12){
                        dragR.x=dragR.x-rectR.width/100;
                        textR.text=parseInt((dragR.x+12)/rectR.width*100)+"%";
                        colorR=(dragR.x+12)/rectR.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
        Image{
            anchors.left: parent.right;
            anchors.leftMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/right.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragR.x<(rectR.width-12)){
                        dragR.x=dragR.x+rectR.width/100;
                        textR.text=parseInt((dragR.x+12)/rectR.width*100)+"%";
                        colorR=(dragR.x+12)/rectR.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
    }
    Text{
        id: textR;
        width: 60;
        horizontalAlignment: Text.AlignHCenter;
        anchors.verticalCenter: rectR.verticalCenter;
        anchors.left: rectR.right;
        anchors.leftMargin: 56;
        text: "0%";
        Rectangle{
            anchors.fill: parent;
            anchors.margins: -4;
            z: -1;
            color: "transparent";
            border.width: 2;
            border.color: "skyblue";
        }
    }
    Rectangle{
        id: rectG;
        width: 150; height: 2;
        color: "gray";
        anchors.left: rectB.left;
        anchors.bottom: rectB.top;
        anchors.bottomMargin:40;
        Rectangle{
            id: dragG;
            x: -12;
            width: 24; height: 24;
            opacity: 0.7; color: "purple";
            radius: 12; antialiasing: true;
            anchors.verticalCenter: parent.verticalCenter;
            MouseArea{
                anchors.fill: parent;
                drag.target: dragG;
                drag.axis: Drag.XAxis;
                drag.minimumX: 0-12;
                drag.maximumX: rectG.width-12;
                onPositionChanged: {
                    textG.text=parseInt((dragG.x+12)/rectG.width*100)+"%";
                    colorG=(dragG.x+12)/rectG.width;
                    setColor(colorR,colorG,colorB);
                }
            }
        }
        Image{
            anchors.right: parent.left;
            anchors.rightMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/left.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragG.x>-12){
                        dragG.x=dragG.x-rectG.width/100;
                        textG.text=parseInt((dragG.x+12)/rectG.width*100)+"%";
                        colorG=(dragG.x+12)/rectG.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
        Image{
            anchors.left: parent.right;
            anchors.leftMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/right.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragG.x<(rectG.width-12)){
                        dragG.x=dragG.x+rectG.width/100;
                        textG.text=parseInt((dragG.x+12)/rectG.width*100)+"%";
                        colorG=(dragG.x+12)/rectG.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
    }
    Text{
        id: textG;
        width: 60;
        horizontalAlignment: Text.AlignHCenter;
        anchors.verticalCenter: rectG.verticalCenter;
        anchors.left: rectG.right;
        anchors.leftMargin: 56;
        text: "0%";
        Rectangle{
            anchors.fill: parent;
            anchors.margins: -4;
            z: -1;
            color: "transparent";
            border.width: 2;
            border.color: "skyblue";
        }
    }
    Rectangle{
        id: rectB;
        anchors.bottom: parent.bottom;
        anchors.left: parent.left;
        anchors.bottomMargin: 40;
        anchors.leftMargin: 40;
        color: "gray";
        width: 150; height: 2;
        Rectangle{
            id: dragB;
            x: -12;
            width: 24; height: 24;
            opacity: 0.7; color: "purple";
            radius: 12; antialiasing: true;
            anchors.verticalCenter: parent.verticalCenter;
            MouseArea{
                anchors.fill: parent;
                drag.target: dragB;
                drag.axis: Drag.XAxis;
                drag.minimumX: 0-12;
                drag.maximumX: rectB.width-12;
                onPositionChanged: {
                    textB.text=parseInt((dragB.x+12)/rectB.width*100)+"%";
                    colorB=(dragB.x+12)/rectB.width;
                    setColor(colorR,colorG,colorB);
                }
            }
        }
        Image{
            anchors.right: parent.left;
            anchors.rightMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/left.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragB.x>-12){
                        dragB.x=dragB.x-rectB.width/100;
                        textB.text=parseInt((dragB.x+12)/rectB.width*100)+"%";
                        colorB=(dragB.x+12)/rectB.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
        Image{
            anchors.left: parent.right;
            anchors.leftMargin: 8;
            anchors.verticalCenter: parent.verticalCenter;
            source: "images/right.png";
            MouseArea{
                anchors.fill: parent;
                onClicked: {
                    if(dragB.x<(rectB.width-12)){
                        dragB.x=dragB.x+rectB.width/100;
                        textB.text=parseInt((dragB.x+12)/rectB.width*100)+"%";
                        colorB=(dragB.x+12)/rectB.width;
                        setColor(colorR,colorG,colorB);
                    }
                }
            }
        }
    }
    Text{
        id: textB;
        width: 60;
        horizontalAlignment: Text.AlignHCenter;
        anchors.verticalCenter: rectB.verticalCenter;
        anchors.left: rectB.right;
        anchors.leftMargin: 56;
        text: "0%";
        Rectangle{
            anchors.fill: parent;
            anchors.margins: -4;
            z: -1;
            color: "transparent";
            border.width: 2;
            border.color: "skyblue";
        }
    }
    Text{
        text: "RGB值为：\n"+parseFloat(colorR).toFixed(2)+"\n"+parseFloat(colorG).toFixed(2)+"\n"+parseFloat(colorB).toFixed(2);
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        anchors.rightMargin: 40;
        anchors.bottomMargin: 120;
        font.pixelSize: 24;
    }
}


