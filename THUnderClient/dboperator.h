/*
The class 'dboperator' for sqlite database operations on server
 */
#pragma once
#include <string>
#include "sqlite3.h"
using std::string;

class dboperator {
private:
    sqlite3* db;
public:
    dboperator(const char* path = "./Clients.db");
    ~dboperator();
    dboperator(const dboperator& db2) const = delete;
    dboperator& operator = (const dboperator& db2) const = delete;

    string& addclient(const string& username, const string& pswd);
    string& delclient(const string& username);
    string& change_username(const string& username,
                            const string& new_username);
    string& change_pswd(const string& username,
                        const string& new_pswd);
};