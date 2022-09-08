import { Base58, chain, MockVM, Protobuf, system_calls, token } from '@koinos/sdk-as';
import { Staking } from '../Staking';
import { staking } from '../proto/staking';

const TOKEN_CONTRACT_ID = Base58.decode('1FPiwDdVGhWb4iAvvdALVXY88rgvkAA5mT');
const MOCK_ACCT1 = Base58.decode('1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqG');

describe('staking', () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(TOKEN_CONTRACT_ID);
  });

  it('should stake tokens', () => {
    const stk = new Staking();

    // mock a successful token transfer result
    MockVM.setCallContractResults([new system_calls.exit_arguments(1)]);

    // call the stake function
    const stakeArgs = new staking.stake_arguments(MOCK_ACCT1, 10);
    const stakeRes = stk.stake(stakeArgs);

    // should be successfully staked
    expect(stakeRes.value).toBe(true);

    // the staked balance should reflect the correct amount
    const balArgs = new staking.balance_of_arguments(MOCK_ACCT1);
    const balRes = stk.balance_of(balArgs);

    expect(balRes.value).toBe(10);
  });
});