import QtQuick 2.2
import QtQuick.Layouts 1.1

Item {
    width: 200; height: 300;
    ColumnLayout{
        width: parent.width;
        spacing: 10;
        layoutDirection: Qt.RightToLeft;
        Rectangle{
            width: 150;
            height: 80;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Layout.alignment: Qt.AlignLeft;
        }
        Rectangle{
            width: 150;
            height: 80;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Layout.alignment: Qt.AlignRight;
        }
        Rectangle{
            width: 150;
            height: 80;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            Layout.alignment: Qt.AlignHCenter;
        }
    }
}

