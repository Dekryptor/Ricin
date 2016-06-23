/**
* This class defines a Ricin user profile (.tox) and permits to interact with
* it in an easy and clear way.
*/
public class Ricin.Profile : Object {
  /**
  * The profile path.
  **/
  public string path { get; private set; }

  /**
  * The profile name.
  **/
  public string name { get; set; default = Consts.DEFAULT_NAME; }

  /**
  * A constructor.
  */
  public Profile (string path) {
    this.path = path;
  }
}
