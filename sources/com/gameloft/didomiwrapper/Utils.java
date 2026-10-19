package com.gameloft.didomiwrapper;

import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;

/* JADX INFO: loaded from: classes2.dex */
class Utils {
    private static AppCompatActivity a;

    static class a implements Runnable {
        Runnable a;
        boolean b = false;

        a(Runnable runnable) {
            this.a = runnable;
        }

        public void a() {
            while (!this.b) {
                try {
                    Thread.sleep(10L);
                } catch (Exception unused) {
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.run();
            this.b = true;
        }
    }

    Utils() {
    }

    static boolean ClassExists(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    static AppCompatActivity GetActivity() {
        return a;
    }

    public static void RunOnMainThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        a aVar = new a(runnable);
        new Handler(Looper.getMainLooper()).post(aVar);
        aVar.a();
    }

    public static void RunOnMainThreadAsync(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        AppCompatActivity appCompatActivity = a;
        if (appCompatActivity != null) {
            appCompatActivity.runOnUiThread(runnable);
        }
    }

    static void SetActivity(AppCompatActivity appCompatActivity) {
        a = appCompatActivity;
    }
}
