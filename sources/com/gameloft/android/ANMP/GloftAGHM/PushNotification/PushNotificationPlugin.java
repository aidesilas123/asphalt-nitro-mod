package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.MainActivity;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class PushNotificationPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        SimplifiedAndroidUtils.Init(activity);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
        int i;
        Intent intent = MainActivity.a.k;
        try {
            Iterator<String> it = SimplifiedAndroidUtils.l.keySet().iterator();
            String string = "";
            int i2 = -1;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                i = 1;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (next.equals("subject") || next.equals("title")) {
                    string = SimplifiedAndroidUtils.l.get(next).toString();
                }
                if (next.equals("pn_launch_game")) {
                    i2 = Integer.parseInt(SimplifiedAndroidUtils.l.get(next).toString());
                }
                if (next.equals("id")) {
                    z = true;
                }
                if (next.equals("pn_group_ID")) {
                    z2 = true;
                }
            }
            if (i2 >= 0 && z && !z2) {
                i = 2;
            }
            SimplifiedAndroidUtils.nativeSendPNDataToTracking(i, string);
        } catch (Exception unused) {
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
        if (SimplifiedAndroidUtils.a) {
            SimplifiedAndroidUtils.nativeResetPNDataTracking();
            SimplifiedAndroidUtils.a = false;
        }
    }
}
