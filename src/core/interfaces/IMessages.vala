using Ricin;

/**
* Defines a simple enum to specify a message direction.
* NONE is used when the message isn't sent/received by an user but generated,
* by Ricin.
**/
public enum Ricin.MessageDirection {
  INCOMING,
  OUTGOING,
  NONE
}

/**
* This interface defines which properties/methods a message must implements.
* @used_by Action
* @used_by Message
* @used_by GroupAction
* @used_by GroupMessage
*/
public interface Ricin.IMessages {
  /**
  * The message timestamp.
  **/
  public abstract DateTime timestamp { get; protected set; }

  /**
  * The message direction.
  * If not set, will use Ricin.MessageDirection.NONE;
  **/
  public abstract Ricin.MessageDirection direction { get; protected set; default = Ricin.MessageDirection.NONE; }

  /**
  * Defines if the message is an action.
  **/
  public abstract bool is_action { get; set; }

  /**
  * The message content in plain text. No parser markup here.
  * This property MUST only contains the message as sent/received.
  **/
  public abstract string message { get; protected set; }

  /**
  * Get sender name in plain text.
  **/
  public abstract string get_sender ();

  /**
  * Get plain time string.
  **/
  public virtual string get_formated_time () {
    return timestamp.format (_("%R:%S"));
  }

  /**
  * Compare senders of two messages.
  * MUST return true if message sender and compared message sender are equals.
  * Check shouldn't be based on sender name, preferd method is comparing public
  * keys.
  **/
  public abstract bool compare_sender (Ricin.IMessage sender);
}
