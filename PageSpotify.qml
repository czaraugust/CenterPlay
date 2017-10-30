import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.0
Window {
    id: root
    width: resWidth
    height: resHeight
    visible: true
    WebEngineView {
        anchors.fill: parent
        url: "https://open.spotify.com/browse"


    }

}
