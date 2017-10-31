import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.0
import QtQuick.VirtualKeyboard 2.2
import QtQuick.VirtualKeyboard.Settings 2.2
import QtQuick.Controls 2.0
Window{
    id: root
    width: resWidth
    height: resHeight
    WebEngineView {

        visible: true
        anchors.fill: parent
        url: "https://www.youtube.com/"
    }


                 Button {
                     visible: true
                     anchors { bottom: parent.bottom; right: parent.right }
                     onClicked: inputPanel.visible = !inputPanel.visible


                 }




                 InputPanel {
                     id:inputPanel

                     visible: false
                     height: parent.height*0.45; width: parent.width*0.66

                     anchors.bottom: parent.bottom
                     anchors.horizontalCenter: parent.horizontalCenter


                 }
             }

