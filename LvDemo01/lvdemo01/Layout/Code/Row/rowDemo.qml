import QtQuick 2.2

Item {
    id: container;
    width: 360; height: 200;
    Row{
        id: row01;
        anchors.left: parent.left;
        anchors.top: parent.top;
        spacing: 16;
        layoutDirection: Qt.LeftToRight;
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
    }
    Row{
        id: row02;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        spacing: 16;
        layoutDirection: Qt.RightToLeft;
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
        Rectangle{
            width: 100;
            height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
    }
}



