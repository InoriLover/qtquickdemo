import QtQuick 2.2

Item {
    width: 600; height: 600;
    Rectangle{
        id: rect01;
        width: 300; height: 300;
        color: "pink";
        anchors.left: parent.left;
        Text{
            id: text01;
            anchors.centerIn: parent;
            font.bold: true;
            font.pixelSize: 24;
            text: "已离开";
        }
        MouseArea{
            id: mouseArea01;
            anchors.fill: parent;
            hoverEnabled: true;
            onExited: {
                text01.text="已离开";
            }
            onPositionChanged:  {
                text01.text="X: "+mouseX+"   Y: "+mouseY;
            }
        }
    }
    Rectangle{
        id: rect02;
        width: 300; height: 300;
        color: "salmon";
        anchors.right: parent.right;
        Text{
            id: text02;
            anchors.centerIn: parent;
            font.bold: true;
            font.pixelSize: 24;
            text: "测试文本";
        }
        MouseArea{
            id: mouseArea02;
            anchors.fill: parent;
            onPressed: {
                text02.font.pixelSize=text02.font.pixelSize*2;
            }
            onReleased: {
                text02.font.pixelSize=24;
            }
        }
    }
    Rectangle{
        id: rect03;
        width: 300; height: 300;
        color: "skyblue";
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
        Rectangle{
            anchors.centerIn: parent;
            width: parent.width-40;
            height: 2;
            color: "black";
            Rectangle{
                id: dragRect;
                width: 30; height: 30;
                opacity: 0.5;
                color: "purple";
                radius: 15; antialiasing: true;
                anchors.verticalCenter: parent.top;
                MouseArea{
                    id: mouseArea;
                    anchors.fill: parent;
                    drag{
                        target: parent;
                        axis: Drag.XAxis;
                        minimumX: 0;
                        maximumX: 230;
                    }
                }
            }
        }
    }
    Rectangle{
        id: rect04;
        width: 300; height: 300;
        color: "lawngreen";
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        Text{
            id: text04;
            anchors.centerIn: parent;
            font.bold: true;
            font.pixelSize: 24;
            text: "双左击变色\n单右击恢复初始值";
        }
        MouseArea{
            id: mouseArea04;
            anchors.fill: parent;
            acceptedButtons: Qt.LeftButton|Qt.RightButton;
            onDoubleClicked: {
                if(mouse.button===Qt.LeftButton){
                    rect04.color=Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                }
            }
            onClicked: {
                if(mouse.button===Qt.RightButton){
                    rect04.color="lawngreen";
                }
            }
        }
    }
}

