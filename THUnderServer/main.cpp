#include "triserver.h"
#include "definitions.h"
#include <iostream>
#include <cstdio>
#include <string>
#include <process.h>
#include <vector>
#include <iostream>
using namespace std;

int main(void) {
    TriServer server(TXTPORT, AUDIOPORT, VIDPORT,
                     MAX_CLT_NUMBER);
    while (true) {
        server.accept();
    }
    return 0;
}
