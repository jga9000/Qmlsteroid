import QtQuick 1.0
import Qt.labs.particles 1.0

Item {
    property bool explode : false

     Particles {
         id: particles
         width: 30
         height: 30
         lifeSpan: 400
         lifeSpanDeviation: 0
         source: "shot.png"
         count: 0
         angle: 270
         angleDeviation: 360
         velocity: 150
         velocityDeviation: 0
     }
    states: State { name: "exploding"; when: explode
        StateChangeScript {
            script: particles.burst(200);
        }
    }
}
