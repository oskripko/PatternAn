//
// Created by tt on 8/15/16.
//

#ifndef PATTERNAN_SEGMENT_H
#define PATTERNAN_SEGMENT_H


#include <vector>

class Segment {
public:
    Segment();
    //Узнать, удалится ли сегмент при удалении векторов сегментов.
    ~Segment();
    void makeStatistics();
private:
    std::vector<std::pair<double,double>> *segment;
};


#endif //PATTERNAN_SEGMENT_H
