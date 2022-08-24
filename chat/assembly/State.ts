import { System, chain } from "@koinos/sdk-as";
import { chat } from "./proto/chat";

const METADATA_SPACE_ID = 0;
const METADATA_OBJECT_ID = "0";
const MESSAGES_SPACE_ID = 1;

export class State {
  contractId: Uint8Array;
  metadataSpace: chain.object_space;
  messagesSpace: chain.object_space;

  lastMessageId: u64 = 0;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.metadataSpace = new chain.object_space();
    this.metadataSpace.id = METADATA_SPACE_ID;
    this.metadataSpace.zone = contractId;

    this.messagesSpace = new chain.object_space();
    this.messagesSpace.id = MESSAGES_SPACE_ID;
    this.messagesSpace.zone = contractId;

    const metadata = System.getObject<string, chat.metadata_object>(this.metadataSpace, METADATA_OBJECT_ID, chat.metadata_object.decode);

    if (metadata) {
      this.lastMessageId = metadata.last_message_id;
    }
  }

  IncrementLastMessageId(): void {
    // we don't check for overflow here, overwritting the old messages is an acceptable behavior
    this.lastMessageId += 1;

    const metadata = new chat.metadata_object(this.lastMessageId);
    System.putObject(this.metadataSpace, METADATA_OBJECT_ID, metadata, chat.metadata_object.encode);
  }

  SaveMessage(message: chat.chat_message): void {
    this.IncrementLastMessageId();
    System.putObject(this.messagesSpace, this.lastMessageId.toString(), message, chat.chat_message.encode);
  }

  GetMessage(messageId: u64): chat.chat_message | null {
    return System.getObject<string, chat.chat_message>(this.messagesSpace, messageId.toString(), chat.chat_message.decode);
  }

  GetPrevMessage(messageId: u64): System.ProtoDatabaseObject<chat.chat_message> | null {
    return System.getPrevObject<string, chat.chat_message>(this.messagesSpace, messageId.toString(), chat.chat_message.decode);
  }
}
