/**
* This class permits to deal with user themes in an easy and convenient way.
*/
public class Ricin.ThemesManager : Object {
  /**
  * The available themes list. null if no themes are available/loaded.
  **/
  public Theme[]? themes { get; private set; default = null; }

  /**
  * A constructor.
  */
  public ThemesManager () {

  }
}
