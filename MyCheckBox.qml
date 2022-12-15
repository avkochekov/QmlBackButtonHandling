import QtQuick 2.15
import QtQuick.Controls 2.15

CheckBox{
    id: control

    indicator: MyBackground {
        implicitWidth: 26
        implicitHeight: 26
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        Rectangle {
            anchors.centerIn: parent
            width: parent.width / 3
            height: width
            radius: height / 2
            color: control.down ? "#17a81a" : "#21be2b"
            visible: control.checked
        }
    }
}
