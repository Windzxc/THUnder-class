#include "server.h"
#include <process.h>
#include <string>
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

using namespace std;

vector<User*> Class_Members;

Server::Server(int port, int maxnum):
    SocketServer(port, maxnum) {
    ;
}
Server::~Server() {;}

void Server::accept() {
    Socket* s = this->Accept();
    unsigned ret;
    _beginthreadex(0, 0, this->Answer, (void*)s, 0, &ret);
}

unsigned __stdcall Server::Answer(void* x) {

    dboperator db = dboperator();
    srand(time(NULL));

    Socket* the_sock = (Socket*) x;

    string str;
    str = the_sock->ReceiveLine();
    str = str.substr(0, str.length() - 1);
    cout << "received:" << str << endl;
    str = str.substr(4);
    unsigned divpos = str.rfind(":");

    string the_username = str.substr(0, divpos);
    string the_pswd = str.substr(divpos + 1);
    CLT_TYPE the_type =
        db.checktype(the_username.c_str(), the_pswd.c_str());
    unsigned the_number = Class_Members.size();

    printf("sent:%d\n", the_type);
    the_sock->SendLine(to_string(the_type));

    User* member = new User(the_username, the_pswd,
                            the_type, the_number, the_sock);

    if (the_type == 0) {
        delete member;
    }
    else if (the_type != 1) {
        Class_Members.push_back(member);
    }
    unsigned lastcalled = -1;    
    while (true) {
        string str = the_sock->ReceiveLine();
        printf("received %d: ", str.length());
        if (str.empty()) break;
        if (str == "\n") continue;
        
        //str = str.substr(0, str.length() - 1);
        string msghead = str.substr(0, 4);
        cout << msghead << endl;
        
        if (msghead == ADD_CLIENT) {
            str = str.substr(4);
            CLT_TYPE type = str[str.length() - 1] - '0';
            str = str.substr(0, str.length() - 2);
            unsigned divpos = str.rfind(":");
            string username = str.substr(0, divpos);
            string pswd = str.substr(divpos + 1);
            unsigned isvalid = db.add_client(username.c_str(),
                                             pswd.c_str(), type);
            printf("sent:%d\n", isvalid);
            the_sock->SendLine(to_string(isvalid));            
        }
        else if (msghead == DEL_CLIENT) {
            str = str.substr(4);
            string username = str;
            unsigned isvalid = db.del_client(username.c_str());
            printf("sent:%d\n", isvalid);
            the_sock->SendLine(to_string(isvalid));
        }
        else if (msghead == CHANGE_USERNAME) {
            str = str.substr(4);
            unsigned divpos = str.rfind(":");
            string username = str.substr(0, divpos);
            string new_username = str.substr(divpos + 1);
            unsigned ret = db.change_username(username.c_str(),
                                                  new_username.c_str());
            printf("sent:%d\n", ret);
            the_sock->SendLine(to_string(ret));
        }
        else if (msghead == CHANGE_PSWD) {
            str = str.substr(4);
            unsigned divpos = str.rfind(":");
            string username = str.substr(0, divpos);
            string new_pswd = str.substr(divpos + 1);
            unsigned isvalid = db.change_pswd(username.c_str(),
                                              new_pswd.c_str());
            printf("sent:%d\n", isvalid);
            the_sock->SendLine(to_string(isvalid));
        }
        else if (msghead == RAND_CALL) {
            int num = rand() % Class_Members.size();
            while (num == the_number)
                num = rand() % Class_Members.size();
            printf("rand call: %d\n", num);
            cout << "username: " << *Class_Members[num]->username_w << endl;
            Class_Members[num]->sendmsg(AUDIO_OPEN);
            the_sock->SendLine(CALLED_USERNAME
                               + *Class_Members[num]->username_w);
            lastcalled = num;
        }
        else if (msghead == RAND_CALL_OVER) {
            if (lastcalled < 0 || lastcalled >= Class_Members.size()) {
                printf("unable to shut the called student %d\n",
                       lastcalled);
            }
            Class_Members[lastcalled]->sendmsg(AUDIO_SHUT);
            printf("shut %d\n", lastcalled);
            lastcalled = -1;
        }
        else if (msghead == AUDIO_MSG) {
            printf("audio message!\n");
            for (int i = 0; i < Class_Members.size(); i++) {
                if (the_number == *Class_Members[i]->number_w ||
                    !Class_Members[i])
                    continue;
                else Class_Members[i]->sendmsg(str);
                printf("send to %d\n", i);
            }
        }
        else if (msghead == VID_MSG) {
            for (int i = 0; i < Class_Members.size(); i++) {
                if (the_number == *Class_Members[i]->number_w ||
                    !Class_Members[i])
                    continue;
                else Class_Members[i]->sendmsg(VID_MSG + str);
            }
        }
    }
    delete member;
    Class_Members[the_number] = nullptr;
    printf("connection %d offline\n", the_number);
}
