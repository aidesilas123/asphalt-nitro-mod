package com.gameloft.android.ANMP.GloftAGHM.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import java.net.URI;

/* JADX INFO: loaded from: classes2.dex */
public class IReferrerReceiver extends BroadcastReceiver {
    private String a(String str) {
        String str2;
        try {
            str2 = new URI(str).getQuery().split("referrer=")[1];
        } catch (Exception unused) {
            str2 = null;
        }
        return (str2 != null || str == null || (!str.contains("utm_source") && str.indexOf("utm_source") <= -1)) ? str2 : str;
    }

    public static String getReferrer(Context context) {
        return context != null ? context.getSharedPreferences("rsend_referrer", 0).getString("referrer", "") : "";
    }

    public static void sendBroadcastIntent(Context context) {
        Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
        intent.setPackage(context.getPackageName());
        intent.putExtra("referrer", "utm_source=source+test&utm_medium=medium+test&utm_term=term+test&utm_content=content+test&utm_campaign=campaign+test");
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String strA = a(intent.getStringExtra("referrer"));
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("rsend_referrer", 0).edit();
        if (strA != null) {
            editorEdit.putString("referrer", strA);
            editorEdit.commit();
        } else {
            editorEdit.putString("referrer", "");
            editorEdit.commit();
        }
    }
}
