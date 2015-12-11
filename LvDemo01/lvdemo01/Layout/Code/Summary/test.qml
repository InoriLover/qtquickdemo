import QtQuick 2.2
import QtQuick.Layouts 1.1

Item {
    width: 420; height: 500;
    GridLayout{
        width: 320;
        height: 420;
        rows: 4;
        rowSpacing: 20;
        columns: 3;
        columnSpacing: 50;
        anchors.centerIn: parent;
        Row{
            Layout.columnSpan: 3;
            Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter;
            spacing: 16;
            Text{
                text: "MultiLayout";
                font.pixelSize: 26;
                font.bold: true;
            }
            Text{
                text: "By";
                font.pixelSize: 26;
                font.bold: true;
            }
            Text{
                text: "FishyChen";
                font.pixelSize: 26;
                font.bold: true;
            }
        }
        Column{
            Layout.rowSpan: 3;
            Layout.alignment: Qt.AlignVCenter;
            spacing: 10;
            Rectangle{
                width: 100; height: 100;
                radius: 10; antialiasing: true;
                color: "pink";
                Text{
                    anchors.centerIn: parent;
                    text: "样式一";
                    font.pixelSize: 20;
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {

                    }
                }
            }
        }
        Grid{
            Layout.rowSpan: 3;
            Layout.columnSpan: 2;
            spacing: 10;
            rows: 3;
            columns: 2;
        }
    }
}

