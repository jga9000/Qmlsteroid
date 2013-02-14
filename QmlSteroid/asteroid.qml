import QtQuick 1.0
import Qt.labs.particles 1.0

import "game.js" as Game

Image {
    id: asteroid
    
    property real maxScale: 1.5
    property real minScale: 0.01
    property int speed: 6600
    
    x: 180-width/2
    y: 320-height/2
    scale: minScale
    source: "asteroid.png"
    
    SequentialAnimation on scale {
        loops: 1
    
        NumberAnimation {
            from: asteroid.minScale
            to: asteroid.maxScale
            easing.type: Easing.InExpo
            duration: speed

        }
        onRunningChanged: {
            if (!running) {
                console.log("explosion")
                var object = Game.createObject("Explosion.qml", background);
                object.x = (asteroid.x + asteroid.width/2);
                object.y = (asteroid.y + asteroid.height/2);
                asteroid.destroy();
                object.explode = true 
                gameData.addMiss();
                parent.missesup = true
            }
        }
    }

    PropertyAnimation on x { 
        to: gameData.getNewXCoord(); 
        duration: speed
        easing.type: Easing.InQuint
    }

    PropertyAnimation on y { 
        to: gameData.getNewYCoord(); 
        duration: speed
        easing.type: Easing.InQuint 
    }

    RotationAnimation on rotation {
        to: 360
        loops: Animation.Infinite
        direction: RotationAnimation.Clockwise
        duration: speed
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
                console.log("shot")
                var object = Game.createObject("Shot.qml", background);
                object.x = (asteroid.x + asteroid.width/2);
                object.y = (asteroid.y + asteroid.height/2);
                asteroid.destroy();
                object.explode = true 
                gameData.addScore();
        }
    }
}
