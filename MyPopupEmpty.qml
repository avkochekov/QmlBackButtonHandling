import QtQuick 2.15
import QtQuick.Controls 2.15

MyPopup{
    contentItem: Column {
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                close()
                event.accepted = true
            }
        }
        spacing: 20

        MyTextField {
            width: parent.width
        }

        MyTextArea {
            width: parent.width
        }

        MyButton {
            width: parent.width
            text: "Empty button"
        }

        MyCheckBox {
            width: parent.width
            text: "check box"
        }

        ButtonGroup { id: group }

        Repeater {
            model: 3
            MyRadioButton {
                text: qsTr("Radio " + index)
                ButtonGroup.group: group
            }
        }
    }
}
