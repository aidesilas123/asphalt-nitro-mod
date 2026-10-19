package com.tapjoy;

import android.content.Context;
import android.os.BatteryManager;

/* JADX INFO: loaded from: classes4.dex */
public class TJDeviceInfo {
    public static float getBatteryLevel(Context context) {
        return ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4) / 100.0f;
    }
}
