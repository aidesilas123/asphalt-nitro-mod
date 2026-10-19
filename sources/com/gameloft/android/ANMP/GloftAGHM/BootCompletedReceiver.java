package com.gameloft.android.ANMP.GloftAGHM;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BootCompletedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            try {
                SUtils.getInjectedIGP(context);
                SUtils.getInjectedSerialKey(context);
            } catch (Exception unused) {
            }
        }
    }
}
