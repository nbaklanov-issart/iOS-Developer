using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone {

	// Metadata.xml XPath class reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='BaseRouter']"
	[global::Android.Runtime.Register ("ru/terrakok/cicerone/BaseRouter", DoNotGenerateAcw=true)]
	public abstract partial class BaseRouter : global::Java.Lang.Object {

		internal static new IntPtr java_class_handle;
		internal static new IntPtr class_ref {
			get {
				return JNIEnv.FindClass ("ru/terrakok/cicerone/BaseRouter", ref java_class_handle);
			}
		}

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (BaseRouter); }
		}

		protected BaseRouter (IntPtr javaReference, JniHandleOwnership transfer) : base (javaReference, transfer) {}

		static IntPtr id_ctor;
		// Metadata.xml XPath constructor reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='BaseRouter']/constructor[@name='BaseRouter' and count(parameter)=0]"
		[Register (".ctor", "()V", "")]
		public unsafe BaseRouter ()
			: base (IntPtr.Zero, JniHandleOwnership.DoNotTransfer)
		{
			if (((global::Java.Lang.Object) this).Handle != IntPtr.Zero)
				return;

			try {
				if (((object) this).GetType () != typeof (BaseRouter)) {
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

		static Delegate cb_executeCommands_arrayLru_terrakok_cicerone_commands_Command_;
#pragma warning disable 0169
		static Delegate GetExecuteCommands_arrayLru_terrakok_cicerone_commands_Command_Handler ()
		{
			if (cb_executeCommands_arrayLru_terrakok_cicerone_commands_Command_ == null)
				cb_executeCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_ExecuteCommands_arrayLru_terrakok_cicerone_commands_Command_);
			return cb_executeCommands_arrayLru_terrakok_cicerone_commands_Command_;
		}

		static void n_ExecuteCommands_arrayLru_terrakok_cicerone_commands_Command_ (IntPtr jnienv, IntPtr native__this, IntPtr native_commands)
		{
			global::RU.Terrakok.Cicerone.BaseRouter __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.BaseRouter> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand[] commands = (global::RU.Terrakok.Cicerone.Commands.ICommand[]) JNIEnv.GetArray (native_commands, JniHandleOwnership.DoNotTransfer, typeof (global::RU.Terrakok.Cicerone.Commands.ICommand));
			__this.ExecuteCommands (commands);
			if (commands != null)
				JNIEnv.CopyArray (commands, native_commands);
		}
#pragma warning restore 0169

		static IntPtr id_executeCommands_arrayLru_terrakok_cicerone_commands_Command_;
		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/class[@name='BaseRouter']/method[@name='executeCommands' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Command...']]"
		[Register ("executeCommands", "([Lru/terrakok/cicerone/commands/Command;)V", "GetExecuteCommands_arrayLru_terrakok_cicerone_commands_Command_Handler")]
		protected virtual unsafe void ExecuteCommands (params global::RU.Terrakok.Cicerone.Commands.ICommand[] commands)
		{
			if (id_executeCommands_arrayLru_terrakok_cicerone_commands_Command_ == IntPtr.Zero)
				id_executeCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNIEnv.GetMethodID (class_ref, "executeCommands", "([Lru/terrakok/cicerone/commands/Command;)V");
			IntPtr native_commands = JNIEnv.NewArray (commands);
			try {
				JValue* __args = stackalloc JValue [1];
				__args [0] = new JValue (native_commands);

				if (((object) this).GetType () == ThresholdType)
					JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_executeCommands_arrayLru_terrakok_cicerone_commands_Command_, __args);
				else
					JNIEnv.CallNonvirtualVoidMethod (((global::Java.Lang.Object) this).Handle, ThresholdClass, JNIEnv.GetMethodID (ThresholdClass, "executeCommands", "([Lru/terrakok/cicerone/commands/Command;)V"), __args);
			} finally {
				if (commands != null) {
					JNIEnv.CopyArray (native_commands, commands);
					JNIEnv.DeleteLocalRef (native_commands);
				}
			}
		}

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/BaseRouter", DoNotGenerateAcw=true)]
	internal partial class BaseRouterInvoker : BaseRouter {

		public BaseRouterInvoker (IntPtr handle, JniHandleOwnership transfer) : base (handle, transfer) {}

		protected override global::System.Type ThresholdType {
			get { return typeof (BaseRouterInvoker); }
		}

	}

}
