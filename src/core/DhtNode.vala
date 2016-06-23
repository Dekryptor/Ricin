using Ricin;

/**
* This class defines a Tox bootstrap node.
*/
public class DhtNode : Object {
  /**
  * The node IP address.
  **/
  public string ip { get; private set; }

  /**
  * The node port to connect to.
  **/
  public int port { get; private set; }

  /**
  * The node public key, used to verify it's authenticity.
  **/
  public Ricin.PubKey public_key { get; private set; }

  /**
  * The node IP type. true for IPv6, false for IPv4
  **/
  public bool is_ipv6 { get; private set; default = false; }

  /**
  * {string} ip - A valid IPv4/IPv6.
  * {int} port - A valid and open port.
  * {string} Ricin.PubKey - A valid public key.
  * {bool} is_ipv6 - Is the node using an IPv6 address ?
  */
  public DhtNode (string ip, int port, Ricin.PubKey public_key, bool is_ipv6 = false) {
    this.ip = ip;
    this.port = port;
    this.public_key = public_key;
    this.is_ipv6 = is_ipv6;
  }
}
