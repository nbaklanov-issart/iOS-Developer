using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone {

	// Metadata.xml XPath interface reference: path="/api/package[@name='ru.terrakok.cicerone']/interface[@name='Navigator']"
	[Register ("ru/terrakok/cicerone/Navigator", "", "RU.Terrakok.Cicerone.INavigatorInvoker")]
	public partial interface INavigator : IJavaObject {

		// Metadata.xml XPath method reference: path="/api/package[@name='ru.terrakok.cicerone']/interface[@name='Navigator']/method[@name='applyCommands' and count(parameter)=1 and parameter[1][@type='ru.terrakok.cicerone.commands.Command[]']]"
		[Register ("applyCommands", "([Lru/terrakok/cicerone/commands/Command;)V", "GetApplyCommands_arrayLru_terrakok_cicerone_commands_Command_Handler:RU.Terrakok.Cicerone.INavigatorInvoker, CiceroneBinding")]
		void ApplyCommands (global::RU.Terrakok.Cicerone.Commands.ICommand[] p0);

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/Navigator", DoNotGenerateAcw=true)]
	internal class INavigatorInvoker : global::Java.Lang.Object, INavigator {

		static IntPtr java_class_ref = JNIEnv.FindClass ("ru/terrakok/cicerone/Navigator");

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (INavigatorInvoker); }
		}

		IntPtr class_ref;

		public static INavigator GetObject (IntPtr handle, JniHandleOwnership transfer)
		{
			return global::Java.Lang.Object.GetObject<INavigator> (handle, transfer);
		}

		static IntPtr Validate (IntPtr handle)
		{
			if (!JNIEnv.IsInstanceOf (handle, java_class_ref))
				throw new InvalidCastException (string.Format ("Unable to convert instance of type '{0}' to type '{1}'.",
							JNIEnv.GetClassNameFromInstance (handle), "ru.terrakok.cicerone.Navigator"));
			return handle;
		}

		protected override void Dispose (bool disposing)
		{
			if (this.class_ref != IntPtr.Zero)
				JNIEnv.DeleteGlobalRef (this.class_ref);
			this.class_ref = IntPtr.Zero;
			base.Dispose (disposing);
		}

		public INavigatorInvoker (IntPtr handle, JniHandleOwnership transfer) : base (Validate (handle), transfer)
		{
			IntPtr local_ref = JNIEnv.GetObjectClass (((global::Java.Lang.Object) this).Handle);
			this.class_ref = JNIEnv.NewGlobalRef (local_ref);
			JNIEnv.DeleteLocalRef (local_ref);
		}

		static Delegate cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
#pragma warning disable 0169
		static Delegate GetApplyCommands_arrayLru_terrakok_cicerone_commands_Command_Handler ()
		{
			if (cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ == null)
				cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNINativeWrapper.CreateDelegate ((Action<IntPtr, IntPtr, IntPtr>) n_ApplyCommands_arrayLru_terrakok_cicerone_commands_Command_);
			return cb_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
		}

		static void n_ApplyCommands_arrayLru_terrakok_cicerone_commands_Command_ (IntPtr jnienv, IntPtr native__this, IntPtr native_p0)
		{
			global::RU.Terrakok.Cicerone.INavigator __this = global::Java.Lang.Object.GetObject<global::RU.Terrakok.Cicerone.INavigator> (jnienv, native__this, JniHandleOwnership.DoNotTransfer);
			global::RU.Terrakok.Cicerone.Commands.ICommand[] p0 = (global::RU.Terrakok.Cicerone.Commands.ICommand[]) JNIEnv.GetArray (native_p0, JniHandleOwnership.DoNotTransfer, typeof (global::RU.Terrakok.Cicerone.Commands.ICommand));
			__this.ApplyCommands (p0);
			if (p0 != null)
				JNIEnv.CopyArray (p0, native_p0);
		}
#pragma warning restore 0169

		IntPtr id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_;
		public unsafe void ApplyCommands (global::RU.Terrakok.Cicerone.Commands.ICommand[] p0)
		{
			if (id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ == IntPtr.Zero)
				id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_ = JNIEnv.GetMethodID (class_ref, "applyCommands", "([Lru/terrakok/cicerone/commands/Command;)V");
			IntPtr native_p0 = JNIEnv.NewArray (p0);
			JValue* __args = stackalloc JValue [1];
			__args [0] = new JValue (native_p0);
			JNIEnv.CallVoidMethod (((global::Java.Lang.Object) this).Handle, id_applyCommands_arrayLru_terrakok_cicerone_commands_Command_, __args);
			if (p0 != null) {
				JNIEnv.CopyArray (native_p0, p0);
				JNIEnv.DeleteLocalRef (native_p0);
			}
		}

	}

}
