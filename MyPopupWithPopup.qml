import QtQuick 2.15
import QtQuick.Controls 2.15

MyPopup {
    MyPopupEmpty {
        id: emptyPopup
        anchors.centerIn: parent
        width: parent.width * 0.9
        height: parent.height * 0.9
    }

    contentItem: Column {
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                close()
                event.accepted = true
            }
        }

        MyButton {
            text: "Open popup"
            width: parent.width
            onClicked: emptyPopup.open()
        }

        MyButton {
            text: "Open main popup"
            width: parent.width
            onClicked: {
                myMainPopup.open()
            }
        }

        MyButton {
            text: "Close"
            width: parent.width
            onClicked: {
                close()
            }
        }
    }
}
