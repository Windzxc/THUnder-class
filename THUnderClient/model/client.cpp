#include "client.h"
#include <string>
using std::string;

Client::Client(const string& username, const string& pswd,
               const string& host, const int port):
    sock(host, port) {
    this->username = username;
    this->pswd = pswd;
    this->checktype();
}

Client::~Client() {;}

void Client::checktype() {
    sock.SendLine(":CT:" + this->username + ":" + this->pswd);
    string fb = sock.ReceiveLine();
    this->_type = fb[0] - '0';
}