using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/Router", DoNotGenerateAcw=true)]
	public partial class Router : global::RU.Terrakok.Cicerone.BaseRouter {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/Router", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (Router); }
		}

		protected Router (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static IntPtr id_ctor;
		// Metadata.xml XPath constructor reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/constructor[@name='Router' and count(parameter)=0]"
		[Register (".ctor", "()V", "")]
		public unsafe Router ()
			: base (IntPtr.Zero, JniHandleOwnership.DoNotTransfer)
		{
			if (((global::Java.Lang.Object) this).Handle != IntPtr.Zero)
				return;

			try {
				if (((object) this).GetType () != typeof (Router)) {
					SetHandle (
							global::Android.Runtime.JNIEnv.StartCreateInstance (((object) this).GetType (), "()V"),
							JniHandleOwnership.TransferLocalRef);
					global::Android.Runtime.JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, "()V");
					return;
				}

				if (id_ctor == IntPtr.Zero)
					id_ctor = JNIEnv.GetMethodID (class_ref, "<init>", "()V");
				SetHandle (
						global::Android.Runtime.JNIEnv.StartCreateInstance (class_ref, id_ctor),
						JniHandleOwnership.TransferLocalRef);
				JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, class_ref, id_ctor);
			} finally {
			}
		}

		static Delegate cb_backTo_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetBackTo_Ljava_lang_String_Handler ()
		{
			if (cb_backTo_Ljava_lang_String_ == null)
				cb_backTo_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_BackTo_Ljava_lang_String_);
			return cb_backTo_Ljava_lang_String_;
		}

		static void n_BackTo_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.BackTo (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_backTo_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='backTo' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("backTo", "(Ljava/lang/String;)V", "GetBackTo_Ljava_lang_String_Handler")]
		public virtual unsafe void BackTo (string screenKey)
		{
			if (id_backTo_Ljava_lang_String_ == IntPtr.Zero)
				id_backTo_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "backTo", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_backTo_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "backTo", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_exit;
#pragma warning disable 0169
		static Delegate GetExitHandler ()
		{
			if (cb_exit == null)
				cb_exit = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr>) n_Exit);
			return cb_exit;
		}

		static void n_Exit (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.Exit ();
		}
#pragma warning restore 0169

		static IntPtr id_exit;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='exit' and count(parameter)=0]"
		[Register ("exit", "()V", "GetExitHandler")]
		public virtual unsafe void Exit ()
		{
			if (id_exit == IntPtr.Zero)
				id_exit = JNIEnv.GetMethodID (class_ref, "exit", "()V");
			try {

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_exit);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "exit", "()V"));
			} finally {
			}
		}

		static Delegate cb_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetExitWithResult_Ljava_lang_Integer_Ljava_lang_Object_Handler ()
		{
			if (cb_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_ == null)
				cb_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_ExitWithResult_Ljava_lang_Integer_Ljava_lang_Object_);
			return cb_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_;
		}

		static void n_ExitWithResult_Ljava_lang_Integer_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_resultCode, IntPtr native_result)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Integer resultCode = global::Java.Lang.Object.GetObject<global::Java.Lang.Integer> (native_resultCode, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object result = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_result, JniHandleOwnership.DoNotTransfer);
			__this.ExitWithResult (resultCode, result);
		}
#pragma warning restore 0169

		static IntPtr id_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='exitWithResult' and count(parameter)=2 and parameter[1][@type='java.lang.Integer'] and parameter[2][@type='java.lang.Object']]"
		[Register ("exitWithResult", "(Ljava/lang/Integer;Ljava/lang/Object;)V", "GetExitWithResult_Ljava_lang_Integer_Ljava_lang_Object_Handler")]
		public virtual unsafe void ExitWithResult (global::Java.Lang.Integer resultCode, global::Java.Lang.Object result)
		{
			if (id_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_ == IntPtr.Zero)
				id_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "exitWithResult", "(Ljava/lang/Integer;Ljava/lang/Object;)V");
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (resultCode);
				__args [1] = new JValue (result);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_exitWithResult_Ljava_lang_Integer_Ljava_lang_Object_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "exitWithResult", "(Ljava/lang/Integer;Ljava/lang/Object;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_finishChain;
#pragma warning disable 0169
		static Delegate GetFinishChainHandler ()
		{
			if (cb_finishChain == null)
				cb_finishChain = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr>) n_FinishChain);
			return cb_finishChain;
		}

		static void n_FinishChain (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.FinishChain ();
		}
#pragma warning restore 0169

		static IntPtr id_finishChain;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='finishChain' and count(parameter)=0]"
		[Register ("finishChain", "()V", "GetFinishChainHandler")]
		public virtual unsafe void FinishChain ()
		{
			if (id_finishChain == IntPtr.Zero)
				id_finishChain = JNIEnv.GetMethodID (class_ref, "finishChain", "()V");
			try {

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_finishChain);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "finishChain", "()V"));
			} finally {
			}
		}

		static Delegate cb_navigateTo_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetNavigateTo_Ljava_lang_String_Handler ()
		{
			if (cb_navigateTo_Ljava_lang_String_ == null)
				cb_navigateTo_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_NavigateTo_Ljava_lang_String_);
			return cb_navigateTo_Ljava_lang_String_;
		}

		static void n_NavigateTo_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.NavigateTo (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_navigateTo_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='navigateTo' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("navigateTo", "(Ljava/lang/String;)V", "GetNavigateTo_Ljava_lang_String_Handler")]
		public virtual unsafe void NavigateTo (string screenKey)
		{
			if (id_navigateTo_Ljava_lang_String_ == IntPtr.Zero)
				id_navigateTo_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "navigateTo", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_navigateTo_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "navigateTo", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_navigateTo_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetNavigateTo_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_navigateTo_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_navigateTo_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_NavigateTo_Ljava_lang_String_Ljava_lang_Object_);
			return cb_navigateTo_Ljava_lang_String_Ljava_lang_Object_;
		}

		static void n_NavigateTo_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey, IntPtr native_data)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object data = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_data, JniHandleOwnership.DoNotTransfer);
			__this.NavigateTo (screenKey, data);
		}
#pragma warning restore 0169

		static IntPtr id_navigateTo_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='navigateTo' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("navigateTo", "(Ljava/lang/String;Ljava/lang/Object;)V", "GetNavigateTo_Ljava_lang_String_Ljava_lang_Object_Handler")]
		public virtual unsafe void NavigateTo (string screenKey, global::Java.Lang.Object data)
		{
			if (id_navigateTo_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_navigateTo_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "navigateTo", "(Ljava/lang/String;Ljava/lang/Object;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_screenKey);
				__args [1] = new JValue (data);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_navigateTo_Ljava_lang_String_Ljava_lang_Object_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "navigateTo", "(Ljava/lang/String;Ljava/lang/Object;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_newRootScreen_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetNewRootScreen_Ljava_lang_String_Handler ()
		{
			if (cb_newRootScreen_Ljava_lang_String_ == null)
				cb_newRootScreen_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_NewRootScreen_Ljava_lang_String_);
			return cb_newRootScreen_Ljava_lang_String_;
		}

		static void n_NewRootScreen_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.NewRootScreen (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_newRootScreen_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='newRootScreen' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("newRootScreen", "(Ljava/lang/String;)V", "GetNewRootScreen_Ljava_lang_String_Handler")]
		public virtual unsafe void NewRootScreen (string screenKey)
		{
			if (id_newRootScreen_Ljava_lang_String_ == IntPtr.Zero)
				id_newRootScreen_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "newRootScreen", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_newRootScreen_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "newRootScreen", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_newRootScreen_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetNewRootScreen_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_newRootScreen_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_newRootScreen_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_NewRootScreen_Ljava_lang_String_Ljava_lang_Object_);
			return cb_newRootScreen_Ljava_lang_String_Ljava_lang_Object_;
		}

		static void n_NewRootScreen_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey, IntPtr native_data)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object data = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_data, JniHandleOwnership.DoNotTransfer);
			__this.NewRootScreen (screenKey, data);
		}
#pragma warning restore 0169

		static IntPtr id_newRootScreen_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='newRootScreen' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("newRootScreen", "(Ljava/lang/String;Ljava/lang/Object;)V", "GetNewRootScreen_Ljava_lang_String_Ljava_lang_Object_Handler")]
		public virtual unsafe void NewRootScreen (string screenKey, global::Java.Lang.Object data)
		{
			if (id_newRootScreen_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_newRootScreen_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "newRootScreen", "(Ljava/lang/String;Ljava/lang/Object;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_screenKey);
				__args [1] = new JValue (data);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_newRootScreen_Ljava_lang_String_Ljava_lang_Object_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "newRootScreen", "(Ljava/lang/String;Ljava/lang/Object;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_newScreenChain_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetNewScreenChain_Ljava_lang_String_Handler ()
		{
			if (cb_newScreenChain_Ljava_lang_String_ == null)
				cb_newScreenChain_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_NewScreenChain_Ljava_lang_String_);
			return cb_newScreenChain_Ljava_lang_String_;
		}

		static void n_NewScreenChain_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.NewScreenChain (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_newScreenChain_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='newScreenChain' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("newScreenChain", "(Ljava/lang/String;)V", "GetNewScreenChain_Ljava_lang_String_Handler")]
		public virtual unsafe void NewScreenChain (string screenKey)
		{
			if (id_newScreenChain_Ljava_lang_String_ == IntPtr.Zero)
				id_newScreenChain_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "newScreenChain", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_newScreenChain_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "newScreenChain", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_newScreenChain_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetNewScreenChain_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_newScreenChain_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_newScreenChain_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_NewScreenChain_Ljava_lang_String_Ljava_lang_Object_);
			return cb_newScreenChain_Ljava_lang_String_Ljava_lang_Object_;
		}

		static void n_NewScreenChain_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey, IntPtr native_data)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object data = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_data, JniHandleOwnership.DoNotTransfer);
			__this.NewScreenChain (screenKey, data);
		}
#pragma warning restore 0169

		static IntPtr id_newScreenChain_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='newScreenChain' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("newScreenChain", "(Ljava/lang/String;Ljava/lang/Object;)V", "GetNewScreenChain_Ljava_lang_String_Ljava_lang_Object_Handler")]
		public virtual unsafe void NewScreenChain (string screenKey, global::Java.Lang.Object data)
		{
			if (id_newScreenChain_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_newScreenChain_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "newScreenChain", "(Ljava/lang/String;Ljava/lang/Object;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_screenKey);
				__args [1] = new JValue (data);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_newScreenChain_Ljava_lang_String_Ljava_lang_Object_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "newScreenChain", "(Ljava/lang/String;Ljava/lang/Object;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_removeResultListener_Ljava_lang_Integer_;
#pragma warning disable 0169
		static Delegate GetRemoveResultListener_Ljava_lang_Integer_Handler ()
		{
			if (cb_removeResultListener_Ljava_lang_Integer_ == null)
				cb_removeResultListener_Ljava_lang_Integer_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_RemoveResultListener_Ljava_lang_Integer_);
			return cb_removeResultListener_Ljava_lang_Integer_;
		}

		static void n_RemoveResultListener_Ljava_lang_Integer_ (IntPtr jnienv, IntPtr native__this, IntPtr native_resultCode)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Integer resultCode = global::Java.Lang.Object.GetObject<global::Java.Lang.Integer> (native_resultCode, JniHandleOwnership.DoNotTransfer);
			__this.RemoveResultListener (resultCode);
		}
#pragma warning restore 0169

		static IntPtr id_removeResultListener_Ljava_lang_Integer_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='removeResultListener' and count(parameter)=1 and parameter[1][@type='java.lang.Integer']]"
		[Register ("removeResultListener", "(Ljava/lang/Integer;)V", "GetRemoveResultListener_Ljava_lang_Integer_Handler")]
		public virtual unsafe void RemoveResultListener (global::Java.Lang.Integer resultCode)
		{
			if (id_removeResultListener_Ljava_lang_Integer_ == IntPtr.Zero)
				id_removeResultListener_Ljava_lang_Integer_ = JNIEnv.GetMethodID (class_ref, "removeResultListener", "(Ljava/lang/Integer;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (resultCode);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_removeResultListener_Ljava_lang_Integer_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "removeResultListener", "(Ljava/lang/Integer;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_replaceScreen_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetReplaceScreen_Ljava_lang_String_Handler ()
		{
			if (cb_replaceScreen_Ljava_lang_String_ == null)
				cb_replaceScreen_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_ReplaceScreen_Ljava_lang_String_);
			return cb_replaceScreen_Ljava_lang_String_;
		}

		static void n_ReplaceScreen_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.ReplaceScreen (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_replaceScreen_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='replaceScreen' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("replaceScreen", "(Ljava/lang/String;)V", "GetReplaceScreen_Ljava_lang_String_Handler")]
		public virtual unsafe void ReplaceScreen (string screenKey)
		{
			if (id_replaceScreen_Ljava_lang_String_ == IntPtr.Zero)
				id_replaceScreen_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "replaceScreen", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_replaceScreen_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "replaceScreen", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_replaceScreen_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetReplaceScreen_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_replaceScreen_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_replaceScreen_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_ReplaceScreen_Ljava_lang_String_Ljava_lang_Object_);
			return cb_replaceScreen_Ljava_lang_String_Ljava_lang_Object_;
		}

		static void n_ReplaceScreen_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey, IntPtr native_data)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object data = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_data, JniHandleOwnership.DoNotTransfer);
			__this.ReplaceScreen (screenKey, data);
		}
#pragma warning restore 0169

		static IntPtr id_replaceScreen_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='replaceScreen' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("replaceScreen", "(Ljava/lang/String;Ljava/lang/Object;)V", "GetReplaceScreen_Ljava_lang_String_Ljava_lang_Object_Handler")]
		public virtual unsafe void ReplaceScreen (string screenKey, global::Java.Lang.Object data)
		{
			if (id_replaceScreen_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_replaceScreen_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "replaceScreen", "(Ljava/lang/String;Ljava/lang/Object;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_screenKey);
				__args [1] = new JValue (data);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_replaceScreen_Ljava_lang_String_Ljava_lang_Object_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "replaceScreen", "(Ljava/lang/String;Ljava/lang/Object;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_sendResult_Ljava_lang_Integer_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetSendResult_Ljava_lang_Integer_Ljava_lang_Object_Handler ()
		{
			if (cb_sendResult_Ljava_lang_Integer_Ljava_lang_Object_ == null)
				cb_sendResult_Ljava_lang_Integer_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr, IntPtr, bool>) n_SendResult_Ljava_lang_Integer_Ljava_lang_Object_);
			return cb_sendResult_Ljava_lang_Integer_Ljava_lang_Object_;
		}

		static bool n_SendResult_Ljava_lang_Integer_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_resultCode, IntPtr native_result)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Integer resultCode = global::Java.Lang.Object.GetObject<global::Java.Lang.Integer> (native_resultCode, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object result = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_result, JniHandleOwnership.DoNotTransfer);
			bool __ret = __this.SendResult (resultCode, result);
			return __ret;
		}
#pragma warning restore 0169

		static IntPtr id_sendResult_Ljava_lang_Integer_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='sendResult' and count(parameter)=2 and parameter[1][@type='java.lang.Integer'] and parameter[2][@type='java.lang.Object']]"
		[Register ("sendResult", "(Ljava/lang/Integer;Ljava/lang/Object;)Z", "GetSendResult_Ljava_lang_Integer_Ljava_lang_Object_Handler")]
		protected virtual unsafe bool SendResult (global::Java.Lang.Integer resultCode, global::Java.Lang.Object result)
		{
			if (id_sendResult_Ljava_lang_Integer_Ljava_lang_Object_ == IntPtr.Zero)
				id_sendResult_Ljava_lang_Integer_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "sendResult", "(Ljava/lang/Integer;Ljava/lang/Object;)Z");
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (resultCode);
				__args [1] = new JValue (result);

				bool __ret;
				if (((object) this).GetType () == ThresholdType)
					__ret = JNIEnv.CallBooleanMethod (((global::Java.Lang.Object) this).Handle, id_sendResult_Ljava_lang_Integer_Ljava_lang_Object_, __args);
				else
					__ret = JNIEnv.CallNonvirtualBooleanMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "sendResult", "(Ljava/lang/Integer;Ljava/lang/Object;)Z"), __args);
				return __ret;
			} finally {
			}
		}

		static Delegate cb_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_;
#pragma warning disable 0169
		static Delegate GetSetResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_Handler ()
		{
			if (cb_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_ == null)
				cb_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_SetResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_);
			return cb_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_;
		}

		static void n_SetResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_ (IntPtr jnienv, IntPtr native__this, IntPtr native_resultCode, IntPtr native_listener)
		{
			global::RU.Terrakok.Cicerone.Router __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Router> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Integer resultCode = global::Java.Lang.Object.GetObject<global::Java.Lang.Integer> (native_resultCode, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Result.IResultListener listener = (global::RU.Terrakok.Cicerone.Result.IResultListener)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Result.IResultListener> (native_listener, JniHandleOwnership.DoNotTransfer);
			__this.SetResultListener (resultCode, listener);
		}
#pragma warning restore 0169

		static IntPtr id_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='Router']/method[@name='setResultListener' and count(parameter)=2 and parameter[1][@type='java.lang.Integer'] and parameter[2][@type='ru.terrakok.cicerone.result.ResultListener']]"
		[Register ("setResultListener", "(Ljava/lang/Integer;Lru/terrakok/cicerone/result/ResultListener;)V", "GetSetResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_Handler")]
		public virtual unsafe void SetResultListener (global::Java.Lang.Integer resultCode, global::RU.Terrakok.Cicerone.Result.IResultListener listener)
		{
			if (id_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_ == IntPtr.Zero)
				id_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_ = JNIEnv.GetMethodID (class_ref, "setResultListener", "(Ljava/lang/Integer;Lru/terrakok/cicerone/result/ResultListener;)V");
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (resultCode);
				__args [1] = new JValue (listener);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_setResultListener_Ljava_lang_Integer_Lru_terrakok_cicerone_result_ResultListener_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "setResultListener", "(Ljava/lang/Integer;Lru/terrakok/cicerone/result/ResultListener;)V"), __args);
			} finally {
			}
		}

	}
}
