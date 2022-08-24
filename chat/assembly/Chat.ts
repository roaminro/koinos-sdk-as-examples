import { Base58, StringBytes, System, value } from "@koinos/sdk-as";
import { chat } from "./proto/chat";
import { State } from "./State";


export class Chat {
  contractId: Uint8Array;
  state: State;

  constructor() {
    this.contractId = System.getContractId();
    this.state = new State(this.contractId);
  }

  send(args: chat.send_arguments): chat.send_result {
    const message = args.message as string;

    // get the block timestamp
    const headInfo = System.getHeadInfo();

    // get the sender address
    const txField = System.getTransactionField('header.payer') as value.value_type;
    const sender = txField.bytes_value as Uint8Array;

    const newMessage = new chat.chat_message(sender, message, headInfo.head_block_time);

    this.state.SaveMessage(newMessage);

    return new chat.send_result();
  }

  read(
    args: chat.read_arguments
  ): chat.read_result {
    let number_messages = args.number_messages;

    // add +1 to the last message id so that we can get the last message when calling GetPrevMessage
    let prevMessageId = this.state.lastMessageId + 1;
    const messages: string[] = [];

    while (number_messages > 0) {
      const msg = this.state.GetPrevMessage(prevMessageId);
      if (!msg) {
        break;
      }

      const sender = Base58.encode(msg.value.user as Uint8Array);
      const message = msg.value.message as string;
      const timestamp = new Date(msg.value.timestamp).toUTCString();

      prevMessageId = parseInt(StringBytes.bytesToString(msg.key) as string) as u64;

      messages.push(`${timestamp} - ${sender}: ${message}`);

      number_messages -= 1;
    }

    // reverse the messages array to have the latest message showing at the bottom when printing in the cli
    System.log(messages.reverse().join('\n'));

    return new chat.read_result();
  }

  free_read(args: chat.free_read_arguments): chat.free_read_result {
    let number_messages = args.number_messages;

    const res = new chat.free_read_result();
    res.messages = [];

    // add +1 to the last message id so that we can get the last message when calling GetPrevMessage
    let prevMessageId = this.state.lastMessageId + 1;

    while (number_messages > 0) {
      const msg = this.state.GetPrevMessage(prevMessageId);
      if (!msg) {
        break;
      }

      const sender = Base58.encode(msg.value.user as Uint8Array);
      const message = msg.value.message as string;
      const timestamp = new Date(msg.value.timestamp).toUTCString();

      prevMessageId = parseInt(StringBytes.bytesToString(msg.key) as string) as u64;

      res.messages.push(`${timestamp} - ${sender}: ${message}`);

      number_messages -= 1;
    }

    // reverse the messages array to have the latest message showing at the bottom when printing in the cli
    res.messages = res.messages.reverse();

    return res;
  }
}
