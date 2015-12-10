import QtQuick 2.2

Item {
    width: 300; height: 200;
    Flow{
        anchors.fill: parent;
        flow: Flow.TopToBottom;
        spacing: 16;
        Text{
            text: "One";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Two";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Three";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Four";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Five";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Six";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Seven";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Eight";
            font.pixelSize: 26;
            font.bold: true;
        }
        Text{
            text: "Nine";
            font.pixelSize: 26;
            font.bold: true;
        }
    }
}

