package com.gameloft.android.ANMP.GloftAGHM;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class PopUpsManager {
    private static PopUpsManager a;
    private RelativeLayout b;
    private Activity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2830d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2831e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PopUpsViewComponent f2832f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProgressDialog f2833g;

    public enum PopUpsError {
        E_UNDEFINED(-1),
        E_SUCCESSFUL(0),
        E_FILE_NOT_VALID(1),
        E_FILE_DOWNLONDING(2),
        E_FILE_DOWNLOND_FAILED(3),
        E_BRIDGE_CLASS_NEVER_INIT(4),
        E_UNZIP_FAILED(5),
        E_FAILED_TO_CREATE_WEBVIEW(6);

        private final int j;

        PopUpsError(int i2) {
            this.j = i2;
        }

        public int e() {
            return this.j;
        }
    }

    public enum ViewState {
        E_VS_UNDEFINED(-1),
        E_VS_NOT_DOWNLOAD(0),
        E_VS_INVISIBLE(1),
        E_VS_VISIBLE(2);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f2840f;

        ViewState(int i) {
            this.f2840f = i;
        }

        public int e() {
            return this.f2840f;
        }
    }

    class a implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ String b;

        a(boolean z, String str) {
            this.a = z;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a) {
                if (PopUpsManager.this.f2833g == null) {
                    if (PopUpsManager.this.f2833g != null) {
                        PopUpsManager.this.f2833g.hide();
                        PopUpsManager.this.f2833g = null;
                        return;
                    }
                    return;
                }
                PopUpsManager.this.f2833g.dismiss();
                PopUpsManager.this.f2833g = new ProgressDialog(PopUpsManager.this.c);
                PopUpsManager.this.f2833g.setCancelable(false);
                PopUpsManager.this.f2833g.setProgressStyle(0);
                PopUpsManager.this.f2833g.setMessage(this.b);
                PopUpsManager.this.f2833g.show();
            }
        }
    }

    private PopUpsManager() {
    }

    public static PopUpsManager GetInstance() {
        if (a == null) {
            a = new PopUpsManager();
        }
        return a;
    }

    public static boolean IsPopupShow() {
        PopUpsManager popUpsManager = a;
        return popUpsManager != null && popUpsManager.n() == ViewState.E_VS_VISIBLE.e();
    }

    public static boolean handleBackKey() {
        PopUpsManager popUpsManager = a;
        if (popUpsManager != null) {
            return popUpsManager.p();
        }
        return false;
    }

    private boolean p() {
        PopUpsViewComponent popUpsViewComponent = this.f2832f;
        if (popUpsViewComponent != null) {
            return popUpsViewComponent.q().booleanValue();
        }
        return false;
    }

    public void a(String str) {
        this.f2832f.b(str);
    }

    public Activity b() {
        return this.c;
    }

    public RelativeLayout c() {
        return this.b;
    }

    public void d() {
        m().i();
    }

    public void e(int i, double d2) {
        this.f2832f.j(i, d2);
    }

    public void f() {
        if (this.c != null) {
            this.f2832f.k();
            l("", false);
            this.f2832f = null;
            this.b = null;
            this.c = null;
        }
    }

    public void g(int i) {
        PopUpsBridgeClass.OnErrorMessage(i);
    }

    public void h(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            this.c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception unused) {
        }
    }

    public void i(String str) {
        this.f2832f.l(str);
    }

    public void j(Activity activity, RelativeLayout relativeLayout) {
        if (activity == null || relativeLayout == null) {
            g(PopUpsError.E_UNDEFINED.e());
        } else {
            this.c = activity;
            this.b = relativeLayout;
        }
    }

    public PopUpsError k(boolean z, String str, String str2) {
        PopUpsError popUpsError = PopUpsError.E_UNDEFINED;
        if (m() != null) {
            return m().n(z, str, str2);
        }
        PopUpsError popUpsError2 = PopUpsError.E_FAILED_TO_CREATE_WEBVIEW;
        g(popUpsError2.e());
        return popUpsError2;
    }

    public void l(String str, boolean z) {
        this.c.runOnUiThread(new a(z, str));
    }

    public PopUpsViewComponent m() {
        return this.f2832f;
    }

    public int n() {
        return m() != null ? m().p() : ViewState.E_VS_UNDEFINED.e();
    }

    public boolean o() {
        PopUpsViewComponent popUpsViewComponent = new PopUpsViewComponent(this);
        this.f2832f = popUpsViewComponent;
        return popUpsViewComponent != null;
    }

    public void q(int i, int i2, int i3, int i4) {
        m().r(i, i2, i3, i4);
    }
}
