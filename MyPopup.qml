import QtQuick 2.15
import QtQuick.Controls 2.15

Popup {
    id: popup
    modal: true
    focus: true

    property Item lastItem: null

    background: MyBackground {}
    closePolicy: Popup.CloseOnReleaseOutside

    onClosed: lastItem.forceActiveFocus()
    onOpened: {
        if (!lastItem)
            lastItem = activeFocusItem

        contentItem.forceActiveFocus()
    }
}
