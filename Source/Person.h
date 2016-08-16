//
// Created by tt on 8/15/16.
//

#ifndef PATTERNAN_PERSON_H
#define PATTERNAN_PERSON_H

#include "Segment.h"

//Все данные относительно человека. Подгружаются по одному для каждого объекта (человека).
struct PersonProp
{
    std::vector<std::pair<double, double>> velocity;
    std::vector<std::pair<double, double>> coord;
};

class Person {

public:
    Person();
    //Происходит удаление всех полей (сегментов) и запись данных по этому человеку в файл с названием "id_человека".
    ~Person();
    //Существует два этапа работы. Первый выполняется, если переменная ***Seg пуста, второй в обратном случае. В обоих этапах создается оба типа сегмента.
    //output - Запись данных в соответствующую переменную.
    void makeSegments();
    //Собирает необходимую статистику по данному человеку.
    void getStatistics();

private:
    std::vector<Segment> *coordFstSeg;
    std::vector<Segment> *coordSndSeg;
    std::vector<Segment> *velFstSeg;
    std::vector<Segment> *velSndSeg;
};

#endif //PATTERNAN_PERSON_H
