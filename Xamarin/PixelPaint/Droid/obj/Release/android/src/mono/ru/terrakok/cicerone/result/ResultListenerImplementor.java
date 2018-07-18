package mono.ru.terrakok.cicerone.result;


public class ResultListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		ru.terrakok.cicerone.result.ResultListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onResult:(Ljava/lang/Object;)V:GetOnResult_Ljava_lang_Object_Handler:RU.Terrakok.Cicerone.Result.IResultListenerInvoker, CiceroneBinding\n" +
			"";
		mono.android.Runtime.register ("RU.Terrakok.Cicerone.Result.IResultListenerImplementor, CiceroneBinding", ResultListenerImplementor.class, __md_methods);
	}


	public ResultListenerImplementor ()
	{
		super ();
		if (getClass () == ResultListenerImplementor.class)
			mono.android.TypeManager.Activate ("RU.Terrakok.Cicerone.Result.IResultListenerImplementor, CiceroneBinding", "", this, new java.lang.Object[] {  });
	}


	public void onResult (java.lang.Object p0)
	{
		n_onResult (p0);
	}

	private native void n_onResult (java.lang.Object p0);

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
