using System;
using System.Collections.Generic;
using Android.Runtime;

namespace RU.Terrakok.Cicerone.Commands {

	// Metadata.xml XPath interface reference: path="/api/package[@name='ru.terrakok.cicerone.commands']/interface[@name='Command']"
	[Register ("ru/terrakok/cicerone/commands/Command", "", "RU.Terrakok.Cicerone.Commands.ICommandInvoker")]
	public partial interface ICommand : IJavaObject {

	}

	[global::Android.Runtime.Register ("ru/terrakok/cicerone/commands/Command", DoNotGenerateAcw=true)]
	internal class ICommandInvoker : global::Java.Lang.Object, ICommand {

		static IntPtr java_class_ref = JNIEnv.FindClass ("ru/terrakok/cicerone/commands/Command");

		protected override IntPtr ThresholdClass {
			get { return class_ref; }
		}

		protected override global::System.Type ThresholdType {
			get { return typeof (ICommandInvoker); }
		}

		IntPtr class_ref;

		public static ICommand GetObject (IntPtr handle, JniHandleOwnership transfer)
		{
			return global::Java.Lang.Object.GetObject<ICommand> (handle, transfer);
		}

		static IntPtr Validate (IntPtr handle)
		{
			if (!JNIEnv.IsInstanceOf (handle, java_class_ref))
				throw new InvalidCastException (string.Format ("Unable to convert instance of type '{0}' to type '{1}'.",
							JNIEnv.GetClassNameFromInstance (handle), "ru.terrakok.cicerone.commands.Command"));
			return handle;
		}

		protected override void Dispose (bool disposing)
		{
			if (this.class_ref != IntPtr.Zero)
				JNIEnv.DeleteGlobalRef (this.class_ref);
			this.class_ref = IntPtr.Zero;
			base.Dispose (disposing);
		}

		public ICommandInvoker (IntPtr handle, JniHandleOwnership transfer) : base (Validate (handle), transfer)
		{
			IntPtr local_ref = JNIEnv.GetObjectClass (((global::Java.Lang.Object) this).Handle);
			this.class_ref = JNIEnv.NewGlobalRef (local_ref);
			JNIEnv.DeleteLocalRef (local_ref);
		}

	}

}
