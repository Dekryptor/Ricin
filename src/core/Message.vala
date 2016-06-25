using Ricin;

/**
* This class defines a Tox message.
* @implements IMessages
*/
public class Ricin.Message : IMessages, Object {
  /**
  * The message sender. Must be a valid Contact.
  * TODO: Implement something like IPerson to unify Contacts and current Profile.
  **/
  public unowned Contact sender { get; protected set; }

  /**
  * The message receiver. Must be a valid Contact.
  * TODO: Implement something like IPerson to unify Contacts and current Profile.
  **/
  public unowned Contact receiver { get; protected set; }

  /**
  * The message timestamp.
  **/
  public DateTime timestamp { get; protected set; }

  /**
  * The message direction.
  **/
  public Ricin.MessageDirection direction { get; protected set; }

  /**
  * Defines if the message is an action.
  **/
  public bool is_action { get; set; default = false; }

  /**
  * The message content in plain text. No parser markup here.
  * This property MUST only contains the message as sent/received.
  **/
  public string message { get; protected set; }

  /**
  * This is the Message constructor for not INCOMING nor OUTGOING messages.
  * Has not sender nor receiver. This is a Ricin generated message.
  **/
  public Message (string message, DateTime timestamp = new DateTime.now_local ()) {
    this.direction = MessageDirection.NONE;
    this.sender = null;
    this.receiver = null;
    this.message = message;
    this.timestamp = timestamp;
  }

  /**
  * This is the Message constructor for INCOMING messages.
  * Has a sender but no receiver as we assume null to be the user.
  **/
  public Message.Incoming (Contact sender, string message, DateTime timestamp = new DateTime.now_local ()) {
    this.direction = MessageDirection.INCOMING;
    this.sender = sender;
    this.receiver = null;
    this.message = message;
    this.timestamp = timestamp;
  }

  /**
  * This is the Message constructor for OUTGOING messages.
  * Has a receiver but no sender as we assume null to be the user.
  **/
  public Message.Outgoing (Contact receiver, string message, DateTime timestamp = new DateTime.now_local ()) {
    this.direction = MessageDirection.OUTGOING;
    this.sender = null;
    this.receiver = receiver;
    this.message = message;
    this.timestamp = timestamp;
  }

  /**
  * Get sender name in plain text.
  **/
  public virtual string get_sender () {
    /* TODO: Write a method to get the correct sender name. */
    return "";
  }

  /**
  * Compare senders of two messages.
  * MUST return true if message sender and compared message sender are equals.
  * Check shouldn't be based on sender name, preferd method is comparing public
  * keys.
  **/
  public virtual bool compare_sender (Ricin.IMessages sender) {
    if (sender is Message) {
      return true;

      /* TODO: Do something like this: */
      // return (this.sender == ((Message) this.receiver).sender);
    }
    return false;
  }
}
