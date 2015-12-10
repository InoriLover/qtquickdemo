import QtQuick 2.2
import QtQuick.Layouts 1.1

Item {
    id: container;
    width: 450;
    height: 100;
    RowLayout{
        spacing: 10;
        Rectangle{
            id: rect01;
            Layout.minimumWidth: 100;
            Layout.maximumWidth: 200;
            Layout.preferredWidth: (container.width-20)/3;
            height: 50;
            color: "gray";
            Text{
                text: parent.width;
                anchors.centerIn: parent;
            }
        }
        Rectangle{
            id: rect02;
            Layout.minimumWidth: 100;
            Layout.maximumWidth: 200;
            Layout.preferredWidth: (container.width-20)/3;
            height: 50;
            color: "gray";
            Text{
                text: parent.width;
                anchors.centerIn: parent;
            }
        }
        Rectangle{
            id: rect03;
            Layout.minimumWidth: 100;
            Layout.maximumWidth: 200;
            Layout.preferredWidth: (container.width-20)/3;
            height: 50;
            color: "gray";
            Text{
                text: parent.width;
                anchors.centerIn: parent;
            }
        }
    }
}

