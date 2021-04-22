class Sphere {
  // member variables
  int radius;
  int surface;
  int volume;

  // constructor
  Sphere(int radius) {
    this.radius = radius;
  }

  // method for surface area
    int surfaceArea() {
    surface = 4 * (22/7) * (radius*radius);
    return surface;
  }

  // method for volume
  int Volume() {
    volume = (4/3) * (22/7) * (radius*radius*radius);
    return volume;
  }
}