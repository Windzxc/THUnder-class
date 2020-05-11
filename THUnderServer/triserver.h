#pragma once
#include <string>
#include "txtserver.h"
#include "audioserver.h"
#include "vidserver.h"
using std::string;

class TriServer {
private:
    TxtServer txtserver;
    AudioServer audioserver;
    VidServer vidserver;
    
public:
    TriServer(const int, const int, const int, const int);
    ~TriServer();
    TriServer(const TriServer&) = delete;
    TriServer& operator = (const TriServer&) = delete;

    void accept();
};
