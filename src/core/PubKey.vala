/**
* This class defines a profile/contact/node public key.
*/
public class Ricin.PubKey : Object {
  /**
  * The public key.
  **/
  private string public_key;

  /**
  * A constructor.
  */
  public PubKey (string public_key) {
    this.public_key = public_key;
  }
}
