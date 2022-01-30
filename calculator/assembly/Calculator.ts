import { entry_point } from 'koinos-cdt-as';
import { calculator } from "./proto/Calculator";

// @ts-ignore
@contract
export class Calculator {
  // @ts-ignore
  @entry_point("0x01", "Add two integers", true)
  add(args: calculator.add_arguments): calculator.add_result {
    return new calculator.add_result(args.x + args.y);
  }

  // @ts-ignore
  @entry_point("0x02", "Subtract two integers", true)
  sub(args: calculator.sub_arguments): calculator.sub_result {
    return new calculator.sub_result(args.x - args.y);
  }

  // @ts-ignore
  @entry_point("0x03", "Multiply two integers", true)
  mul(args: calculator.mul_arguments): calculator.mul_result {
    return new calculator.mul_result(args.x * args.y);
  }

  // @ts-ignore
  @entry_point("0x04", "Divide two integers", true)
  div(args: calculator.div_arguments): calculator.div_result {
    return new calculator.div_result(args.x / args.y);
  }
}