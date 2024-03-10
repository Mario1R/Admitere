package crc64abcf758abefbe912;


public class RealtimeBlurView_StopException
	extends java.lang.Exception
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("UraniumUI.Blurs.Platforms.Android.RealtimeBlurView+StopException, UraniumUI.Blurs", RealtimeBlurView_StopException.class, __md_methods);
	}


	public RealtimeBlurView_StopException ()
	{
		super ();
		if (getClass () == RealtimeBlurView_StopException.class) {
			mono.android.TypeManager.Activate ("UraniumUI.Blurs.Platforms.Android.RealtimeBlurView+StopException, UraniumUI.Blurs", "", this, new java.lang.Object[] {  });
		}
	}


	public RealtimeBlurView_StopException (java.lang.String p0, java.lang.Throwable p1)
	{
		super (p0, p1);
		if (getClass () == RealtimeBlurView_StopException.class) {
			mono.android.TypeManager.Activate ("UraniumUI.Blurs.Platforms.Android.RealtimeBlurView+StopException, UraniumUI.Blurs", "System.String, System.Private.CoreLib:Java.Lang.Throwable, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public RealtimeBlurView_StopException (java.lang.String p0)
	{
		super (p0);
		if (getClass () == RealtimeBlurView_StopException.class) {
			mono.android.TypeManager.Activate ("UraniumUI.Blurs.Platforms.Android.RealtimeBlurView+StopException, UraniumUI.Blurs", "System.String, System.Private.CoreLib", this, new java.lang.Object[] { p0 });
		}
	}


	public RealtimeBlurView_StopException (java.lang.Throwable p0)
	{
		super (p0);
		if (getClass () == RealtimeBlurView_StopException.class) {
			mono.android.TypeManager.Activate ("UraniumUI.Blurs.Platforms.Android.RealtimeBlurView+StopException, UraniumUI.Blurs", "Java.Lang.Throwable, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

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
