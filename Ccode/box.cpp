class Box{
    public:
    double length;
    double breadth;
    double height;
    double getVolume(void);

    double Box::getVolume(void){
        return length * breadth * height;
    }
}
