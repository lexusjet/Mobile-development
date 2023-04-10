#include <QCoreApplication>
#include <string>
#include <iostream>

#include <cstring>

void caesar_cipher( char* text, size_t key);
void caesar_deciphering(char* text, size_t key);

int main(int argc, char *argv[])
{
    char charText[] = "hi i am aleksey. i whant to tell you some story";
    std::cout<< charText << std::endl;
    caesar_cipher(charText, 1);
    std::cout<< charText << std::endl;
    caesar_deciphering(charText, 1);
    std::cout<< charText << std::endl;

    return 0;
}

void caesar_cipher(char* text, size_t key)
{
    if(text == nullptr) return;
    size_t sizeOfText = 0;
    size_t index = 0;
    while(text[index] != '\0'){
        index++;
        sizeOfText++;
    }
    if(key >= 26)
        key = key % 26;
    if(key == 0) return;

    char minLow = 'a';
    char maxLow = 'z';
    char minCapital = 'A';
    char maxCapital = 'Z';

    for (size_t i = 0; i < sizeOfText; i++) {
        size_t step = key;
        size_t start = static_cast<size_t>(text[i]);
        if(text[i] > maxLow || text[i] < minCapital){
            text[i] = text[i];
            continue;
        }
        else if(text[i] < minLow && text[i] > maxCapital){
            text[i] = text[i];
            continue;
        }
        else if(text[i] > (maxLow - key)){
            start = static_cast<size_t>(minLow);
            step -= static_cast<size_t>(minLow - text[i]);
        }
        else if(text[i] >  maxCapital- key && text[i] < minLow){
            start = static_cast<size_t>(minCapital);
            step -= static_cast<size_t>(maxCapital - text[i]);
        }
        text[i] = static_cast<char>(start + step);
    }



}


void caesar_deciphering(char* text, size_t key)
{
    if(text == nullptr) return;
    size_t sizeOfText = 0;
    size_t index = 0;
    while(text[index] != '\0'){
        index++;
        sizeOfText++;
    }
    if(key >= 26)
        key = key % 26;
    if(key == 0) return;

    char minLow = 'a';
    char maxLow = 'z';
    char minCapital = 'A';
    char maxCapital = 'Z';

    for (size_t i = 0; i < sizeOfText; i++) {
        size_t step = -key;
        size_t start = static_cast<size_t>(text[i]);
        if(text[i] > maxLow || text[i] < minCapital){
            text[i] = text[i];
            continue;
        }
        else if(text[i] < minLow && text[i] > maxCapital){
            text[i] = text[i];
            continue;
        }
        else if(text[i] < minLow && text[i] > maxCapital){
            start = static_cast<size_t>(maxLow);
            step += static_cast<size_t>(text[i] - minLow);
        }
        else if(text[i] < minCapital){
            start = static_cast<size_t>(maxCapital);
            step += static_cast<size_t>(text[i] - minCapital);
        }
        text[i] = static_cast<char>(start + step);
    }

}

