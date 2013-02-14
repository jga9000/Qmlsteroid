import QtQuick 1.0
import Qt.labs.particles 1.0

Item {
    property bool explode : false

     Particles {
         id: particles
         width: 40
         height: 40
         lifeSpan: 800
         lifeSpanDeviation: 200
         source: "explosion.png"
         count: 0
         angle: 270
         angleDeviation: 360
         velocity: 70
         velocityDeviation: 20
         z: 100
     }
     states: State { name: "exploding"; when: explode
        StateChangeScript {
            script: particles.burst(400); 
        }
     }
}