import QtQuick 1.0

Rectangle {
    width: 272
    height: 480
    color: "#ffffff"
    MouseArea {
        x: 0
        y: 20
        width: 272
        height: 460
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 20
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 272
        height: 20
        color: "#c8000000"

        Text {
            id: text1
            x: 111
            y: 3
            color: "#ffffff"
            text: qsTr("Walker 1")
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.pixelSize: 12
        }

        Image {
            id: image1
            x: 4
            y: 4
            width: 20
            height: 13
            fillMode: Image.PreserveAspectFit
            source: "../../../../Pictures/blockM.png"
        }
    }

    Flickable {
        id: flickable1
        x: 1
        y: 20
        width: 271
        height: 559
        contentHeight: 100
        contentWidth: 272

        Text {
            x: 95
            y: 148
            text: qsTr("Hello World")
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenterOffset: 0
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: rectangle2
        x: 1
        y: 403
        width: 271
        height: 77
        color: "#c8202020"

        Rectangle {
            id: rectangle3
            x: 39
            y: 12
            width: 194
            height: 49
            radius: 12
            scale: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 1
            border.color: "#ff5e5e"
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ca0000"
                }

                GradientStop {
                    position: 0
                    color: "#f10000"
                }

                GradientStop {
                    position: 1
                    color: "#660000"
                }
            }

        }
        MouseArea {
            id: mouse_area1
            x: 39
            y: 14
            width: 194
            height: 49
            onClicked: {

            }
        }
    }
}
