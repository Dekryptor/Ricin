using Ricin;

/**
* This class defines a Tox "friend" but we use the term contact in Ricin.
* This class stores a basic Contact object and defines some methods to interact
* with it such as requesting the avatar, sending a message, accepting a file...
*/
public class Ricin.Contact : Object {
  /**
  * The contact public key, used to identify it on the Tox network.
  **/
  public Ricin.PubKey public_key { get; protected set; }

  /**
  * The contact id, used to identify it within the Tox instance.
  * This is what toxcore calls a "friend_number" or "friend_num".
  **/
  public uint32 id { get; protected set; default = 0; }

  /**
  * The contact display name.
  **/
  public string name { get; protected set; default = ""; }

  /**
  * The contact status message, refered as mood to avoid confusion with status.
  **/
  public string mood { get; protected set; default = ""; }

  /**
  * The contact status/state (offline, online, away, busy, blocked, etc).
  **/
  public Ricin.Status status { get; protected set; default = Ricin.Status.OFFLINE; }

  /**
  * The contact last seen date.
  **/
  public DateTime last_seen { get; protected set; }

  /**
  * The contact avatar in Gdk.Pixbuf format.
  * If null, Ricin must set it to the correct ToxIdenticon.
  **/
  public Gdk.Pixbuf? avatar { get; protected set; default = null; }

  /**
  * Is the contact typing ?
  **/
  public bool is_typing { get; set; default = false; }

  /**
  * Number of unread messages from this contact.
  **/
  public int unread_messages { get; set; default = 0; }

  /***
  ** The above properties are stored in the Ricin save file for this contact.
  ***/

  /**
  * Notes about the contact.
  **/
  public string notes { get; set; default = ""; }

  /**
  * Alias of the contact, null to unset.
  **/
  public string? alias { get; set; default = null; }

  /**
  * Is the contact blocked ?
  **/
  public bool is_blocked { get; set; default = false; }

  /**
  * Is the contact tagged ? No if null, else a list of tags.
  **/
  public string[]? tags { get; set; default = null; }

  /**
  * A constructor.
  */
  public Contact (string public_key) {
    this.public_key = new Ricin.PubKey (public_key);
  }
}
