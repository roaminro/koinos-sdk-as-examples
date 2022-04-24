import { System } from "koinos-sdk-as";
import { mycontract } from "./proto/mycontract";

export class Mycontract {
  hello(args: mycontract.hello_arguments): mycontract.hello_result {
    const name = args.name!;

    const res = new mycontract.hello_result();
    res.value = `Hello, ${name}!`;

    System.log(res.value!);

    return res;
  }
}
