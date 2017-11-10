import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.3
import QtQuick.VirtualKeyboard 2.2
//import QtQuick.VirtualKeyboard.Settings 2.2
import QtQuick.Controls 2.0
Window{
    id: root
    width: resWidth
    height: resHeight
    WebEngineView {
        id: spot
        visible: true
        anchors.fill: parent
        url: "https://www.youtube.com/"
        settings.pluginsEnabled : true



    }


    Button {
        id: test
        visible: true
        anchors { bottom: parent.bottom; right: parent.right }
        onClicked: {
            inputPanel.forceActiveFocus()
            inputPanel.visible = !inputPanel.visible
        }

    }
    Button{
        id: fechar
        text: "fechar"
        onClicked: {
           // root.close()
            spot.url= "https://www.youtube.com"
            root.close()
        }
      }





        InputPanel {
            id:inputPanel

            visible: false
            height: parent.height*0.45; width: parent.width*0.66

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter





        }
    }

