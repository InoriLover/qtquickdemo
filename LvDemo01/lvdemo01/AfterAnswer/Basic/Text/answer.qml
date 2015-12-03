import QtQuick 2.2

Item {
    width: 300; height: 300;
    Text{
        anchors.centerIn: parent;
        width: 150;
        elide: Text.ElideMiddle;
        text: "这是一段很长很长的测试文本";
        font.pixelSize: 20;
        font.bold: true;
        font.italic: true;
        Rectangle{
            anchors.fill: parent;
            anchors.margins: -8;
            z: -1;
            color: "transparent";
            radius: 10; antialiasing: true;
            border.width: 2; border.color: "lightskyblue";
        }
    }
}

