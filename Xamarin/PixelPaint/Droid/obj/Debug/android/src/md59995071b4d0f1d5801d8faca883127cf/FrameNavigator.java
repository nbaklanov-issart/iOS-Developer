package md59995071b4d0f1d5801d8faca883127cf;


public class FrameNavigator
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		ru.terrakok.cicerone.Navigator
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_applyCommands:([Lru/terrakok/cicerone/commands/Command;)V:GetApplyCommands_arrayLru_terrakok_cicerone_commands_Command_Handler:RU.Terrakok.Cicerone.INavigatorInvoker, CiceroneBinding\n" +
			"";
		mono.android.Runtime.register ("PixelPaint.Droid.Utils.Navigation.FrameNavigator, PixelPaint.Droid", FrameNavigator.class, __md_methods);
	}


	public FrameNavigator ()
	{
		super ();
		if (getClass () == FrameNavigator.class)
			mono.android.TypeManager.Activate ("PixelPaint.Droid.Utils.Navigation.FrameNavigator, PixelPaint.Droid", "", this, new java.lang.Object[] {  });
	}


	public void applyCommands (ru.terrakok.cicerone.commands.Command[] p0)
	{
		n_applyCommands (p0);
	}

	private native void n_applyCommands (ru.terrakok.cicerone.commands.Command[] p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
