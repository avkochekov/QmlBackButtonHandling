import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    implicitHeight: 40
    background: MyBackground {}
    Keys.onReleased: {
        if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
            parent.forceActiveFocus()
        }
    }
}
