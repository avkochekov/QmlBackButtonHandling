import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    spacing: 20
    MyBackground {
        targetItem: stackView
        width: parent.width
        height: 20
    }
    StackView {
        id: stackView
        width: parent.width
        height: width
        initialItem: MyTextPage {
            text: "0"
        }
        Component {
            id: text1
            MyTextPage {
                text: "A"
            }
        }
        Component {
            id: text2
            MyTextPage {
                text: "B"
            }
        }

        focus: depth > 1

        Keys.onBackPressed: {
            if (depth > 0)
                pop()
        }

    }

    MyTextField{
        readOnly: true
        width: parent.width
        text: "Stack view depth: " + stackView.depth
    }

    MyButton {
        text: "Push"
        width: parent.width
        onClicked: {
            stackView.push(stackView.depth % 2 == 1 ? text2 : text1)
        }
    }

    MyButton {
        text: "Pop"
        width: parent.width
        onClicked: {
            stackView.pop()
        }
    }

    MyButton {
        text: "Clear"
        width: parent.width
        onClicked: {
            stackView.clear()
        }
    }
}
