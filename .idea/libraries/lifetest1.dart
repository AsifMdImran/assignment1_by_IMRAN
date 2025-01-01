class Area {
  triangle(num base, num height) {
    num areaTriangl = 0.5 * base * height;
    print("Area of the triangle: $areaTriangl");
  }
}

void main() {
  Area area = Area();
  area.triangle(20, 30);
}
