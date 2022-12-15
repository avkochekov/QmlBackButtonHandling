import QtQuick 2.15
import QtQuick.Controls 2.15

TextArea{
    Keys.onReleased: {
        if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
            parent.forceActiveFocus()
            event.accepted = true
        }
    }

    implicitHeight: 120
    placeholderText: "Text area"
    background: MyBackground {}
}
