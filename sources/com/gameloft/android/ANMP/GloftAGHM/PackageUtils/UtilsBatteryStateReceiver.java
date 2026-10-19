package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.sdk.AppLovinEventTypes;

/* JADX INFO: loaded from: classes2.dex */
public class UtilsBatteryStateReceiver extends BroadcastReceiver {
    public static void SetInitialBatteryState(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        int intExtra2 = intentRegisterReceiver.getIntExtra("plugged", -1);
        JNIBridge.SetBatteryInfo(intExtra == 2 || intExtra == 5, intExtra2 == 2, intExtra2 == 1, intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0));
    }

    public static IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        int intExtra2 = intentRegisterReceiver.getIntExtra("plugged", -1);
        int intExtra3 = intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0);
        boolean z = intExtra == 2 || intExtra == 5;
        boolean z2 = intExtra2 == 2;
        boolean z3 = intExtra2 == 1;
        if (intent.getAction() == "android.intent.action.BATTERY_LOW") {
            JNIBridge.NotifyLowBattery();
        }
        JNIBridge.SetBatteryInfo(z, z2, z3, intExtra3);
    }
}
