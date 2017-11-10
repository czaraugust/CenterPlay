import QtQuick 2.7
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

PageMainForm {
    Loader {
        id: pageLoader
    }

    button1.onClicked: {
        swipeView.currentIndex = 1

    }
    button2.onClicked: {
        swipeView.currentIndex = 2
    }
    button3.onClicked: {
        swipeView.currentIndex = 3
    }
    button4.onClicked: {
        swipeView.currentIndex = 4
    }
    buttonPower.onClicked: {
        scriptLauncher.launchScript()
    }
    text1 {
        id: textDate
        color: "black"
    }
    Timer{
        id: timer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: {
            textDate.text = Qt.formatDateTime(new Date(), "hh:mm dd/MM/yyyy")
        }
    }
}
