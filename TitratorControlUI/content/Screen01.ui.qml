

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import TitratorControlUI 1.0
import QtQuick.Layouts 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle1
    width: Constants.width
    height: Constants.height
    color: "#f0f4f9"
    border.color: "#00000000"
    Button {
        id: button
        x: 32
        y: 177
        width: 97
        height: 76
        opacity: 0
        visible: true
        text: qsTr("Button")
        display: AbstractButton.IconOnly
        icon.color: "transparent"
    }

    Rectangle {
        id: rectangle5
        x: 32
        y: 373
        width: 97
        height: 52
        visible: false
        color: "#d3e3fd"
        radius: 25.5
        border.color: "#00000000"
        border.width: 0
    }

    Rectangle {
        id: rectangle4
        x: 32
        y: 275
        width: 97
        height: 52
        visible: false
        color: "#d3e3fd"
        radius: 25.5
        border.color: "#00000000"
        border.width: 0
        clip: false
        layer.smooth: true
    }

    Rectangle {
        id: rectangle3
        x: 32
        y: 177
        width: 97
        height: 52
        color: "#d3e3fd"
        radius: 25.5
        border.color: "#00000000"
        border.width: 0
    }

    Rectangle {
        id: rectangle2
        x: 163
        y: 302
        width: 828
        height: 276
        color: "#ffffff"
        radius: 0
    }

    Text {
        id: textArea
        x: 216
        y: 47
        width: 99
        height: 47
        color: "#424242"
        text: "操作"
        font.family: "微软雅黑"
        font.pointSize: 20
    }

    Item {
        id: __materialLibrary__
    }

    Text {
        id: textArea1
        x: 43
        y: 229
        text: "    操作"
        font.styleName: "Bold"
        font.bold: false
        textFormat: Text.PlainText
        font.family: "微软雅黑"
    }

    Text {
        id: textArea2
        x: 43
        y: 326
        color: "#424242"
        text: "    历史"
        font.family: "微软雅黑"
    }

    Image {
        id: animatedImage2
        x: 61
        y: 281
        width: 40
        height: 40
        source: "../resource/history.png"
        layer.smooth: true
    }

    Image {
        id: borderImage1
        x: 61
        y: 379
        width: 40
        height: 40
        source: "../resource/setting.png"
    }

    Text {
        id: textArea3
        x: 43
        y: 425
        color: "#424242"
        text: "    设置"
        font.family: "微软雅黑"
    }

    Image {
        id: image
        x: 61
        y: 183
        width: 40
        height: 40
        source: "../resource/experiment.png"
        sourceSize.height: 50
        sourceSize.width: 50
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image2
        x: 165
        y: 50
        width: 40
        height: 40
        visible: true
        source: "../resource/check-one.svg"
        fillMode: Image.PreserveAspectFit
        layer.enabled: false
    }

    Image {
        id: image1
        x: 165
        y: 50
        width: 40
        height: 40
        visible: false
        source: "../resource/attention.svg"
        layer.enabled: false
        fillMode: Image.PreserveAspectFit
    }

    Button {
        id: button1
        x: 32
        y: 275
        width: 97
        height: 76
        opacity: 0
        visible: true
        text: qsTr("Button")
        icon.color: "transparent"

        Connections {
            target: button1
            onClicked: stackView.pop(initialItem)
        }

        Connections {
            target: button1
            onClicked: rectangle4.visible = true
        }
    }

    Image {
        id: animatedImage1
        x: 869
        y: 26
        width: 91
        height: 89
        source: "../resource/ex.svg"
        clip: true
    }

    Button {
        id: button2
        x: 32
        y: 373
        width: 97
        height: 76
        opacity: 0
        visible: true
        text: qsTr("Button")
        icon.color: "transparent"
    }

    StackView {
        id: stackView
        x: 165
        y: 118
        width: 826
        height: 460
        hoverEnabled: false
        bottomPadding: 0
        topPadding: 0
        initialItem: operation

        replaceEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 300
            }
        }

        replaceExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 250
            }
        }

        Operation {
            id: operation
            clip: true
            color: "#ffffff"
            height: 462
            radius: 30
            width: 828
        }

        TitratorHistory {
            id: titratorHistory
            color: "#ffffff"
            height: 462
            radius: 30
            visible: false
            width: 828
            x: 0
            y: 0
        }
        TitratorSettings {
            id: titratorSettings
            color: "#ffffff"
            height: 462
            radius: 30
            visible: false
            width: 828
            x: 0
            y: 0
        }
    }
    Component {
        id: component
        Item {
            id: componentRoot
            width: 100
            height: 100
        }
    }

}
