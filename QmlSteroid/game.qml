import QtQuick 1.0

import "game.js" as Game

Rectangle {
    width: 360
    height: 640

    Stars { id: background }

    Component.onCompleted: {
        Game.createObject("Timer.qml", background);
    }
}
