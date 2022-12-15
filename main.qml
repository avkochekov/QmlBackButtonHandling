import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    id: window
    width: 640
    height: 800
    visible: true
    title: qsTr("Hello World")

    onActiveFocusItemChanged: {
        console.log("active item: " + activeFocusItem)
    }

    MyPopupEmpty {
        id: myEmptyPopup
        height: parent.height
        width: parent.width / 2
        onClosed: content.focus = true
    }

    MyPopupStackView {
        id: myStackViewPopup
        height: parent.height
        width: parent.width / 2
        onClosed: content.focus = true
    }

    MyPopupWithPopup {
        id: myPopupWithPopup
        height: parent.height
        width: parent.width / 2
        onClosed: content.focus = true
    }

    MyPopupWithTextFields {
        id: myPopupWithTextFields
        height: parent.height
        width: parent.width / 2
        onClosed: content.focus = true
    }

    MyPopup {
        id: myMainPopup
        width: 200
        height: 200
        modal: true
        anchors.centerIn: parent

        contentItem: Rectangle {
            color: "blue"
        }
    }

    Component.onCompleted: {
        console.log(activeFocusItem)
        contentItem.focus = true
    }

    Column {
        id: content
        focus: true
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                Qt.quit()
            }
        }

//        anchors.fill: parent
        spacing: 20
        ListView {
            width: parent.width
            height: contentHeight
            model: 3
            spacing: 20
            delegate: MyTextField {
                width: parent.width
            }
        }

        MyButton {
            width: parent.width
            text: "Test popup"
            onClicked: myEmptyPopup.open()
        }

        MyButton {
            width: parent.width
            text: "Popup with stack view"
            onClicked: myStackViewPopup.open()
        }

        MyButton {
            width: parent.width
            text: "Popup with popup"
            onClicked: myPopupWithPopup.open()
        }

        MyButton {
            width: parent.width
            text: "Popup with text fields"
            onClicked: myPopupWithTextFields.open()
        }
    }

    Item {
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                // some code
                event.accepted = true
            }
        }
    }
}
