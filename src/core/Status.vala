/**
* This enum defines the available status that a contact/profile can have.
*/
public enum Ricin.Status {
  OFFLINE,
  ONLINE,
  AWAY,
  BUSY,
  BLOCKED;

  /**
  * Enum to string.
  **/
  public string to_string () {
    switch (this) {
      case OFFLINE:
        return _("Offline");
      case ONLINE:
        return _("Online");
      case AWAY:
        return _("Away");
      case BUSY:
        return _("Busy");
      case BLOCKED:
        return _("Blocked");
      default:
        assert_not_reached ();
    }
  }
}
