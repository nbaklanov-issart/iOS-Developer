using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone {

	// Metadata.xml XPath interface reference: path="/api/package[@name='ru.terrakok.cicerone']/interface[@name='NavigatorHolder']"
	[Register ("ru/terrakok/cicerone/NavigatorHolder", "", "RU.Terrakok.Cicerone.INavigatorHolderInvoker")]
	public partial interface INavigatorHolder : IJavaObject {

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/interface[@name='NavigatorHolder']/method[@name='removeNavigator' and count(parameter)=0]"
		[Register ("removeNavigator", "()V", "GetRemoveNavigatorHandler:RU.Terrakok.Cicerone.INavigatorHolderInvoker, CiceroneBinding")]
		void RemoveNavigator ();

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/interface[@name='NavigatorHolder']/method[@name='setNavigator' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.Navigator']]"
		[Register ("setNavigator", "(Lru/terrakok/cicerone/Navigator;)V", "GetSetNavigator_Lru_terrakok_cicerone_Navigator_Handler:RU.Terrakok.Cicerone.INavigatorHolderInvoker, CiceroneBinding")]
		void SetNavigator (global::RU.Terrakok.Cicerone.INavigator p0);

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/NavigatorHolder", DoNotGenerateAcw=true)]
	internal class INavigatorHolderInvoker : global::Java.Lang.Object, INavigatorHolder {

		static IntPtr java_class_ref = JNIEnv.FindClass ("ru/terrakok/cicerone/NavigatorHolder");

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (INavigatorHolderInvoker); }
		}

		IntPtr class_ref;

		public static INavigatorHolder GetObject (IntPtr handle, JniHandleOwnership transfer)
		{
			return global::Java.Lang.Object.GetObject<INavigatorHolder> (handle, transfer);
		}

		static IntPtr Validate (IntPtr handle)
		{
			if (!JNIEnv.IsInstanceOf (handle, java_class_ref))
				throw new InvalidCastException (string.Format ("Unable to convert instance of type '{0}' to type '{1}'.",
							JNIEnv.GetClassNameFromInstance (handle), "ru.terrakok.cicerone.NavigatorHolder"));
			return handle;
		}

		protected override void Dispose (bool disposing)
		{
			if (this.class_ref != IntPtr.Zero)
				JNIEnv.DeleteGlobalRef (this.class_ref);
			this.class_ref = IntPtr.Zero;
			base.Dispose (disposing);
		}

		public INavigatorHolderInvoker (IntPtr handle, JniHandleOwnership transfer) : base (Validate (handle), transfer)
		{
			IntPtr local_ref = JNIEnv.GetObjectClass (((global::Java.Lang.Object) this).Handle);
			this.class_ref = JNIEnv.NewGlobalRef (local_ref);
			JNIEnv.DeleteLocalRef (local_ref);
		}

		static Delegate cb_removeNavigator;
#pragma warning disable 0169
		static Delegate GetRemoveNavigatorHandler ()
		{
			if (cb_removeNavigator == null)
				cb_removeNavigator = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr>) n_RemoveNavigator);
			return cb_removeNavigator;
		}

		static void n_RemoveNavigator (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.INavigatorHolder __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigatorHolder> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.RemoveNavigator ();
		}
#pragma warning restore 0169

		IntPtr id_removeNavigator;
		public unsafe void RemoveNavigator ()
		{
			if (id_removeNavigator == IntPtr.Zero)
				id_removeNavigator = JNIEnv.GetMethodID (class_ref, "removeNavigator", "()V");
			JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_removeNavigator);
		}

		static Delegate cb_setNavigator_Lru_terrakok_cicerone_Navigator_;
#pragma warning disable 0169
		static Delegate GetSetNavigator_Lru_terrakok_cicerone_Navigator_Handler ()
		{
			if (cb_setNavigator_Lru_terrakok_cicerone_Navigator_ == null)
				cb_setNavigator_Lru_terrakok_cicerone_Navigator_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_SetNavigator_Lru_terrakok_cicerone_Navigator_);
			return cb_setNavigator_Lru_terrakok_cicerone_Navigator_;
		}

		static void n_SetNavigator_Lru_terrakok_cicerone_Navigator_ (IntPtr jnienv, IntPtr native__this, IntPtr native_p0)
		{
			global::RU.Terrakok.Cicerone.INavigatorHolder __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigatorHolder> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.INavigator p0 = (global::RU.Terrakok.Cicerone.INavigator)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigator> (native_p0, JniHandleOwnership.DoNotTransfer);
			__this.SetNavigator (p0);
		}
#pragma warning restore 0169

		IntPtr id_setNavigator_Lru_terrakok_cicerone_Navigator_;
		public unsafe void SetNavigator (global::RU.Terrakok.Cicerone.INavigator p0)
		{
			if (id_setNavigator_Lru_terrakok_cicerone_Navigator_ == IntPtr.Zero)
				id_setNavigator_Lru_terrakok_cicerone_Navigator_ = JNIEnv.GetMethodID (class_ref, "setNavigator", "(Lru/terrakok/cicerone/Navigator;)V");
			JValue* __args = stackalloc JValue [1];
			__args [0] = new JValue (p0);
			JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_setNavigator_Lru_terrakok_cicerone_Navigator_, __args);
		}

	}

}
