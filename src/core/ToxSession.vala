using Ricin;
using ToxCore;
using ToxEncrypt;

/**
* This class is the main class for Ricin, it handles all the ToxCore stuffs.
* This class must register signals, dispatch them, handle friends, messages,
* chatlogs, file transfers, settings, etc.
*
* The Ricin UI then just have to connect to the signals provided by ToxSession,
* in order to update the correct widget. The UI can also call public functions
* to interact with ToxCore *via* this class.
*/
public class Ricin.ToxSession : Object {
  /**
  * The toxcore handle.
  * Refers to the ToxCore.Tox class from libtoxcore vapi.
  **/
  private ToxCore.Tox tox_handle;

  /**
  * The toxcore options for the handle.
  **/
  private ToxCore.Options tox_options;

  /**
  * A constructor.
  */
  public ToxSession () {

  }

  // Until we have the UI.
  public int run () { return 0; }
}
