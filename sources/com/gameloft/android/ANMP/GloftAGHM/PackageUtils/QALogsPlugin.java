package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class QALogsPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a;

    void a(String str) {
        try {
            Method[] methods = Class.forName(str).getMethods();
            int i = 0;
            for (int i2 = 0; i2 < methods.length; i2++) {
                if (methods[i2].getName().contains("getId") || methods[i2].getName().contains("isLimitAdTrackingEnabled")) {
                    i++;
                }
            }
            if (i == 2) {
                Log.d("HEI", "8300");
            } else {
                Log.d("HEI", "8400");
            }
        } catch (Exception unused) {
            Log.e("HEI", "8500");
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        a = activity;
        String overriddenSetting = SUtils.getOverriddenSetting(SUtils.getSDFolder() + "/qaTestingConfigs.txt", "PRINT_QA_LOGS");
        if (overriddenSetting == null || !overriddenSetting.equals("1")) {
            return;
        }
        a("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
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
