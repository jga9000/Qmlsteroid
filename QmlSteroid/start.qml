import QtQuick 1.0
import Qt.labs.particles 1.0

import "game.js" as Game

Rectangle {
    x:0
    y:0
    width: 360
    height: 640

    id: start
    color: "black"

    Particles {
        x: 180
        y: 320
        width: 1
        height: 1
        source: "myparticle.png"
        lifeSpan: 5000
        fadeInDuration : 500
        count: -1
        angleDeviation: 360
        velocity: 200
        velocityDeviation: 100
        emissionRate: 80
    }

    Image { 
        id: imageButton
        x: 120
        y: 250
        source: "fireball.png"

        SequentialAnimation on opacity {
            loops: Animation.Infinite
            PropertyAnimation { duration: 500; to: 1 }
            PropertyAnimation { duration: 500; to: 0 }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            x:0
            y:0
            width: 360
            height: 640
            visible = false
            Game.createObject("Game.qml", start);
        }
    }
    
    Text { 
        x: 50
        y: 148
        text: "Press to start the game"; font.pointSize: 16; color: "red"
    }
    Text { 
        x: 52
        y: 150
        text: "Press to start the game"; font.pointSize: 16; color: "yellow"
    }
    Text { 
        x: 8
        y: 398
        text: "It works like this:\ntap the asteroids to blast them,\nbefore they hit you"; font.pointSize: 16; color: "red"
    }
    Text { 
        x: 10
        y: 400
        text: "It works like this:\ntap the asteroids to blast them,\nbefore they hit you"; font.pointSize: 16; color: "yellow"
    }
}
