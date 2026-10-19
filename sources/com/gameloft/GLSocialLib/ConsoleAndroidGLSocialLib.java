package com.gameloft.GLSocialLib;

/* JADX INFO: loaded from: classes2.dex */
public class ConsoleAndroidGLSocialLib {
    public static void Log_Debug(String str) {
        Print(0, str);
    }

    public static void Log_Fatal_Error(String str) {
        Print(1, str);
    }

    public static void Log_Info(String str) {
        Print(4, str);
    }

    public static void Log_Major_Error(String str) {
        Print(2, str);
    }

    public static void Log_Minor_Error(String str) {
        Print(3, str);
    }

    public static void Log_Verbose(String str) {
        Print(5, str);
    }

    public static void Print(int i, String str) {
    }
}
