import { authorize_arguments, authorize_result } from "koinos-sdk-as";
import * as immutable from "./proto/immutable";

export class Immutable {
  authorize(args: authorize_arguments): authorize_result {
    // return false when trying to upload a new version of the contract
    return new authorize_result(false);
  }

  add(args: immutable.add_arguments): immutable.add_result {
    return new immutable.add_result(args.x + args.y);
  }
}
