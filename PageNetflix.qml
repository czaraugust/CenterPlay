import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.3
import QtQuick.VirtualKeyboard 1.3
import QtQuick.Controls 2.0
Rectangle{
    id: root
     anchors.fill: parent
    WebEngineView {

        visible: true
        anchors.fill: parent
        url: "https://www.netflix.com/browse"
    }


    Button {
        visible: true
        anchors { bottom: parent.bottom; right: parent.right }
        onClicked: inputPanel.visible = !inputPanel.visible



    }
    Button {
        text: "fechar"
        visible: true
        anchors { top: parent.top; right: parent.right }
        onClicked: root.visible = !root.visible



    }
    InputPanel {
        id:inputPanel

        visible: false
        height: parent.height*0.45; width: parent.width*0.66

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }
}
