import QtQuick 2.2

Item {
    width: 500;
    height: 500;
    Rectangle{
       width: 120;
       height: 120;
       color: "red";
       scale: 1.5;
       anchors.top: parent.top;
       anchors.topMargin: 40;
       anchors.left: parent.left;
       anchors.leftMargin: 40;
    }
    Rectangle{
        width: 120;
        height: 120;
        color: "yellow";
        rotation: 45;
        anchors.top: parent.top;
        anchors.right: parent.right;
    }
    Rectangle{
        width: 120;
        height: 120;
        color: "blue";
        opacity: 0.5;
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
    }
    Rectangle{
        width: 120;
        height: 120;
        color: "green";
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
    }
    Rectangle{
        id: rect01;
        width: 120;
        height: 120;
        color: "pink";
        anchors.centerIn: parent;
        z: 3;
    }
    Rectangle{
        id: rect02;
        width: 120;
        height: 120;
        color: "orange";
        anchors.centerIn: parent;
        anchors.horizontalCenterOffset: 40;
        anchors.verticalCenterOffset: 40;
        z: 2;
    }
}

