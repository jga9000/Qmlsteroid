#include <QObject>

const int mRandXCoordinates[] = { 14, 100, 50, 36, 300, 90, 200, 77, 110, 80, 200, 310, 62, 287, 34, 154 };
const int mRandYCoordinates[] = { 500, 33, 300, 110, 265, 76, 456, 187, 554, 333, 134, 42, 490, 600, 5, 12 };

class GameData : public QObject
{
    Q_OBJECT
private:

public:
    explicit GameData();
    virtual ~GameData();

    Q_INVOKABLE int getNewXCoord();
    Q_INVOKABLE int getNewYCoord();
    Q_INVOKABLE void startGame();
    Q_INVOKABLE QString getMisses();
    Q_INVOKABLE QString getScore();
    Q_INVOKABLE void addMiss();
    Q_INVOKABLE void addScore();
    
private:
    int doNextCoord(int max_value=0);

private:
    int mScore;
    int mLevel;
    int mMisses;    
    int mNextCoord;
};
