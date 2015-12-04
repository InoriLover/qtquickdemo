import QtQuick 2.2

Item {
    width: 500; height: 500;
    Rectangle{
        width: parent.width; height: 400;
        anchors.top: parent.top;
        color: "pink";
        Text{
            id: textTest;
            anchors.centerIn: parent;
            text: "FishyChen--slark";
            font.pixelSize: 10;
        }
    }
    Rectangle{
        width: parent.width; height: 100;
        anchors.bottom: parent.bottom;
        color: "white";
        Rectangle{
            id: container;
            width: parent.width-120;
            height: 2;
            color: "black";
            anchors.centerIn: parent;
            Rectangle{
                id: rectDrag;
                width: 20; height: 20;
                radius: 10; antialiasing: true;
                color: "purple";
                opacity: 0.8;
                anchors.verticalCenter: parent.top;
                MouseArea{
                    id: mouseArea;
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton|Qt.RightButton;
                    onDoubleClicked: {
                        if(mouse.button===Qt.RightButton){
                            rectDrag.color=Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                        }
                    }
                    onPositionChanged: {
                        textTest.font.pixelSize=10+(rectDrag.x/(container.width-20))*48;
                    }
                    drag{
                        target: rectDrag;
                        axis: Drag.XAxis;
                        minimumX: 0;
                        maximumX: container.width-20;
                    }
                }
            }
        }
    }
}

