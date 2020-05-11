#pragma once
#include <string>
using std::string;

#define CLT_TYPE unsigned
#define ADMIN 1
#define TEACHER 2
#define STU 3
#define VALID 0
#define INVALID 1

const int TXTPORT = 4000;
const int AUDIOPORT = 4001;
const int VIDPORT = 4002;
const int MAX_CLT_NUMBER = 50;

const string CHECK_TYPE = ":CT:";
const string ADD_CLIENT = ":AC:";
const string DEL_CLIENT = ":DC:";
const string CHANGE_USERNAME = ":CU:";
const string CHANGE_PSWD = ":CP:";

const unsigned TXTSERVER = 1;
const unsigned AUDIOSERVER = 2;
const unsigned VIDSERVER = 3;
