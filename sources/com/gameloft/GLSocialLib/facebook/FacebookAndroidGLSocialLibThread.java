package com.gameloft.GLSocialLib.facebook;

import android.os.Handler;
import android.os.Looper;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;

/* JADX INFO: loaded from: classes2.dex */
public class FacebookAndroidGLSocialLibThread extends Thread {
    public static Handler m_handler;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.prepare()");
            Looper.prepare();
            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: FacebookAndroidGLSocialLibThread m_handler = new Handler()");
            m_handler = new Handler();
            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: FacebookAndroidGLSocialLibThread Looper.loop();");
            Looper.loop();
            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: FacebookAndroidGLSocialLibThread end loop");
        } catch (Throwable th) {
            ConsoleAndroidGLSocialLib.Log_Major_Error("FacebookAndroidGLSocialLib: FacebookAndroidGLSocialLibThread halted due to an error" + th.toString());
        }
    }
}
