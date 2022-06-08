import { Delegation } from '../Delegation';
import { delegation } from '../proto/delegation';

describe('contract', () => {
  it("should return 'hello, NAME!'", () => {
    const c = new Delegation();

    const args = new delegation.hello_arguments('World');
    const res = c.hello(args);

    expect(res.value).toStrictEqual('Hello, World!');
  });
});
