using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone.Android {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/android/FragmentNavigator", DoNotGenerateAcw=true)]
	public abstract partial class FragmentNavigator : global::Java.Lang.Object, global::RU.Terrakok.Cicerone.INavigator {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/android/FragmentNavigator", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (FragmentNavigator); }
		}

		protected FragmentNavigator (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static IntPtr id_ctor_Landroid_app_FragmentManager_I;
		// Metadata.xml XPath constructor reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/constructor[@name='FragmentNavigator' and count(parameter)=2 and parameter[1][@type='android.app.FragmentManager'] and parameter[2][@type='int']]"
		[Register (".ctor", "(Landroid/app/FragmentManager;I)V", "")]
		public unsafe FragmentNavigator (global::Android.App.FragmentManager fragmentManager, int containerId)
			: base (IntPtr.Zero, JniHandleOwnership.DoNotTransfer)
		{
			if (((global::Java.Lang.Object) this).Handle != IntPtr.Zero)
				return;

			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (fragmentManager);
				__args [1] = new JValue (containerId);
				if (((object) this).GetType () != typeof (FragmentNavigator)) {
					SetHandle (
							global::Android.Runtime.JNIEnv.StartCreateInstance (((object) this).GetType (), "(Landroid/app/FragmentManager;I)V", __args),
							JniHandleOwnership.TransferLocalRef);
					global::Android.Runtime.JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, "(Landroid/app/FragmentManager;I)V", __args);
					return;
				}

				if (id_ctor_Landroid_app_FragmentManager_I == IntPtr.Zero)
					id_ctor_Landroid_app_FragmentManager_I = JNIEnv.GetMethodID (class_ref, "<init>", "(Landroid/app/FragmentManager;I)V");
				SetHandle (
						global::Android.Runtime.JNIEnv.StartCreateInstance (class_ref, id_ctor_Landroid_app_FragmentManager_I, __args),
						JniHandleOwnership.TransferLocalRef);
				JNIEnv.FinishCreateInstance (((global::Java.Lang.Object) this).Handle, class_ref, id_ctor_Landroid_app_FragmentManager_I, __args);
			} finally {
			}
		}

		static Delegate cb_applyCommand_Lru_terrakok_cicerone_commands_Command_;
#pragma warning disable 0169
		static Delegate GetApplyCommand_Lru_terrakok_cicerone_commands_Command_Handler ()
		{
			if (cb_applyCommand_Lru_terrakok_cicerone_commands_Command_ == null)
				cb_applyCommand_Lru_terrakok_cicerone_commands_Command_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_ApplyCommand_Lru_terrakok_cicerone_commands_Command_);
			return cb_applyCommand_Lru_terrakok_cicerone_commands_Command_;
		}

		static void n_ApplyCommand_Lru_terrakok_cicerone_commands_Command_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand command = (global::RU.Terrakok.Cicerone.Commands.ICommand)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.ICommand> (native_command, JniHandleOwnership.DoNotTransfer);
			__this.ApplyCommand (command);
		}
#pragma warning restore 0169

		static IntPtr id_applyCommand_Lru_terrakok_cicerone_commands_Command_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='applyCommand' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Command']]"
		[Register ("applyCommand", "(Lru/terrakok/cicerone/commands/Command;)V", "GetApplyCommand_Lru_terrakok_cicerone_commands_Command_Handler")]
		protected virtual unsafe void ApplyCommand (global::RU.Terrakok.Cicerone.Commands.ICommand command)
		{
			if (id_applyCommand_Lru_terrakok_cicerone_commands_Command_ == IntPtr.Zero)
				id_applyCommand_Lru_terrakok_cicerone_commands_Command_ = JNIEnv.GetMethodID (class_ref, "applyCommand", "(Lru/terrakok/cicerone/commands/Command;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (command);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_applyCommand_Lru_terrakok_cicerone_commands_Command_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "applyCommand", "(Lru/terrakok/cicerone/commands/Command;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
#pragma warning disable 0169
		static Delegate GetApplyCommands_arrayLru_terrakok_cicerone_commands_Command_Handler ()
		{
			if (cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ == null)
				cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_ApplyCommands_arrayLru_terrakok_cicerone_commands_Command_);
			return cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
		}

		static void n_ApplyCommands_arrayLru_terrakok_cicerone_commands_Command_ (IntPtr jnienv, IntPtr native__this, IntPtr native_commands)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand[] commands = (global::RU.Terrakok.Cicerone.Commands.ICommand[]) JNIEnv.GetArray (native_commands, JniHandleOwnership.DoNotTransfer, typeof (global::RU.Terrakok.Cicerone.Commands.ICommand));
			__this.ApplyCommands (commands);
			if (commands != null)
				JNIEnv.CopyArray (commands, native_commands);
		}
#pragma warning restore 0169

		static IntPtr id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='applyCommands' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Command[]']]"
		[Register ("applyCommands", "([Lru/terrakok/cicerone/commands/Command;)V", "GetApplyCommands_arrayLru_terrakok_cicerone_commands_Command_Handler")]
		public virtual unsafe void ApplyCommands (global::RU.Terrakok.Cicerone.Commands.ICommand[] commands)
		{
			if (id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ == IntPtr.Zero)
				id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNIEnv.GetMethodID (class_ref, "applyCommands", "([Lru/terrakok/cicerone/commands/Command;)V");
			IntPtr native_commands = JNIEnv.NewArray (commands);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_commands);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "applyCommands", "([Lru/terrakok/cicerone/commands/Command;)V"), __args);
			} finally {
				if (commands != null) {
					JNIEnv.CopyArray (native_commands, commands);
					JNIEnv.DeleteLocalRef (native_commands);
				}
			}
		}

		static Delegate cb_back;
#pragma warning disable 0169
		static Delegate GetBackHandler ()
		{
			if (cb_back == null)
				cb_back = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr>) n_Back);
			return cb_back;
		}

		static void n_Back (IntPtr jnienv, IntPtr native__this)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.Back ();
		}
#pragma warning restore 0169

		static IntPtr id_back;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='back' and count(parameter)=0]"
		[Register ("back", "()V", "GetBackHandler")]
		protected virtual unsafe void Back ()
		{
			if (id_back == IntPtr.Zero)
				id_back = JNIEnv.GetMethodID (class_ref, "back", "()V");
			try {

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_back);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "back", "()V"));
			} finally {
			}
		}

		static Delegate cb_backTo_Lru_terrakok_cicerone_commands_BackTo_;
#pragma warning disable 0169
		static Delegate GetBackTo_Lru_terrakok_cicerone_commands_BackTo_Handler ()
		{
			if (cb_backTo_Lru_terrakok_cicerone_commands_BackTo_ == null)
				cb_backTo_Lru_terrakok_cicerone_commands_BackTo_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_BackTo_Lru_terrakok_cicerone_commands_BackTo_);
			return cb_backTo_Lru_terrakok_cicerone_commands_BackTo_;
		}

		static void n_BackTo_Lru_terrakok_cicerone_commands_BackTo_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.BackTo command = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.BackTo> (native_command, JniHandleOwnership.DoNotTransfer);
			__this.BackTo (command);
		}
#pragma warning restore 0169

		static IntPtr id_backTo_Lru_terrakok_cicerone_commands_BackTo_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='backTo' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.BackTo']]"
		[Register ("backTo", "(Lru/terrakok/cicerone/commands/BackTo;)V", "GetBackTo_Lru_terrakok_cicerone_commands_BackTo_Handler")]
		protected virtual unsafe void BackTo (global::RU.Terrakok.Cicerone.Commands.BackTo command)
		{
			if (id_backTo_Lru_terrakok_cicerone_commands_BackTo_ == IntPtr.Zero)
				id_backTo_Lru_terrakok_cicerone_commands_BackTo_ = JNIEnv.GetMethodID (class_ref, "backTo", "(Lru/terrakok/cicerone/commands/BackTo;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (command);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_backTo_Lru_terrakok_cicerone_commands_BackTo_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "backTo", "(Lru/terrakok/cicerone/commands/BackTo;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_backToUnexisting_Ljava_lang_String_;
#pragma warning disable 0169
		static Delegate GetBackToUnexisting_Ljava_lang_String_Handler ()
		{
			if (cb_backToUnexisting_Ljava_lang_String_ == null)
				cb_backToUnexisting_Ljava_lang_String_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_BackToUnexisting_Ljava_lang_String_);
			return cb_backToUnexisting_Ljava_lang_String_;
		}

		static void n_BackToUnexisting_Ljava_lang_String_ (IntPtr jnienv, IntPtr native__this, IntPtr native_screenKey)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string screenKey = JNIEnv.GetString (native_screenKey, JniHandleOwnership.DoNotTransfer);
			__this.BackToUnexisting (screenKey);
		}
#pragma warning restore 0169

		static IntPtr id_backToUnexisting_Ljava_lang_String_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='backToUnexisting' and count(parameter)=1 and parameter[1][@type='java.lang.String']]"
		[Register ("backToUnexisting", "(Ljava/lang/String;)V", "GetBackToUnexisting_Ljava_lang_String_Handler")]
		protected virtual unsafe void BackToUnexisting (string screenKey)
		{
			if (id_backToUnexisting_Ljava_lang_String_ == IntPtr.Zero)
				id_backToUnexisting_Ljava_lang_String_ = JNIEnv.GetMethodID (class_ref, "backToUnexisting", "(Ljava/lang/String;)V");
			IntPtr native_screenKey = JNIEnv.NewString (screenKey);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_screenKey);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_backToUnexisting_Ljava_lang_String_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "backToUnexisting", "(Ljava/lang/String;)V"), __args);
			} finally {
				JNIEnv.DeleteLocalRef (native_screenKey);
			}
		}

		static Delegate cb_createFragment_Ljava_lang_String_Ljava_lang_Object_;
#pragma warning disable 0169
		static Delegate GetCreateFragment_Ljava_lang_String_Ljava_lang_Object_Handler ()
		{
			if (cb_createFragment_Ljava_lang_String_Ljava_lang_Object_ == null)
				cb_createFragment_Ljava_lang_String_Ljava_lang_Object_ = JNINativeWrapper.CreateDelegate ((Func<IntPtr, IntPtr, IntPtr, IntPtr, IntPtr>) n_CreateFragment_Ljava_lang_String_Ljava_lang_Object_);
			return cb_createFragment_Ljava_lang_String_Ljava_lang_Object_;
		}

		static IntPtr n_CreateFragment_Ljava_lang_String_Ljava_lang_Object_ (IntPtr jnienv, IntPtr native__this, IntPtr native_p0, IntPtr native_p1)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			string p0 = JNIEnv.GetString (native_p0, JniHandleOwnership.DoNotTransfer);
			global::Java.Lang.Object p1 = global::Java.Lang.Object.GetObject<global::Java.Lang.Object> (native_p1, JniHandleOwnership.DoNotTransfer);
			IntPtr __ret = JNIEnv.ToLocalJniHandle (__this.CreateFragment (p0, p1));
			return __ret;
		}
#pragma warning restore 0169

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='createFragment' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("createFragment", "(Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Fragment;", "GetCreateFragment_Ljava_lang_String_Ljava_lang_Object_Handler")]
		protected abstract global::Android.App.Fragment CreateFragment (string p0, global::Java.Lang.Object p1);

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
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			__this.Exit ();
		}
#pragma warning restore 0169

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='exit' and count(parameter)=0]"
		[Register ("exit", "()V", "GetExitHandler")]
		protected abstract void Exit ();

		static Delegate cb_forward_Lru_terrakok_cicerone_commands_Forward_;
#pragma warning disable 0169
		static Delegate GetForward_Lru_terrakok_cicerone_commands_Forward_Handler ()
		{
			if (cb_forward_Lru_terrakok_cicerone_commands_Forward_ == null)
				cb_forward_Lru_terrakok_cicerone_commands_Forward_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_Forward_Lru_terrakok_cicerone_commands_Forward_);
			return cb_forward_Lru_terrakok_cicerone_commands_Forward_;
		}

		static void n_Forward_Lru_terrakok_cicerone_commands_Forward_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.Forward command = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.Forward> (native_command, JniHandleOwnership.DoNotTransfer);
			__this.Forward (command);
		}
#pragma warning restore 0169

		static IntPtr id_forward_Lru_terrakok_cicerone_commands_Forward_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='forward' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Forward']]"
		[Register ("forward", "(Lru/terrakok/cicerone/commands/Forward;)V", "GetForward_Lru_terrakok_cicerone_commands_Forward_Handler")]
		protected virtual unsafe void Forward (global::RU.Terrakok.Cicerone.Commands.Forward command)
		{
			if (id_forward_Lru_terrakok_cicerone_commands_Forward_ == IntPtr.Zero)
				id_forward_Lru_terrakok_cicerone_commands_Forward_ = JNIEnv.GetMethodID (class_ref, "forward", "(Lru/terrakok/cicerone/commands/Forward;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (command);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_forward_Lru_terrakok_cicerone_commands_Forward_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "forward", "(Lru/terrakok/cicerone/commands/Forward;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_replace_Lru_terrakok_cicerone_commands_Replace_;
#pragma warning disable 0169
		static Delegate GetReplace_Lru_terrakok_cicerone_commands_Replace_Handler ()
		{
			if (cb_replace_Lru_terrakok_cicerone_commands_Replace_ == null)
				cb_replace_Lru_terrakok_cicerone_commands_Replace_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_Replace_Lru_terrakok_cicerone_commands_Replace_);
			return cb_replace_Lru_terrakok_cicerone_commands_Replace_;
		}

		static void n_Replace_Lru_terrakok_cicerone_commands_Replace_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.Replace command = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.Replace> (native_command, JniHandleOwnership.DoNotTransfer);
			__this.Replace (command);
		}
#pragma warning restore 0169

		static IntPtr id_replace_Lru_terrakok_cicerone_commands_Replace_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='replace' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Replace']]"
		[Register ("replace", "(Lru/terrakok/cicerone/commands/Replace;)V", "GetReplace_Lru_terrakok_cicerone_commands_Replace_Handler")]
		protected virtual unsafe void Replace (global::RU.Terrakok.Cicerone.Commands.Replace command)
		{
			if (id_replace_Lru_terrakok_cicerone_commands_Replace_ == IntPtr.Zero)
				id_replace_Lru_terrakok_cicerone_commands_Replace_ = JNIEnv.GetMethodID (class_ref, "replace", "(Lru/terrakok/cicerone/commands/Replace;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (command);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_replace_Lru_terrakok_cicerone_commands_Replace_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "replace", "(Lru/terrakok/cicerone/commands/Replace;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_;
#pragma warning disable 0169
		static Delegate GetSetupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_Handler ()
		{
			if (cb_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_ == null)
				cb_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr, IntPtr, IntPtr, IntPtr>) n_SetupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_);
			return cb_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_;
		}

		static void n_SetupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command, IntPtr native_currentFragment, IntPtr native_nextFragment, IntPtr native_fragmentTransaction)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand command = (global::RU.Terrakok.Cicerone.Commands.ICommand)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.ICommand> (native_command, JniHandleOwnership.DoNotTransfer);
			global::Android.App.Fragment currentFragment = global::Java.Lang.Object.GetObject<global::Android.App.Fragment> (native_currentFragment, JniHandleOwnership.DoNotTransfer);
			global::Android.App.Fragment nextFragment = global::Java.Lang.Object.GetObject<global::Android.App.Fragment> (native_nextFragment, JniHandleOwnership.DoNotTransfer);
			global::Android.App.FragmentTransaction fragmentTransaction = global::Java.Lang.Object.GetObject<global::Android.App.FragmentTransaction> (native_fragmentTransaction, JniHandleOwnership.DoNotTransfer);
			__this.SetupFragmentTransaction (command, currentFragment, nextFragment, fragmentTransaction);
		}
#pragma warning restore 0169

		static IntPtr id_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='setupFragmentTransaction' and count(parameter)=4 and parameter[1][@type='ru.terrakok.cicerone.commands.Command'] and parameter[2][@type='android.app.Fragment'] and parameter[3][@type='android.app.Fragment'] and parameter[4][@type='android.app.FragmentTransaction']]"
		[Register ("setupFragmentTransaction", "(Lru/terrakok/cicerone/commands/Command;Landroid/app/Fragment;Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V", "GetSetupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_Handler")]
		protected virtual unsafe void SetupFragmentTransaction (global::RU.Terrakok.Cicerone.Commands.ICommand command, global::Android.App.Fragment currentFragment, global::Android.App.Fragment nextFragment, global::Android.App.FragmentTransaction fragmentTransaction)
		{
			if (id_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_ == IntPtr.Zero)
				id_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_ = JNIEnv.GetMethodID (class_ref, "setupFragmentTransaction", "(Lru/terrakok/cicerone/commands/Command;Landroid/app/Fragment;Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V");
			try {
				JValue* __args = stackalloc JValue [4];
				__args [0] = new JValue (command);
				__args [1] = new JValue (currentFragment);
				__args [2] = new JValue (nextFragment);
				__args [3] = new JValue (fragmentTransaction);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_setupFragmentTransaction_Lru_terrakok_cicerone_commands_Command_Landroid_app_Fragment_Landroid_app_Fragment_Landroid_app_FragmentTransaction_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "setupFragmentTransaction", "(Lru/terrakok/cicerone/commands/Command;Landroid/app/Fragment;Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V"), __args);
			} finally {
			}
		}

		static Delegate cb_unknownScreen_Lru_terrakok_cicerone_commands_Command_;
#pragma warning disable 0169
		static Delegate GetUnknownScreen_Lru_terrakok_cicerone_commands_Command_Handler ()
		{
			if (cb_unknownScreen_Lru_terrakok_cicerone_commands_Command_ == null)
				cb_unknownScreen_Lru_terrakok_cicerone_commands_Command_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_UnknownScreen_Lru_terrakok_cicerone_commands_Command_);
			return cb_unknownScreen_Lru_terrakok_cicerone_commands_Command_;
		}

		static void n_UnknownScreen_Lru_terrakok_cicerone_commands_Command_ (IntPtr jnienv, IntPtr native__this, IntPtr native_command)
		{
			global::RU.Terrakok.Cicerone.Android.FragmentNavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Android.FragmentNavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand command = (global::RU.Terrakok.Cicerone.Commands.ICommand)global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.Commands.ICommand> (native_command, JniHandleOwnership.DoNotTransfer);
			__this.UnknownScreen (command);
		}
#pragma warning restore 0169

		static IntPtr id_unknownScreen_Lru_terrakok_cicerone_commands_Command_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='unknownScreen' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Command']]"
		[Register ("unknownScreen", "(Lru/terrakok/cicerone/commands/Command;)V", "GetUnknownScreen_Lru_terrakok_cicerone_commands_Command_Handler")]
		protected virtual unsafe void UnknownScreen (global::RU.Terrakok.Cicerone.Commands.ICommand command)
		{
			if (id_unknownScreen_Lru_terrakok_cicerone_commands_Command_ == IntPtr.Zero)
				id_unknownScreen_Lru_terrakok_cicerone_commands_Command_ = JNIEnv.GetMethodID (class_ref, "unknownScreen", "(Lru/terrakok/cicerone/commands/Command;)V");
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (command);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_unknownScreen_Lru_terrakok_cicerone_commands_Command_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "unknownScreen", "(Lru/terrakok/cicerone/commands/Command;)V"), __args);
			} finally {
			}
		}

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/android/FragmentNavigator", DoNotGenerateAcw=true)]
	internal partial class FragmentNavigatorInvoker : FragmentNavigator {

		public FragmentNavigatorInvoker (IntPtr handle, JniHandleOwnership transfer) : base (handle, transfer) {}

		protected override global::System.Type ThresholdType {
			get { return typeof (FragmentNavigatorInvoker); }
		}

		static IntPtr id_createFragment_Ljava_lang_String_Ljava_lang_Object_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='createFragment' and count(parameter)=2 and parameter[1][@type='java.lang.String'] and parameter[2][@type='java.lang.Object']]"
		[Register ("createFragment", "(Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Fragment;", "GetCreateFragment_Ljava_lang_String_Ljava_lang_Object_Handler")]
		protected override unsafe global::Android.App.Fragment CreateFragment (string p0, global::Java.Lang.Object p1)
		{
			if (id_createFragment_Ljava_lang_String_Ljava_lang_Object_ == IntPtr.Zero)
				id_createFragment_Ljava_lang_String_Ljava_lang_Object_ = JNIEnv.GetMethodID (class_ref, "createFragment", "(Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Fragment;");
			IntPtr native_p0 = JNIEnv.NewString (p0);
			try {
				JValue* __args = stackalloc JValue [2];
				__args [0] = new JValue (native_p0);
				__args [1] = new JValue (p1);
				global::Android.App.Fragment __ret = global::Java.Lang.Object.GetObject<global::Android.App.Fragment> (JNIEnv.CallObjectMethod (((global::Java.Lang.Object) this).Handle, id_createFragment_Ljava_lang_String_Ljava_lang_Object_, __args), JniHandleOwnership.TransferLocalRef);
				return __ret;
			} finally {
				JNIEnv.DeleteLocalRef (native_p0);
			}
		}

		static IntPtr id_exit;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone.android']/class[@name='FragmentNavigator']/method[@name='exit' and count(parameter)=0]"
		[Register ("exit", "()V", "GetExitHandler")]
		protected override unsafe void Exit ()
		{
			if (id_exit == IntPtr.Zero)
				id_exit = JNIEnv.GetMethodID (class_ref, "exit", "()V");
			try {
				JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_exit);
			} finally {
			}
		}

	}

}
