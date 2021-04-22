class Pyramid {
  // member variables
  int aob;
  int pob;
  int slantHeight;
  int height;
  int surface;
  int volume;

  // constructor
  Pyramid(int aob, int pob, int slantHeight) {
    this.aob = aob;
    this.pob = pob;
    this.slantHeight = slantHeight;
  }

  // method for surface area
    int surfaceArea() {
    surface = aob + 1/2 * pob * slantHeight;
    return surface;
  }

  // method for volume
  int Volume() {
    volume = 1/3 * aob * height;
    return volume;
  }
}