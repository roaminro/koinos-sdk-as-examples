import { System, Protobuf, authority } from "@koinos/sdk-as";
import { manasharing } from "./proto/manasharing";

export class Manasharing {
  authorize(args: authority.authorize_arguments): authority.authorize_result {
    // const call = args.call;
    // const type = args.type;

    // YOUR CODE HERE

    const res = new authority.authorize_result();
    res.value = true;

    return res;
  }
}
