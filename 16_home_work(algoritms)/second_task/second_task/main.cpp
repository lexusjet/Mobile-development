#include <iostream>
#include <cmath>

void transposition_cipher(char** text, char* keys);

void printChars(char* text){
    if(text == nullptr) {
        std::cout << "nullptr" <<std::endl;
        return;
    }
    size_t index = 0;
    while(text[index] != '\0'){
        std::cout<< text[index];
        index++;
    }
    std::cout<< std::endl;
}


int main(int argc, char *argv[])
{
    char *charText = new char[16]{'h','i',' ','i',' ', 'a','m', ' ','a','l','e','k','s', 'e','y'};
    char charKeys[] = "02134";

    printChars(charText);
    transposition_cipher(&charText, charKeys);
    printChars(charText);
    transposition_cipher(&charText, charKeys);
    printChars(charText);

    delete [] charText;
    return 0;
}

void transposition_cipher(char** text, char* keys)
{
    size_t index = 0;
    size_t keySize = 0;
    size_t textSize = 0;
    while((*text)[index] != '\0'){
        textSize++;
        index++;
    }
    index = 0;
    while(keys[index] != '\0'){
        keySize++;
        index++;
    }

    size_t size = std::ceil(static_cast<double>(textSize)/static_cast<double>(keySize) *keySize);;
    char * anser = new char[size+1]();
    for(size_t i = 0; i < size; i++){
        anser[i] = ' ';
    }

    for (size_t i = 0; i < size; i += keySize) {
        for (size_t j = 0; j < keySize; j++) {
            index = static_cast<size_t>(keys[j]) - 48;
            if(i <= size){
                anser[i +index] = (*text)[i+j];
            }
            else {
                anser[i + index] = ' ';
            }
        }
    }
    delete [] *text;
    *text = anser;
    anser = nullptr;
}
