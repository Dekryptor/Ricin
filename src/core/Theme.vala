/**
* This class defines an user theme.
*/
public class Ricin.Theme : Object {
  /**
  * The theme path.
  **/
  public string path { get; private set; }

  /**
  * The theme content (Gtk+3 compatible css). This is a cached version.
  * Note that this variable will be reseted when calling the reload method.
  **/
  public string content { get; private set; }

  /**
  * The theme name.
  **/
  public string name { get; private set; default = "Unamed theme"; }

  /**
  * The theme version.
  **/
  public string version { get; private set; default = "0.0.1"; }

  /**
  * The theme description. Should not exceed 60 characters.
  **/
  public string description { get; private set; default = "A simple Ricin theme"; }

  /**
  * The theme author.
  **/
  public string author { get; private set; default = "Unknown"; }

  /**
  * string path - The theme absolute path. Must be a valid CSS file.
  */
  public Theme (string path) {
    this.path = path;
  }
}
