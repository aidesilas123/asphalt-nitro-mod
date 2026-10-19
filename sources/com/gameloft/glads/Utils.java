package com.gameloft.glads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    static Activity a = null;
    static ViewGroup b = null;
    static int c = -1;

    class a implements Runnable {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Utils.c == -1) {
                Utils.c = Utils.GetActivity().getRequestedOrientation();
            }
            int i = this.a;
            if (i == 2) {
                Utils.GetActivity().setRequestedOrientation(6);
            } else if (i == 1) {
                Utils.GetActivity().setRequestedOrientation(7);
            } else if (i == 0) {
                Utils.GetActivity().setRequestedOrientation(10);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Utils.GetActivity().setRequestedOrientation(Utils.c);
        }
    }

    static class c implements Runnable {
        Runnable a;
        boolean b = false;

        c(Runnable runnable) {
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

    public static boolean ClassExists(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    static Activity GetActivity() {
        return a;
    }

    static Context GetContext() {
        ViewGroup viewGroup = b;
        if (viewGroup != null) {
            return viewGroup.getContext();
        }
        return null;
    }

    static ViewGroup GetParentView() {
        return b;
    }

    public static long GetTime() {
        return nativeGetTime();
    }

    public static boolean IsUnityMode() {
        try {
            return nativeIsUnityMode();
        } catch (Exception | UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public static void RestoreOrientation() {
        if (!IsUnityMode()) {
            RunOnMainThread(new b());
        } else {
            try {
                nativeRestoreOrientation();
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
    }

    public static void RunOnMainThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        c cVar = new c(runnable);
        new Handler(Looper.getMainLooper()).post(cVar);
        cVar.a();
    }

    public static void RunOnMainThreadAsync(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            GetParentView().post(runnable);
        }
    }

    public static void SetActivity(Activity activity) {
        a = activity;
        activity.setVolumeControlStream(3);
    }

    public static void SetOrientation(int i) {
        if (!IsUnityMode()) {
            RunOnMainThread(new a(i));
        } else {
            try {
                nativeSetOrientation(i);
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
    }

    public static void SetParentView(ViewGroup viewGroup) {
        b = viewGroup;
    }

    public static native long nativeGetTime();

    public static native boolean nativeIsUnityMode();

    public static native void nativeRestoreOrientation();

    public static native void nativeSetOrientation(int i);
}
