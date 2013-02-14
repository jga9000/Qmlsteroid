import QtQuick 1.0
import Qt.labs.particles 1.0
import "game.js" as Game

Item {
    Text { 
        x: 10
        y: 10
        text: gameData.getScore();
        font.pointSize: 16;
        color: "green";
    }     
    Text { 
        x: 40
        y: 10
        text: gameData.getMisses();
        font.pointSize: 16;
        color: "red";
    }
}
