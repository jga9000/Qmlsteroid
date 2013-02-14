import QtQuick 1.0

import "game.js" as Game

Item {
    Timer {
        interval: 700
        running: true
        repeat: true
        onTriggered: {
            Game.createObject("Asteroid.qml", background);
        }
    }
}
