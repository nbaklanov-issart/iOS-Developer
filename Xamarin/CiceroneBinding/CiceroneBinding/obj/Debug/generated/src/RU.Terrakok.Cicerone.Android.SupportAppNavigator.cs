using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone.Android {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/android/SupportAppNavigator", DoNotGenerateAcw=true)]
	public abstract partial class SupportAppNavigator : global::RU.Terrakok.Cicerone.Android.SupportFragmentNavigator {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/android/SupportAppNavigator", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (SupportAppNavigator); }
		}

		protected SupportAppNavigator (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static Delegate cb_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetCreateActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr, IntPtr, IntPtr, IntPtr>) n_CreateActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_);
			return cb_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_;
		}

		static IntPtr n_CreateActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_p0, IntPtr native_p1, IntPtr native_p2)
		{
			global::RU.Terrakok.Cicerone.Android.SupportAppNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.SupportAppNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::Android.Content.Context p0 = global::Java.Lang.Object.GetObject<global::Android.Content.Context> (native_p0, JniHandleOwnership.DoNotTransfer);
			string p1 = JNIEnv.GetString (native_p1, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object p2 = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_p2, JniHandleOwnership.DoNotTransfer);
			IntPtr __ret = JNIEnv.ToLocalJniHandle (__this.CreateActivityIntent (p0, p1, p2));
			return __ret;
		}
#pragma warning restore 0169

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']/method[@name='createActivityIntent' and count(parameter)=3 and parameter[1][@type='android.content.Context'] and parameter[2][@type='java.lang.String'] and parameter[3][@type='java.lang.Object']]"
		[Register ("createActivityIntent", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;", "GetCreateActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_Handler")]
		protected abstract global::Android.Content.Intent CreateActivityIntent (global::Android.Content.Context p0, string p1, global::Java.Lang.Object p2);

		static Delegate cb_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_;
#pragma warning disable 0169
		static Delegate GetCreateStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_Handler ()
		{
			if (cb_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_ == null)
				cb_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_ = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr, IntPtr, IntPtr>) n_CreateStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_);
			return cb_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_;
		}

		static IntPtr n_CreateStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command, IntPtr native_activityIntent)
		{
			global::RU.Terrakok.Cicerone.Android.SupportAppNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.SupportAppNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand command = (global::RU.Terrakok.Cicerone.Commands.ICommand)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.ICommand> (native_command, JniHandleOwnership.DoNotTransfer);
			global::Android.Content.Intent activityIntent = global::Java.Lang.Object.GetObject<global::Android.Content.Intent> (native_activityIntent, JniHandleOwnership.DoNotTransfer);
			IntPtr __ret = JNIEnv.ToLocalJniHandle (__this.CreateStartActivityOptions (command, activityIntent));
			return __ret;
		}
#pragma warning restore 0169

		static IntPtr id_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']/method[@name='createStartActivityOptions' and count(parameter)=2 and parameter[1][@type='ru.terrakok.cicerone.commands.Command'] and parameter[2][@type='android.content.Intent']]"
		[Register ("createStartActivityOptions", "(Lru/terrakok/cicerone/commands/Command;Landroid/content/Intent;)Landroid/os/Bundle;", "GetCreateStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_Handler")]
		protected virtual unsafe global::Android.OS.Bundle CreateStartActivityOptions (global::RU.Terrakok.Cicerone.Commands.ICommand command, global::Android.Content.Intent activityIntent)
		{
			if (id_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_ == IntPtr.Zero)
				id_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_ = JNIEnv.GetMethodID (class_ref, "createStartActivityOptions", "(Lru/terrakok/cicerone/commands/Command;Landroid/content/Intent;)Landroid/os/Bundle;");
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (command);
				__args [1] = new JValue (activityIntent);

				global::Android.OS.Bundle __ret;
				if (((object) this).GetType () == ThresholdType)
					__ret = global::Java.Lang.Object.GetObject<global::Android.OS.Bundle> (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_createStartActivityOptions_Lru_terrakok_cicerone_commands_Command_Landroid_content_Intent_, __args), JniHandleOwnership.TransferLocalRef);
				else
					__ret = global::Java.Lang.Object.GetObject<global::Android.OS.Bundle> (JNIEnv.CallNonvirtualObjectMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "createStartActivityOptions", "(Lru/terrakok/cicerone/commands/Command;Landroid/content/Intent;)Landroid/os/Bundle;"), __args), JniHandleOwnership.TransferLocalRef);
				return __ret;
			} finally {
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
			global::RU.Terrakok.Cicerone.Android.SupportAppNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.SupportAppNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.Exit ();
		}
#pragma warning restore 0169

		static IntPtr id_exit;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']/method[@name='exit' and count(parameter)=0]"
		[Register ("exit", "()V", "GetExitHandler")]
		protected override unsafe void Exit ()
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

		static Delegate cb_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_;
#pragma warning disable 0169
		static Delegate GetUnexistingActivity_Ljava_lang_String_Landroid_content_Intent_Handler ()
		{
			if (cb_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_ == null)
				cb_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr>) n_UnexistingActivity_Ljava_lang_String_Landroid_content_Intent_);
			return cb_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_;
		}

		static void n_UnexistingActivity_Ljava_lang_String_Landroid_content_Intent_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey, IntPtr native_activityIntent)
		{
			global::RU.Terrakok.Cicerone.Android.SupportAppNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.SupportAppNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			global::Android.Content.Intent activityIntent = global::Java.Lang.Object.GetObject<global::Android.Content.Intent> (native_activityIntent, JniHandleOwnership.DoNotTransfer);
			__this.UnexistingActivity (screenKey, activityIntent);
		}
#pragma warning restore 0169

		static IntPtr id_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']/method[@name='unexistingActivity' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='android.content.Intent']]"
		[Register ("unexistingActivity", "(Ljava/lang/String;Landroid/content/Intent;)V", "GetUnexistingActivity_Ljava_lang_String_Landroid_content_Intent_Handler")]
		protected virtual unsafe void UnexistingActivity (string screenKey, global::Android.Content.Intent activityIntent)
		{
			if (id_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_ == IntPtr.Zero)
				id_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_ = JNIEnv.GetMethodID (class_ref, "unexistingActivity", "(Ljava/lang/String;Landroid/content/Intent;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_screenKey);
				__args [1] = new JValue (activityIntent);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_unexistingActivity_Ljava_lang_String_Landroid_content_Intent_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "unexistingActivity", "(Ljava/lang/String;Landroid/content/Intent;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/android/SupportAppNavigator", DoNotGenerateAcw=true)]
	internal partial class SupportAppNavigatorInvoker : SupportAppNavigator {

		public SupportAppNavigatorInvoker (IntPtr handle, JniHandleOwnership transfer) : base (handle, transfer) {}

		protected override global::System.Type ThresholdType {
			get { return typeof (SupportAppNavigatorInvoker); }
		}

		static IntPtr id_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='SupportAppNavigator']/method[@name='createActivityIntent' and count(parameter)=3 and parameter[1][@type='android.content.Context'] and parameter[2][@type='java.lang.String'] and parameter[3][@type='java.lang.Object']]"
		[Register ("createActivityIntent", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;", "GetCreateActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_Handler")]
		protected override unsafe global::Android.Content.Intent CreateActivityIntent (global::Android.Content.Context p0, string p1, global::Java.Lang.Object p2)
		{
			if (id_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "createActivityIntent", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;");
			IntPtr native_p1 = JNIEnv.NewString (p1);
			try {
				JValue* __args = stackalloc JValue [3];
				__args [0] = new JValue (p0);
				__args [1] = new JValue (native_p1);
				__args [2] = new JValue (p2);
				global::Android.Content.Intent __ret = global::Java.Lang.Object.GetObject<global::Android.Content.Intent> (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_createActivityIntent_Landroid_content_Context_Ljava_lang_String_Ljava_lang_Object_, __args), JniHandleOwnership.TransferLocalRef);
				return __ret;
			} finally {
				JNIEnv.DeleteLocalRef (native_p1);
			}
		}

	}

}
