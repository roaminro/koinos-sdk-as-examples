import { calculator } from "./proto/calculator";

export class Calculator {

  add(args: calculator.add_arguments): calculator.add_result {
    return new calculator.add_result(args.x + args.y);
  }

  sub(args: calculator.sub_arguments): calculator.sub_result {
    return new calculator.sub_result(args.x - args.y);
  }

  mul(args: calculator.mul_arguments): calculator.mul_result {
    return new calculator.mul_result(args.x * args.y);
  }

  div(args: calculator.div_arguments): calculator.div_result {
    return new calculator.div_result(args.x / args.y);
  }
}