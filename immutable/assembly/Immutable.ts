import { authority } from "@koinos/sdk-as";
import { immutable } from "./proto/immutable";

export class Immutable {
  authorize(args: authority.authorize_arguments): authority.authorize_result {
    // return false when trying to upload a new version of the contract
    return new authority.authorize_result(false);
  }

  add(args: immutable.add_arguments): immutable.add_result {
    return new immutable.add_result(args.x + args.y);
  }
}
