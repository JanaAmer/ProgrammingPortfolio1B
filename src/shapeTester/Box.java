class Box {
  // member variables
  int length;
  int width;
  int height;
  int surface;
  int volume;

  // constructor
  Box(int length, int width, int height) {
    this.length = length;
    this.width = width;
    this.height = height;
  }

  // method for surface area
    int surfaceArea() {
    surface = 2 * length * width + 2 * length * height + 2 * height * width;
    return surface;
  }

  // method for volume
  int Volume() {
    volume = length * width * height;
    return volume;
  }
}