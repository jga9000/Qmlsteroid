import QtQuick 1.0
import Qt.labs.particles 1.0
import "game.js" as Game

Rectangle {
    Image {
        source: "space.png"
    }
    id: page

    width: 360
    height: 640

    property bool scoreup: false
    property bool missesup: false    
    property int score: 0
    property int misses: 0
        
    Particles {
        x: 180
        y: 320
        width: 1
        height: 1
        source: "myparticle.png"
        lifeSpan: 5000
        fadeInDuration : 200
        count: -1
        angleDeviation: 360
        velocity: 400
        velocityDeviation: 30
    }
}
