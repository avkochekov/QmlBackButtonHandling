import QtQuick 2.15
import QtQuick.Controls 2.15

MyPopup {
    id: popup

    property int maxDepth: 5

    contentItem: Column {
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    popup.close()
                }
                event.accepted = true
            }
        }

        spacing: 20
        StackView {
            id: stackView

            width: Math.min(parent.width, parent.width) / 2
            height: width
            initialItem: MyTextPage {
                height: Math.min(stackView.height, stackView.width)
                width: height
                text: "0"
            }

            Component {
                id: text1
                MyTextPage {
                    text: "A"
                    MyTextField{
                        anchors{
                            left: parent.left
                            right: parent.right
                            bottom: parent.bottom
                            margins: 5
                        }
                    }
                }
            }
            Component {
                id: text2
                MyTextPage {
                    text: "B"
                    MyTextField{
                        anchors{
                            left: parent.left
                            right: parent.right
                            bottom: parent.bottom
                            margins: 5
                        }
                    }
                }
            }
        }

        MyTextField{
            readOnly: true
            width: parent.width
            text: "Stack view depth: " + stackView.depth
        }

        MyButton {
            text: stackView.depth < popup.maxDepth ? "Next" : "Close"
            width: parent.width
            onClicked: {
                if (stackView.depth < popup.maxDepth)
                    stackView.push(stackView.depth % 2 == 1 ? text2 : text1)
                else
                    popup.close()
            }
        }

        MyButton {
            text: stackView.depth > 1 ? "Back" : "Close"
            width: parent.width
            onClicked: {
                if (stackView.depth > 1)
                    stackView.pop()
                else
                    popup.close()
            }
        }
    }
}
