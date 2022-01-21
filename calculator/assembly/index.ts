import { calc } from "./protos/calculator";
import { system, Protobuf } from "koinos-cdt-as";

enum entries {
  addEntry = 1,
  subEntry = 2,
  mulEntry = 3,
  divEntry = 4
}

class Calculator {
  public add(x: i64, y: i64): calc.add_result {
    return new calc.add_result(x + y);
  }

  public sub(x: i64, y: i64): calc.sub_result {
    return new calc.sub_result(x - y);
  }

  public mul(x: i64, y: i64): calc.mul_result {
    return new calc.mul_result(x * y);
  }

  public div(x: i64, y: i64): calc.div_result {
    return new calc.div_result(x / y);
  }
}

function main(): i32 {

  const entryPoint = system.getEntryPoint();
  const rdbuf = system.getContractArguments();
  let retbuf = new Uint8Array(32);

  const c = new Calculator();

  switch (entryPoint) {
    case entries.addEntry: {
      const args = Protobuf.decode<calc.add_arguments>(rdbuf, calc.add_arguments.decode);
      const res = c.add(args.x, args.y);
      retbuf = Protobuf.encode(res, calc.add_result.encode);
      break;
    }
    case entries.subEntry: {
      const args = Protobuf.decode<calc.sub_arguments>(rdbuf, calc.sub_arguments.decode);
      const res = c.sub(args.x, args.y);
      retbuf = Protobuf.encode(res, calc.sub_result.encode);
      break;
    }
    case entries.mulEntry: {
      const args = Protobuf.decode<calc.mul_arguments>(rdbuf, calc.mul_arguments.decode);
      const res = c.mul(args.x, args.y);
      retbuf = Protobuf.encode(res, calc.mul_result.encode);
      break;
    }
    case entries.divEntry: {
      const args = Protobuf.decode<calc.div_arguments>(rdbuf, calc.div_arguments.decode);
      const res = c.div(args.x, args.y);
      retbuf = Protobuf.encode(res, calc.div_result.encode);
      break;
    }
    default:
      system.exitContract(1);
      break;
  }
  
  system.setContractResultBytes(retbuf);

  system.exitContract(0);
  return 0;
}

main();