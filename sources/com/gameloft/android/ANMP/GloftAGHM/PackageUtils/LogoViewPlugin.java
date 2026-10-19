package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.R;

/* JADX INFO: loaded from: classes2.dex */
public class LogoViewPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static LogoViewPlugin a;
    private c b = null;
    private Activity c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewGroup f2823d = null;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LogoViewPlugin.this.f2823d.addView(LogoViewPlugin.this.b);
            LogoViewPlugin.this.b.requestFocus();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LogoViewPlugin.this.b.setVisibility(8);
            LogoViewPlugin.this.f2823d.removeViewInLayout(LogoViewPlugin.this.b);
            LogoViewPlugin.this.b.setImageResource(0);
            LogoViewPlugin.this.b = null;
        }
    }

    public static void CloseLogo() {
        a.a();
    }

    public static boolean IsLogoShowing() {
        return a.b != null;
    }

    public static void ShowLogo(int i, int i2, int i3) {
        if (i <= 0) {
            i = R.drawable.gameloft_logo;
        }
        a.b(i, i2, i3);
    }

    private void a() {
        if (this.b == null) {
            return;
        }
        this.c.runOnUiThread(new b());
    }

    private void b(int i, int i2, int i3) {
        if (this.b != null) {
            return;
        }
        this.b = new c(this.c, i, i2, i3);
        this.c.runOnUiThread(new a());
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        this.c = activity;
        this.f2823d = viewGroup;
        a = this;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
