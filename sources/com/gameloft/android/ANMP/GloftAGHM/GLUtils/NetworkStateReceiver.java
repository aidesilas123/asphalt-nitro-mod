package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    public static boolean a;

    public static native void setConnectionType(int i);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (a) {
            setConnectionType(SUtils.CheckConnectionType());
        }
    }
}
