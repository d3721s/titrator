// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 2.15
import QtQuick.Window 2.15
import TitratorControlUI 1.0

Window {
    width: mainScreen.width
    height: mainScreen.height
    flags:Qt.FramelessWindowHint    //无边框

    visible: true
    title: "TitratorControlUI"

    Screen01 {
        id: mainScreen
    }

}

