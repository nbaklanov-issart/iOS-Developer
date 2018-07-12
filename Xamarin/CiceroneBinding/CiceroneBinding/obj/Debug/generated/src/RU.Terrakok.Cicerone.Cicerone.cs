using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Cicerone']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/Cicerone", DoNotGenerateAcw=true)]
	[global::Java.Interop.JavaTypeParameters (new string [] {"T extends ru.terrakok.cicerone.BaseRouter"})]
	public partial class Cicerone : global::Java.Lang.Object {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/Cicerone", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (Cicerone); }
		}

		protected Cicerone (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static Delegate cb_getNavigatorHolder;
#pragma warning disable 0169
		static Delegate GetGetNavigatorHolderHandler ()
		{
			if (cb_getNavigatorHolder == null)
				cb_getNavigatorHolder = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr>) n_GetNavigatorHolder);
			return cb_getNavigatorHolder;
		}

		static IntPtr n_GetNavigatorHolder (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Cicerone __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Cicerone> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			return JNIEnv.ToLocalJniHandle (__this.NavigatorHolder);
		}
#pragma warning restore 0169

		static IntPtr id_getNavigatorHolder;
		public virtual unsafe global::RU.Terrakok.Cicerone.INavigatorHolder NavigatorHolder {
			// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Cicerone']/method[@name='getNavigatorHolder' and count(parameter)=0]"
			[Register ("getNavigatorHolder", "()Lru/terrakok/cicerone/NavigatorHolder;", "GetGetNavigatorHolderHandler")]
			get {
				if (id_getNavigatorHolder == IntPtr.Zero)
					id_getNavigatorHolder = JNIEnv.GetMethodID (class_ref, "getNavigatorHolder", "()Lru/terrakok/cicerone/NavigatorHolder;");
				try {

					if (((object) this).GetType () == ThresholdType)
						return global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigatorHolder> (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_getNavigatorHolder), JniHandleOwnership.TransferLocalRef);
					else
						return global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigatorHolder> (JNIEnv.CallNonvirtualObjectMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "getNavigatorHolder", "()Lru/terrakok/cicerone/NavigatorHolder;")), JniHandleOwnership.TransferLocalRef);
				} finally {
				}
			}
		}

		static Delegate cb_getRouter;
#pragma warning disable 0169
		static Delegate GetGetRouterHandler ()
		{
			if (cb_getRouter == null)
				cb_getRouter = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr>) n_GetRouter);
			return cb_getRouter;
		}

		static IntPtr n_GetRouter (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Cicerone __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Cicerone> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			return JNIEnv.ToLocalJniHandle (__this.Router);
		}
#pragma warning restore 0169

		static IntPtr id_getRouter;
		public virtual unsafe global::Java.Lang.Object Router {
			// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Cicerone']/method[@name='getRouter' and count(parameter)=0]"
			[Register ("getRouter", "()Lru/terrakok/cicerone/BaseRouter;", "GetGetRouterHandler")]
			get {
				if (id_getRouter == IntPtr.Zero)
					id_getRouter = JNIEnv.GetMethodID (class_ref, "getRouter", "()Lru/terrakok/cicerone/BaseRouter;");
				try {

					if (((object) this).GetType () == ThresholdType)
						return (Java.Lang.Object) global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_getRouter), JniHandleOwnership.TransferLocalRef);
					else
						return (Java.Lang.Object) global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (JNIEnv.CallNonvirtualObjectMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "getRouter", "()Lru/terrakok/cicerone/BaseRouter;")), JniHandleOwnership.TransferLocalRef);
				} finally {
				}
			}
		}

		static IntPtr id_create;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Cicerone']/method[@name='create' and count(parameter)=0]"
		[Register ("create", "()Lru/terrakok/cicerone/Cicerone;", "")]
		public static unsafe global::RU.Terrakok.Cicerone.Cicerone Create ()
		{
			if (id_create == IntPtr.Zero)
				id_create = JNIEnv.GetStaticMethodID (class_ref, "create", "()Lru/terrakok/cicerone/Cicerone;");
			try {
				return global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Cicerone> (JNIEnv.CallStaticObjectMethod  (class_ref, id_create), JniHandleOwnership.TransferLocalRef);
			} finally {
			}
		}

		static IntPtr id_create_Lru_terrakok_cicerone_BaseRouter_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Cicerone']/method[@name='create' and count(parameter)=1 and parameter[1][@type='T']]"
		[Register ("create", "(Lru/terrakok/cicerone/BaseRouter;)Lru/terrakok/cicerone/Cicerone;", "")]
		[global::Java.Interop.JavaTypeParameters (new string [] {"T extends ru.terrakok.cicerone.BaseRouter"})]
		public static unsafe global::RU.Terrakok.Cicerone.Cicerone Create (global::Java.Lang.Object customRouter)
		{
			if (id_create_Lru_terrakok_cicerone_BaseRouter_ == IntPtr.Zero)
				id_create_Lru_terrakok_cicerone_BaseRouter_ = JNIEnv.GetStaticMethodID (class_ref, "create", "(Lru/terrakok/cicerone/BaseRouter;)Lru/terrakok/cicerone/Cicerone;");
			IntPtr native_customRouter = JNIEnv.ToLocalJniHandle (customRouter);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_customRouter);
				global::RU.Terrakok.Cicerone.Cicerone __ret = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Cicerone> (JNIEnv.CallStaticObjectMethod  (class_ref, id_create_Lru_terrakok_cicerone_BaseRouter_, __args), JniHandleOwnership.TransferLocalRef);
				return __ret;
			} finally {
				JNIEnv.DeleteLocalRef (native_customRouter);
			}
		}

	}
}
