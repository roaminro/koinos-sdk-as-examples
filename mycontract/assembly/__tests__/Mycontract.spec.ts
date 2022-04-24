import { Mycontract } from '../Mycontract';
import { mycontract } from '../proto/mycontract';

describe('contract', () => {
  it("should return 'hello, NAME!'", () => {
    const c = new Mycontract();

    const args = new mycontract .hello_arguments('World');
    const res = c.hello(args);

    expect(res.value).toStrictEqual('Hello, World!');
  });
});
