import { Calculator } from "../Calculator";
import { calculator } from "../proto/calculator";

describe("calculator", () => {
  it("should add", () => {
    const calc = new Calculator();

    const args = new calculator.add_arguments(1, 923);
    const res = calc.add(args);

    console.log("add: " + res.value.toString());

    expect(res.value).toBe(924);
  });

  it("should sub", () => {
    const calc = new Calculator();

    const args = new calculator.sub_arguments(9, 1);
    const res = calc.sub(args);

    console.log("sub: " + res.value.toString());

    expect(res.value).toBe(8);
  });

  it("should mul", () => {
    const calc = new Calculator();

    const args = new calculator.mul_arguments(9, 9);
    const res = calc.mul(args);

    console.log("mul: " + res.value.toString());

    expect(res.value).toBe(81);
  });

  it("should div", () => {
    const calc = new Calculator();

    const args = new calculator.div_arguments(999, 9);
    const res = calc.div(args);

    console.log("div: " + res.value.toString());

    expect(res.value).toBe(111);
  });
});
