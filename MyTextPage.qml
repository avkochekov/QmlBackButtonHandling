import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property string text: "Empty"
    MyBackground {anchors.fill: parent}
    Text {
        anchors.centerIn: parent
        text: parent.text
    }
}
