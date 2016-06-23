using Ricin;

/**
* This class defines a Tox bootstrap node.
*/
public class DhtNode : Object {
    public string ip     { get; set; }
    public int    port   { get; set; }
    public string pubkey { get; set; }

    /**
    * A constructor.
    */
    public DhtNode (string ip, int port, string pubkey) {
      this.ip     = ip;
      this.port   = port;
      this.pubkey = pubkey;
    }
}
