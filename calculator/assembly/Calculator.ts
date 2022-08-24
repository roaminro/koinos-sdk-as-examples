import { SafeMath } from "@koinos/sdk-as";
import { calculator } from "./proto/calculator";

export class Calculator {
  add(args: calculator.add_arguments): calculator.add_result {
    const x = args.x;
    const y = args.y;

    const res = new calculator.add_result();
    res.value = SafeMath.add(x, y);

    return res;
  }

  sub(args: calculator.sub_arguments): calculator.sub_result {
    const x = args.x;
    const y = args.y;

    const res = new calculator.sub_result();
    res.value = SafeMath.sub(x, y);

    return res;
  }

  mul(args: calculator.mul_arguments): calculator.mul_result {
    const x = args.x;
    const y = args.y;

    const res = new calculator.mul_result();
    res.value = SafeMath.mul(x, y);

    return res;
  }

  div(args: calculator.div_arguments): calculator.div_result {
    const x = args.x;
    const y = args.y;

    const res = new calculator.div_result();
    res.value = SafeMath.div(x, y);

    return res;
  }
}
