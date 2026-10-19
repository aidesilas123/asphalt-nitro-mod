package com.gameloft.GLSocialLib.GameAPI;

import android.os.Handler;
import android.os.Looper;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;

/* JADX INFO: loaded from: classes2.dex */
public class GameAPIAndroidGLSocialLibThread extends Thread {
    public static Handler m_handler;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.prepare()");
            Looper.prepare();
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread m_handler = new Handler()");
            m_handler = new Handler();
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.loop();");
            Looper.loop();
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread end loop");
        } catch (Throwable th) {
            ConsoleAndroidGLSocialLib.Log_Major_Error("GameAPIAndroidGLSocialLib: FacebookAndroidGLSocialLibThread halted due to an error" + th.toString());
        }
    }
}
