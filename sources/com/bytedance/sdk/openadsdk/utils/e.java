package com.bytedance.sdk.openadsdk.utils;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;

/* JADX INFO: compiled from: BatteryDataWatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    static int a = -1;
    static float b;
    private static long c;

    /* JADX INFO: compiled from: BatteryDataWatcher.java */
    public static class a {
        public final int a;
        public final float b;

        public a(int i, float f2) {
            this.a = i;
            this.b = f2;
        }
    }

    @NonNull
    public static a a() {
        if (c == 0 || SystemClock.elapsedRealtime() - c > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
            Intent intentRegisterReceiver = com.bytedance.sdk.openadsdk.core.o.a().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            Log.d("BatteryDataWatcher", "obtainCurrentState: registerReceiver result is " + intentRegisterReceiver);
            if (intentRegisterReceiver != null) {
                a(intentRegisterReceiver);
                c = SystemClock.elapsedRealtime();
            }
        }
        a aVar = new a(a, b);
        com.bytedance.sdk.component.utils.l.b("BatteryDataWatcher", "obtainCurrentState: " + aVar.a + ", " + aVar.b);
        return aVar;
    }

    private static void a(Intent intent) {
        if (intent.getIntExtra("status", -1) == 2) {
            a = 1;
        } else {
            a = 0;
        }
        b = (intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / intent.getIntExtra("scale", -1);
        com.bytedance.sdk.component.utils.l.b("BatteryDataWatcher", "updateFromIntent: status=" + a + ", level=" + b);
    }
}
