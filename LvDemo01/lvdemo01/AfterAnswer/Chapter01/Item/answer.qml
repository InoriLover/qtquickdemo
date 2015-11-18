import QtQuick 2.2

Item {
    id: container;
    width: 300;
    height: 300;
    Item{
        id: firstFloor;
        height: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: parent.bottom;
        z: 2;
        Rectangle{
            width: 56; height: 56;
            color: "red";
            rotation: 45;
            anchors.horizontalCenter:rect01.left;
            anchors.verticalCenter: rect01.bottom;
        }
        Rectangle{
            id:rect01;
            width: 180; height: 40;
            color: "red";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.bottom: parent.bottom;
        }
        Rectangle{
            width: 56; height: 56;
            color: "red";
            rotation: 45;
            anchors.horizontalCenter:rect01.right;
            anchors.verticalCenter: rect01.bottom;
        }
    }
    Item{
        id: secondFloor;
        height: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: firstFloor.top;
        z: 1;
        Rectangle{
            width: 56; height: 56;
            color: "blue";
            rotation: 45;
            anchors.horizontalCenter:rect02.left;
            anchors.verticalCenter: rect02.bottom;
        }
        Rectangle{
            id:rect02;
            width: 80; height: 40;
            color: "blue";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.bottom: parent.bottom;
        }
        Rectangle{
            width: 56; height: 56;
            color: "blue";
            rotation: 45;
            anchors.horizontalCenter:rect02.right;
            anchors.verticalCenter: rect02.bottom;
        }
    }
    Item{
        id: thirdFloor;
        height: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: secondFloor.top;
        z: 0;
        Rectangle{
            id: rect03;
            width: 40; height: 40;
            rotation: 45;
            color: "orange";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.bottom;
        }
    }
}

