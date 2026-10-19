package com.gameloft.android.ANMP.GloftAGHM;

import android.app.Activity;
import android.widget.RelativeLayout;
import com.gameloft.android.ANMP.GloftAGHM.PopUpsManager;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public class PopUpsBridgeClass {
    static Activity a;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PopUpsManager.GetInstance().f();
        }
    }

    class b implements Callable<PopUpsManager.PopUpsError> {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PopUpsManager.PopUpsError call() throws Exception {
            return PopUpsManager.GetInstance().k(true, this.a, this.b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PopUpsManager.GetInstance().d();
        }
    }

    public static void CallJavascript(String str) {
        PopUpsManager.GetInstance().a(str);
    }

    public static void DestroyPopUps() {
        a.runOnUiThread(new a());
    }

    public static void HidePopUpsView() {
        Activity activity = a;
        if (activity != null) {
            activity.runOnUiThread(new c());
        }
    }

    public static void InitBridgeLibrary(Activity activity, RelativeLayout relativeLayout) {
        PopUpsManager.GetInstance().j(activity, relativeLayout);
        a = activity;
    }

    public static boolean InitPopUps() {
        return PopUpsManager.GetInstance().o();
    }

    public static void Log(int i, String str, String str2, int i2) {
        nativeLog(i, str, str2, i2);
    }

    public static void OnAssetTracking(String str) {
        nativeOnAssetTracking(str);
    }

    public static void OnControllerEvent(int i, double d2) {
        PopUpsManager.GetInstance().e(i, d2);
    }

    public static void OnDownloadState(int i) {
        nativeOnDownloadState(i);
    }

    public static void OnErrorMessage(int i) {
        nativeOnErrorMessage(i);
    }

    public static void OnViewState(int i) {
        nativeOnViewState(i);
    }

    public static int PopUpsViewState() {
        return PopUpsManager.GetInstance().n();
    }

    public static void SetDataSurvey(String str) {
        PopUpsManager.GetInstance().i(str);
    }

    public static void SetPopUpsViewSize(int i, int i2, int i3, int i4) {
        PopUpsManager.GetInstance().q(i, i2, i3, i4);
    }

    public static int ShowPopUpsView(String str, String str2) {
        PopUpsManager.PopUpsError popUpsError = PopUpsManager.PopUpsError.E_UNDEFINED;
        try {
            FutureTask futureTask = new FutureTask(new b(str, str2));
            a.runOnUiThread(futureTask);
            popUpsError = (PopUpsManager.PopUpsError) futureTask.get();
        } catch (Exception unused) {
        }
        return popUpsError.e();
    }

    public static native void nativeLog(int i, String str, String str2, int i2);

    public static native void nativeOnAssetTracking(String str);

    public static native void nativeOnDownloadState(int i);

    public static native void nativeOnErrorMessage(int i);

    public static native void nativeOnViewState(int i);
}
