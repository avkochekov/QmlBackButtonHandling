import QtQuick 2.0

Rectangle {
    property var targetItem: parent
    color: targetItem.focus ? "palegreen" : "lightgray"
    border.width: 5
    border.color: targetItem.activeFocus ? "lightcoral" : "lightgray"

    Rectangle{
        anchors.fill: parent
        color: "transparent"
        border.width: 1
        border.color: "darkblue"
        radius: parent.radius
    }
}
