import QtQuick 2.2
import QtQuick.Layouts 1.1

Item {
    width: 420; height: 500;
    property string imageRes: "images/material01.png";
    property int currentStyleIndex: 0;
    property int radiusValue: 0;
    property int fontSize: 20;
    property int orientation: Grid.LeftToRight;
    function resetProperty(image,radius,fontSize,orientation){
        imageRes=image;
        radiusValue=radius;
        this.fontSize=fontSize;
        this.orientation=orientation;
    }
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
                border.color: "black";
                border.width: (currentStyleIndex==0) ? 2: 0;
                Text{
                    anchors.centerIn: parent;
                    text: "样式一";
                    font.pixelSize: 20;
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        resetProperty("images/material01.png",0,20,Grid.LeftToRight);
                        currentStyleIndex=0;
                    }
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: 10; antialiasing: true;
                color: "skyblue";
                border.color: "black";
                border.width: (currentStyleIndex==1) ? 2: 0;
                Text{
                    anchors.centerIn: parent;
                    text: "样式二";
                    font.pixelSize: 20;
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        resetProperty("images/material02.png",6,16,Grid.TopToBottom);
                        currentStyleIndex=1;
                    }
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: 10; antialiasing: true;
                color: "khaki";
                border.color: "black";
                border.width: (currentStyleIndex==2) ? 2: 0;
                Text{
                    anchors.centerIn: parent;
                    text: "样式三";
                    font.pixelSize: 20;
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        resetProperty("images/material03.png",16,26,Grid.LeftToRight);
                        currentStyleIndex=2;
                    }
                }
            }
        }
        Grid{
            Layout.rowSpan: 3;
            Layout.columnSpan: 2;
            spacing: 10;
            flow: orientation;
            rows: 3;
            columns: 2;
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 30;
                    font.pixelSize: fontSize;
                    text: "元素一";
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 30;
                    font.pixelSize: fontSize;
                    text: "元素二";
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 30;
                    font.pixelSize: fontSize;
                    text: "元素三";
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 30;
                    font.pixelSize: fontSize;
                    text: "元素四";
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 20;
                    font.pixelSize: fontSize;
                    text: "元素五";
                }
            }
            Rectangle{
                width: 100; height: 100;
                radius: radiusValue;
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
                Image{
                    width: 48; height: 48;
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: -20;
                    source: imageRes;
                }
                Text{
                    anchors.centerIn: parent;
                    anchors.verticalCenterOffset: 30;
                    font.pixelSize: fontSize;
                    text: "元素六";
                }
            }
        }
    }
}

