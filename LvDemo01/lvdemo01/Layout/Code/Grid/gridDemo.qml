import QtQuick 2.2

Item {
    id: container;
    width: 500; height: 500;
    Grid{
        rows: 3;
        rowSpacing: 5;
        columnSpacing: 16;
        columns: 3;
        anchors.centerIn: parent;
        flow: Grid.TopToBottom;
        layoutDirection: Qt.RightToLeft;
        horizontalItemAlignment: Qt.AlignHCenter;
        verticalItemAlignment: Qt.AlignVCenter;
        Rectangle{
            width: 100; height: 150;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "1";
            }
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "2";
            }
        }
        Rectangle{
            width: 150; height: 30;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "3";
            }
        }
        Rectangle{
            width: 50; height: 80;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "4";
            }
        }
        Rectangle{
            width: 150; height: 150;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "5";
            }
        }
        Rectangle{
            width: 100; height: 150;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "6";
            }
        }
        Rectangle{
            width: 150; height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "7";
            }
        }
        Rectangle{
            width: 120; height: 150;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "8";
            }
        }
        Rectangle{
            width: 150; height: 150;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Text{
                anchors.centerIn: parent;
                font.pixelSize: 24;
                font.bold: true;
                text: "9";
            }
        }
    }
}

