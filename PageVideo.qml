import QtQuick 2.0
//https://doc.qt.io/qt-5/qtwebengine-webengine-minimal-example.html
PageVideoForm {
    id: root
    button1.onClicked: {
        console.log("Button \"Netflix\" clicked.");
        var component = Qt.createComponent("PageNetflix.qml")
        var window    = component.createObject(root)
        window.show()
    }
    button2.onClicked: {
        console.log("Button \"Youtube\" clicked.");
        var component = Qt.createComponent("PageYoutube.qml")
        var window    = component.createObject(root)
        window.show()
    }
    button3.onClicked: {
        console.log("Button \"Image\" clicked.");
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
