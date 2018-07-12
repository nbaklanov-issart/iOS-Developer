using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone.Result {

	// Metadata.xml XPath interface reference: path="/api/package[@name='ru.terrakok.cicerone.result']/interface[@name='ResultListener']"
	[Register ("ru/terrakok/cicerone/result/ResultListener", "", "RU.Terrakok.Cicerone.Result.IResultListenerInvoker")]
	public partial interface IResultListener : IJavaObject {

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.result']/interface[@name='ResultListener']/method[@name='onResult' and count(parameter)=1 and parameter[1][@type='java.lang.Object']]"
		[Register ("onResult", "(Ljava/lang/Object;)V", "GetOnResult_Ljava_lang_Object_Handler:RU.Terrakok.Cicerone.Result.IResultListenerInvoker, CiceroneBinding")]
		void OnResult (global::Java.Lang.Object p0);

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/result/ResultListener", DoNotGenerateAcw=true)]
	internal class IResultListenerInvoker : global::Java.Lang.Object, IResultListener {

		static IntPtr java_class_ref = JNIEnv.FindClass ("ru/terrakok/cicerone/result/ResultListener");

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (IResultListenerInvoker); }
		}

		IntPtr class_ref;

		public static IResultListener GetObject (IntPtr handle, JniHandleOwnership transfer)
		{
			return global::Java.Lang.Object.GetObject<IResultListener> (handle, transfer);
		}

		static IntPtr Validate (IntPtr handle)
		{
			if (!JNIEnv.IsInstanceOf (handle, java_class_ref))
				throw new InvalidCastException (string.Format ("Unable to convert instance of type '{0}' to type '{1}'.",
							JNIEnv.GetClassNameFromInstance (handle), "ru.terrakok.cicerone.result.ResultListener"));
			return handle;
		}

		protected override void Dispose (bool disposing)
		{
			if (this.class_ref != IntPtr.Zero)
				JNIEnv.DeleteGlobalRef (this.class_ref);
			this.class_ref = IntPtr.Zero;
			base.Dispose (disposing);
		}

		public IResultListenerInvoker (IntPtr handle, JniHandleOwnership transfer) : base (Validate (handle), transfer)
		{
			IntPtr local_ref = JNIEnv.GetObjectClass (((global::Java.Lang.Object) this).Handle);
			this.class_ref = JNIEnv.NewGlobalRef (local_ref);
			JNIEnv.DeleteLocalRef (local_ref);
		}

		static Delegate cb_onResult_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetOnResult_Ljava_lang_Object_Handler ()
		{
			if (cb_onResult_Ljava_lang_Object_ == null)
				cb_onResult_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_OnResult_Ljava_lang_Object_);
			return cb_onResult_Ljava_lang_Object_;
		}

		static void n_OnResult_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_p0)
		{
			global::RU.Terrakok.Cicerone.Result.IResultListener __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Result.IResultListener> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object p0 = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_p0, JniHandleOwnership.DoNotTransfer);
			__this.OnResult (p0);
		}
#pragma warning restore 0169

		IntPtr id_onResult_Ljava_lang_Object_;
		public unsafe void OnResult (global::Java.Lang.Object p0)
		{
			if (id_onResult_Ljava_lang_Object_ == IntPtr.Zero)
				id_onResult_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "onResult", "(Ljava/lang/Object;)V");
			JValue* __args = stackalloc JValue [1];
			__args [0] = new JValue (p0);
			JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_onResult_Ljava_lang_Object_, __args);
		}

	}

	// event args for ru.terrakok.cicerone.result.ResultListener.onResult
	public partial class ResultEventArgs : global::System.EventArgs {

		public ResultEventArgs (global::Java.Lang.Object p0)
		{
			this.p0 = p0;
		}

		global::Java.Lang.Object p0;
		public global::Java.Lang.Object P0 {
			get { return p0; }
		}
	}

	[global::Android.Runtime.Register ("mono/ru/terrakok/cicerone/result/ResultListenerImplementor")]
	internal sealed partial class IResultListenerImplementor : global::Java.Lang.Object, IResultListener {

		object sender;

		public IResultListenerImplementor (object sender)
			: base (
				global::Android.Runtime.JNIEnv.StartCreateInstance ("mono/ru/terrakok/cicerone/result/ResultListenerImplementor", "()V"),
				JniHandleOwnership.TransferLocalRef)
		{
			global::Android.Runtime.JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, "()V");
			this.sender = sender;
		}

#pragma warning disable 0649
		public EventHandler<ResultEventArgs> Handler;
#pragma warning restore 0649

		public void OnResult (global::Java.Lang.Object p0)
		{
			var __h = Handler;
			if (__h != null)
				__h (sender, new ResultEventArgs (p0));
		}

		internal static bool __IsEmpty (IResultListenerImplementor value)
		{
			return value.Handler == null;
		}
	}

}
