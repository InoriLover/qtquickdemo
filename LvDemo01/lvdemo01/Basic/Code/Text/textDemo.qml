import QtQuick 2.2

Item {
    width: 500; height: 500;
    Text{
        id: text01;
        text: "测试文本一";
        font.pixelSize: 20;
        font.letterSpacing: 10;
        anchors.horizontalCenter: parent.horizontalCenter;
        Rectangle{
            anchors.fill: parent;
            z: -1;
            color: "pink";
        }
    }
    Text{
        id: text02;
        width: 150; height: 150;
        anchors.top: text01.bottom;
        anchors.topMargin: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        horizontalAlignment: Text.AlignHCenter; verticalAlignment: Text.AlignVCenter;
        text: "测试文本二";
        Rectangle{
            anchors.fill: parent;
            z: -1;
            color: "lightskyblue";
        }
    }
    Text{
        id: text03;
        width: 50;
        anchors.top: text02.bottom;
        anchors.topMargin: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        wrapMode: Text.Wrap;
        text: "测试文本三";
        Rectangle{
            anchors.fill: parent;
            z: -1;
            color: "lightsalmon";
        }
    }
    Text{
        id: text04;
        text: "测试文本四";
        width: 50;
        anchors.top: text03.bottom;
        anchors.topMargin: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        elide: Text.ElideLeft;
        Rectangle{
            anchors.fill: parent;
            z: -1;
            color: "lightgreen";
        }
    }
}

