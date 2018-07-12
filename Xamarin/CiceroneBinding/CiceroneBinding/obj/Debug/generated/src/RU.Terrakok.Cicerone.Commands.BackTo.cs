using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone.Commands {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone.commands']/class[@name='BackTo']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/commands/BackTo", DoNotGenerateAcw=true)]
	public partial class BackTo : global::Java.Lang.Object, global::RU.Terrakok.Cicerone.Commands.ICommand {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/commands/BackTo", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (BackTo); }
		}

		protected BackTo (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static IntPtr id_ctor_Ljava_lang_String_;
		// Metadata.xml XPath constructor reference: path="/api/package[@name='ru.terrakok.cicerone.commands']/class[@name='BackTo']/constructor[@name='BackTo' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register (".ctor", "(Ljava/lang/String;)V", "")]
		public unsafe BackTo (string screenKey)
			: base (IntPtr.Zero, JniHandleOwnership.DoNotTransfer)
		{
			if (((global::Java.Lang.Object) this).Handle != IntPtr.Zero)
				return;

			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);
				if (((object) this).GetType () != typeof (BackTo)) {
					SetHandle (
							global::Android.Runtime.JNIEnv.StartCreateInstance (((object) this).GetType (), "(Ljava/lang/String;)V", __args),
							JniHandleOwnership.TransferLocalRef);
					global::Android.Runtime.JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, "(Ljava/lang/String;)V", __args);
					return;
				}

				if (id_ctor_Ljava_lang_String_ == IntPtr.Zero)
					id_ctor_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "<init>", "(Ljava/lang/String;)V");
				SetHandle (
						global::Android.Runtime.JNIEnv.StartCreateInstance (class_ref, id_ctor_Ljava_lang_String_, __args),
						JniHandleOwnership.TransferLocalRef);
				JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, class_ref, id_ctor_Ljava_lang_String_, __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_getScreenKey;
#pragma warning disable 0169
		static Delegate GetGetScreenKeyHandler ()
		{
			if (cb_getScreenKey == null)
				cb_getScreenKey = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr>) n_GetScreenKey);
			return cb_getScreenKey;
		}

		static IntPtr n_GetScreenKey (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Commands.BackTo __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.BackTo> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			return JNIEnv.NewString (__this.ScreenKey);
		}
#pragma warning restore 0169

		static IntPtr id_getScreenKey;
		public virtual unsafe string ScreenKey {
			// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.commands']/class[@name='BackTo']/method[@name='getScreenKey' and count(parameter)=0]"
			[Register ("getScreenKey", "()Ljava/lang/String;", "GetGetScreenKeyHandler")]
			get {
				if (id_getScreenKey == IntPtr.Zero)
					id_getScreenKey = JNIEnv.GetMethodID (class_ref, "getScreenKey", "()Ljava/lang/String;");
				try {

					if (((object) this).GetType () == ThresholdType)
						return JNIEnv.GetString (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_getScreenKey), JniHandleOwnership.TransferLocalRef);
					else
						return JNIEnv.GetString (JNIEnv.CallNonvirtualObjectMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "getScreenKey", "()Ljava/lang/String;")), JniHandleOwnership.TransferLocalRef);
				} finally {
				}
			}
		}

	}
}
