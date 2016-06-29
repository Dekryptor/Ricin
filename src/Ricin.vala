// project version=1.0.1
using Ricin;

static int main (string[] args) {
  stdout.printf (
    "%s v.%s started !\n",
    Consts.APPLICATION_NAME,
    Consts.APPLICATION_VERSION
  );

  /**
  * TODO: Initialize GetText (Glib.Intl).
  * TODO: Initialize and parse OptionContext.
  **/

  return new Ricin.ToxSession ().run ();
}
