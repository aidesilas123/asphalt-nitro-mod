package com.gameloft.igp;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.igp.IGPFreemiumActivity;

/* JADX INFO: loaded from: classes2.dex */
public class InGamePromotionPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a;
    private static a b;

    public class a implements IGPFreemiumActivity.j {
        String a = "";
        int b = 0;
        String c = "";

        public a() {
        }

        @Override // com.gameloft.igp.IGPFreemiumActivity.j
        public void a(int i, String str, int i2, int i3, String str2, String str3) {
        }

        @Override // com.gameloft.igp.IGPFreemiumActivity.j
        public void b(int i, String str) {
        }

        @Override // com.gameloft.igp.IGPFreemiumActivity.j
        public void c(String str, String str2) {
        }
    }

    public static boolean launchIGP(int i, boolean z) {
        if (a == null) {
            return false;
        }
        if (i < 0) {
            i = 0;
        }
        Intent intent = new Intent(a, (Class<?>) IGPFreemiumActivity.class);
        intent.putExtra("language", i);
        intent.putExtra("isPortrait", z);
        a.startActivityForResult(intent, 400);
        return true;
    }

    public static void retrieveItems(int i, String str) {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return i == 400;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        a = activity;
        b = new a();
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
