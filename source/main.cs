using System;
using System.Runtime.InteropServices;

static unsafe class MainClass {
	[DllImport("lib.dll")]
	public static extern void DoNothing();

	[DllImport("lib.dll")]
	public static extern int Add5(int v);

	[DllImport("lib.dll")]
	public static extern bool Is7(int v);

	[DllImport("lib.dll")]
	public static extern long PowerOperator(long a, long b);

	[DllImport("lib.dll")]
	public static extern void ModifyByPointer(int *v);

	static void Main() {

		DoNothing();

		var n = Add5(21);
		Console.WriteLine($"Add5(21): {n}");

		Console.WriteLine($"Is7(6): {Is7(6)}");
		Console.WriteLine($"Is7(7): {Is7(7)}");
		Console.WriteLine($"Is7(8): {Is7(8)}");

		Console.WriteLine($"PowerOperator(3, 4): {PowerOperator(3, 4)}");

		int a = 32;
		ModifyByPointer(&a);
		Console.WriteLine($"ModifyByPointer(&a): {a}");

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