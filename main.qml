import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtWebView 1.1

ApplicationWindow {
    visible: true
    width: resWidth
    height: resHeight
    title: qsTr("Center Play")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        PageMain {
            visible: true
        }

        PageVideo{
            visible: true
        }

        PageMusic{
            visible: true
        }

        PagePicture{
            visible: true
        }

        PageGame{
            visible: true
        }
    }
}
