package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class ClipboardPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a;
    public static String b;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((ClipboardManager) ClipboardPlugin.a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label", ClipboardPlugin.b));
            } catch (Exception unused) {
            }
        }
    }

    public static void CopyToClipboard(String str) {
        b = str;
        a.runOnUiThread(new a());
    }

    public static String PasteFromClipboard() {
        try {
            return ((ClipboardManager) a.getSystemService("clipboard")).getPrimaryClip().getItemAt(0).getText().toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        a = activity;
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
