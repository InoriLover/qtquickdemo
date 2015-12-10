import QtQuick 2.2

Item {
    id: container;
    width: 200; height: 360;
    Column{
        anchors.left: parent.left;
        anchors.top: parent.top;
        spacing: 16;
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
    }
    Column{
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        spacing: 16;
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                text: "1";
                font.pixelSize: 24;
            }
        }
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                text: "2";
                font.pixelSize: 24;
            }
        }
        Rectangle{
            width: 50;
            height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                text: "3";
                font.pixelSize: 24;
            }
        }
    }
}

