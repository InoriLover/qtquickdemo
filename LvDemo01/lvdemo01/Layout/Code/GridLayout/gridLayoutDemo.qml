import QtQuick 2.2
import QtQuick.Layouts 1.1

Item {
    width:400; height: 400;
    GridLayout{
        anchors.centerIn: parent;
        columns: 3;
        rows: 3;
        columnSpacing: 10;
        rowSpacing: 5;
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
            Layout.columnSpan: 2;
            Layout.alignment: Qt.AlignHCenter;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
            Layout.rowSpan: 2;
            Layout.fillHeight: true;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
        }
        Rectangle{
            width: 120; height: 120;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            radius: 10; antialiasing: true;
        }
    }
}

