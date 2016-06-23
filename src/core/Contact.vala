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
  public Ricin.PubKey public_key { get; private set; }

  /**
  * The contact id, used to identify it within the Tox instance.
  * This is what toxcore calls a "friend_number" or "friend_num".
  **/
  public uint32 id { get; private set; default = 0; }

  /**
  * The contact display name.
  **/
  public string name { get; set; default = ""; }

  /**
  * The contact status message, refered as mood to avoid confusion with status.
  **/
  public string mood { get; set; default = ""; }

  /**
  * The contact status/state (offline, online, away, busy, blocked, etc).
  **/
  public Ricin.Status status { get; set; default = Ricin.Status.OFFLINE; }

  /**
  * A constructor.
  */
  public Contact (string public_key) {
    this.public_key = new Ricin.PubKey (public_key);
  }
}
