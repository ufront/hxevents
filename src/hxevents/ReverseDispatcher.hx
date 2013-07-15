package hxevents;
import hxevents.Dispatcher;

/**
 * Same as Dispatcher, but handlers are added (and so executed) in reverse order.
 * @author Andreas Soderlund
 */
class ReverseDispatcher<T> extends Dispatcher<T>
{
	public function new() { super(); }
	
	override public function add(h : T -> Void) : T -> Void {
		handlers.unshift(h);
		return h;
	}
}