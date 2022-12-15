import QtQuick 2.0

MyPopup {
    contentItem: Item{
        Keys.onReleased: {
            if (event.key === Qt.Key_Back || event.key === Qt.Key_Escape) {
                close()
                event.accepted = true
            }
        }
        MyTextField{
            width: parent.width * 0.9
            height: 220
            MyTextField{
                width: parent.width * 0.9
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                MyTextField{
                    width: parent.width * 0.9
                    height: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                }
                MyTextField{
                    width: parent.width * 0.9
                    height: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                }
            }
            MyTextField{
                width: parent.width * 0.9
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                MyTextField{
                    width: parent.width * 0.9
                    height: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                }
                MyTextField{
                    width: parent.width * 0.9
                    height: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                }
            }
        }
    }
}
