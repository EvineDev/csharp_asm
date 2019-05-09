using System;
using System.Runtime.InteropServices;

static unsafe class MainClass {
	[DllImport("lib.dll")]
	public static extern void ModifyByPointer(int *v);

	[DllImport("lib.dll")]
	public static extern void DoNothing();

	static void Main() {

		DoNothing();

		int a = 32;
		ModifyByPointer(&a);
		Console.WriteLine(a);

		// fixed
		// call system libs
		// delegate callback
		// auto-translation of arrays to pointers
		// IntPtr vs unsafe
		// Structs
		// asm structs
		// asm .data
	}
}