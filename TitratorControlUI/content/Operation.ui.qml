import QtQuick 2.15
import QtQuick.Controls 2.15
import TitratorControlUI 1.0
import QtQuick.Layouts 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle
    RoundButton {
        id: roundButton
        x: 16
        y: 54
        width: 390
        height: 150
        opacity: 1
        radius: 40
        text: "清洗"
        clip: true
        autoExclusive: false
        checkable: false
        checked: false
        icon.height: 30
        icon.width: 30
        icon.source: "../resource/soap-bubble.svg"
        layer.enabled: false
        display: AbstractButton.TextBesideIcon
        font.pointSize: 16
        font.family: "微软雅黑"
        highlighted: false
        flat: false
        icon.color: "#000000"

        ProgressBar {
            id: progressBar
            x: 95
            y: 120
            visible: false
            value: 0.5
        }
    }

    RoundButton {
        id: roundButton1
        x: 422
        y: 54
        width: 390
        height: 150
        opacity: 1
        radius: 40
        text: "补液"
        icon.height: 30
        icon.width: 30
        icon.source: "../resource/infusion.svg"
        layer.enabled: false
        display: AbstractButton.TextBesideIcon
        font.pointSize: 16
        font.family: "微软雅黑"
        icon.color: "#000000"
        flat: false
        highlighted: false

        ProgressBar {
            id: progressBar1
            x: 95
            y: 120
            visible: false
            value: 0.5
        }
    }

    RoundButton {
        id: roundButton2
        x: 16
        y: 258
        width: 390
        height: 150
        opacity: 1
        radius: 40
        text: "自动滴定"
        icon.height: 30
        icon.width: 30
        icon.source: "../resource/test-tube.svg"
        layer.enabled: false
        display: AbstractButton.TextBesideIcon
        font.pointSize: 16
        font.family: "微软雅黑"
        icon.color: "#000000"
        flat: false
        highlighted: false
    }

    RoundButton {
        id: roundButton5
        x: 422
        y: 258
        width: 390
        height: 150
        opacity: 1
        radius: 40
        text: "手动滴定"
        icon.height: 30
        icon.width: 30
        icon.source: "../resource/test-tube.svg"
        layer.enabled: false
        display: AbstractButton.TextBesideIcon
        font.pointSize: 16
        font.family: "微软雅黑"
        icon.color: "#000000"
        flat: false
        highlighted: false
    }
}
