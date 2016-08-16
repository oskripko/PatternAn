import QtQuick 2.3
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id: rootWindow
    visible: true
    flags: Qt.FramelessWindowHint
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    width: 640
    height: 520

    MouseArea {
        anchors.fill: parent
        property variant clickPos: "1,1"
        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            rootWindow.x += delta.x;
            rootWindow.y += delta.y;
        }
    }

    Rectangle {
        color: "#2a2d33"
        border.color: "black"
        border.width: 1
        anchors.fill: parent

        Text {
            id: logo
            text: qsTr("PatternAnalysis")
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 30
            anchors.leftMargin: 20
            color: "#ffffff"
            font.bold: true
            font.pixelSize: 28
            x: 10
            y: 0

        }

        Image {
            id: close
            anchors.right: parent.right
            anchors.top: parent.top
            source: "qrc:/Resources/images/cross.svg"
            sourceSize.width: 15
            sourceSize.height: 15
            anchors.rightMargin: 10
            anchors.topMargin: 10


            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    Qt.quit()
                }
                onEntered: {
                    closeColorEnter.start()
                }
                onExited: {
                    closeColorExit.start()
                }
            }
        }

        TextArea {
                    id: textEdit
                    text: ""
                    height: 200
                    anchors.left: parent.left
                    anchors.top: logo.bottom
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    anchors.topMargin: 20


                    Component {
                        id: inactiveTextStyle
                        TextAreaStyle {
                            textColor: "#fff"
                            backgroundColor: "#ccc"
                        }
                    }

                    Component {
                        id: activeTextStyle
                        TextAreaStyle {
                            textColor: "#000"
                            backgroundColor: "#fff"
                        }
                    }

                    function makeInactive() {
                        readOnly = true;
                        style = inactiveTextStyle;
                    }

                    function makeActive() {
                        readOnly = false;
                        style = activeTextStyle;
                    }

                    Component.onCompleted: {
                        forceActiveFocus()
                    }
                }


        TabView {
            id: threadTabs
            anchors.left: parent.left
            anchors.top: textEdit.bottom
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.topMargin: 20

            Component {
                id: tabViewComp

                TextArea {

                    height: 100
                    property string newtext
                    onNewtextChanged:{
                        text = newtext
                    }

                    property string newline
                    onNewlineChanged:{
                        if (newline != "") {
                            append(newline);
                            newline = "";
                        }
                    }

                    anchors.fill: parent
                    readOnly: true
                }
            }

            Tab {
                title: "Main thread"

                TextArea {
                    height: 100

                    property string newtext
                    onNewtextChanged:{
                        text = newtext
                    }

                    property string newline
                    onNewlineChanged:{
                        if (newline != "") {
                            append(newline);
                            newline = "";
                        }
                    }

                    anchors.fill: parent
                    readOnly: true
                }
            }
        }

        Button {
            id: load
            text: "Load"
            anchors.left: textEdit.left
            anchors.top: threadTabs.bottom
            anchors.topMargin: 15
            height: 35
            width: 150

            property bool isLoaded: false
            onIsLoadedChanged: {
                if (isLoaded) {
                    makeStepOrRun.text = "Step"
                    text = "Stop"
                    textEdit.makeInactive();
                }
                else {
                    makeStepOrRun.text = "Run"
                    text = "Load"
                    textEdit.makeActive();
                }
            }

        }

        Button {
            id: makeStepOrRun
            text: "Run"
            anchors.right: textEdit.right
            anchors.top: threadTabs.bottom
            anchors.topMargin: 15
            height: 35
            width: 150


        }

        PropertyAnimation {
            id: closeColorEnter
            target: closeColor
            properties: "color"
            to: "#ff0000"
            duration: 200
        }

        PropertyAnimation {
            id: closeColorExit
            target: closeColor
            properties: "color"
            to: "#ffffff"
            duration: 200
        }

        ColorOverlay {
            id: closeColor
            anchors.fill: close
            source: close
            color: "#ffffff"

        }
    }
}