import { System, Protobuf } from 'koinos-cdt-as';
import { Calculator } from './Calculator';
import { calculator } from './proto/Calculator';

export function main(): i32 {
  const entryPoint = System.getEntryPoint();
  const rdbuf = System.getContractArguments();
  let retbuf = new Uint8Array(1024);

  const c = new Calculator();

  switch (entryPoint) {
    
    case 0x01: {
      const args = Protobuf.decode<calculator.add_arguments>(rdbuf, calculator.add_arguments.decode);
      const res = c.add(args);
      retbuf = Protobuf.encode(res, calculator.add_result.encode);
      break;
    }
              
    case 0x02: {
      const args = Protobuf.decode<calculator.sub_arguments>(rdbuf, calculator.sub_arguments.decode);
      const res = c.sub(args);
      retbuf = Protobuf.encode(res, calculator.sub_result.encode);
      break;
    }
              
    case 0x03: {
      const args = Protobuf.decode<calculator.mul_arguments>(rdbuf, calculator.mul_arguments.decode);
      const res = c.mul(args);
      retbuf = Protobuf.encode(res, calculator.mul_result.encode);
      break;
    }
              
    case 0x04: {
      const args = Protobuf.decode<calculator.div_arguments>(rdbuf, calculator.div_arguments.decode);
      const res = c.div(args);
      retbuf = Protobuf.encode(res, calculator.div_result.encode);
      break;
    }
              
    default:
      System.exitContract(1);
      break;
  }
  
  System.setContractResultBytes(retbuf);
  
  System.exitContract(0);
  return 0;
}

main();