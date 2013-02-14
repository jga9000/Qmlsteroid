#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>
#include <QTime>
#include <QDebug>
#include <QtCore/qmath.h>
#include "game.h"

// Randomizing is not really random with Qt..another bug in Qt plat

GameData::GameData() {
    mScore = 0;
    mLevel = 0;
    mMisses = 0;
    mNextCoord = 0;
}

GameData::~GameData()
{
}
    
int GameData::getNewXCoord()
{
    int value = mRandXCoordinates[mNextCoord];
    doNextCoord();
    return value;
}

int GameData::getNewYCoord()
{
    int value = mRandYCoordinates[mNextCoord];
    doNextCoord();
    return value;    
}

QString GameData::getMisses()
{
    
    QString num;
    QString toReturn;
    
    toReturn += num.setNum(mMisses);
    qDebug() << "returned misses:" << toReturn;
    return toReturn;
}

QString GameData::getScore()
{
    QString num;
    QString toReturn;
    
    toReturn += num.setNum(mScore);
    qDebug() << "returned score:" << toReturn;
    return toReturn;
}

void GameData::addMiss()
{
    mMisses++;
    qDebug() << "Misses now:" << mMisses;    
}

void GameData::addScore()
{
    mScore++;
    qDebug() << "Score now:" << mScore;
}

int GameData::doNextCoord(int max_value)
{
    if( mNextCoord<16 ) {
        mNextCoord++;
    }
    else{
        mNextCoord=0;
    }
    return 0;
}

void GameData::startGame()
{
}
