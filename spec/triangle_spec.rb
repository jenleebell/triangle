require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq("not a"))
    end
    it("processes input and returns whether it is an equilateral triangle") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.triangle?()).to(eq("equilateral"))
    end
    it("processes input and returns whether it is an isosceles triangle") do
      test_triangle = Triangle.new(2, 2, 1)
      expect(test_triangle.triangle?()).to(eq("isosceles"))
    end
    it("processes input and returns whether it is a scalene triangle") do
      test_triangle = Triangle.new(5, 2, 4)
      expect(test_triangle.triangle?()).to(eq("scalene"))
    end
  end
end
