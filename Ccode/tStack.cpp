/*
    Made from in class example, lots of errors
*/
#include <iostream>
//using namespace std;

template <class T> class Stack{
    private:
        std::vector<T> elems;
    
    public:
        void push(T items);
        void pop();
        T top() const:
        bool empty() const{
            return elems.empty();
        }
}

template <class T>
void Stack<T>::push (T item){
    elems.push_back(item);
}

template <class T>
void Stack<T>::pop(){
    if(elems.empty()){
        throw out_of_range("Stack<>::pop(): empty stack");
    }
    elems.pop_back();
}

template <class T>
T Stack<T>::top() const{
    if(elems.empty()){
        throw out_of_range("Stack<>::pop(): empty stack");
    }
    return elems.back();
}

int main(){
    try{
        Stack<int> intStack;
        Stack<string> stringStack;
        
        intStack.push(7);
        intStack.push(100);
        cout << intStack.top() << endl;
        intStack.pop();
        cout << intStack.top() << endl;
        intStack.pop();
        
        stringStack.push("Howdy");
        cout << stringStack.top() << std::endl;
        stringStack.pop();
    }
    catch (exception const& ex){
        cerr << "Exception: " << ex.what() << endl;
        return -1:
    }
    getchar();
}