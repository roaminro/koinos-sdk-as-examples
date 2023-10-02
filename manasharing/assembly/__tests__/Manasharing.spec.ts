import { Manasharing } from '../Manasharing';
import { manasharing } from '../proto/manasharing';

describe('contract', () => {
  it("should return 'hello, NAME!'", () => {
    const c = new Manasharing();

    const args = new manasharing.hello_arguments('World');
    const res = c.hello(args);

    expect(res.value).toStrictEqual('Hello, World!');
  });
});
