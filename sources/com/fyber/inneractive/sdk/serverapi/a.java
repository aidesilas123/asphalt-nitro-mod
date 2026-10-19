package com.fyber.inneractive.sdk.serverapi;

import android.annotation.SuppressLint;
import android.app.NotificationManager;
import android.bluetooth.BluetoothManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.c0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.f0;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.config.z;
import com.fyber.inneractive.sdk.util.l;
import com.json.k2;
import com.json.t9;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final HashMap<String, Integer> a = new C0198a();
    public static final List<String> b = Arrays.asList("POWER_SAVE_MODE_OPEN", "SmartModeStatus");

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.serverapi.a$a, reason: collision with other inner class name */
    public class C0198a extends HashMap<String, Integer> {
        public C0198a() {
            put("HUAWEI", 4);
            put("XIAOMI", 1);
        }
    }

    public static UnitDisplayType a(String str) {
        a0 a0VarC;
        UnitDisplayType unitDisplayType = UnitDisplayType.INTERSTITIAL;
        z zVarA = com.fyber.inneractive.sdk.config.a.a(str);
        if (zVarA == null || zVarA.a.size() <= 0 || (a0VarC = zVarA.c(0)) == null) {
            return unitDisplayType;
        }
        c0 c0Var = a0VarC.f1942f;
        t tVar = a0VarC.c;
        return c0Var != null ? c0Var.j : tVar != null ? tVar.b : unitDisplayType;
    }

    public static String a() {
        try {
            if (l.a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")) == null) {
                return "";
            }
            return a((r1.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / r1.getIntExtra("scale", -1));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(float f2) {
        return f2 < 5.0f ? "1" : f2 <= 9.0f ? MBridgeConstans.API_REUQEST_CATEGORY_APP : f2 <= 24.0f ? "3" : f2 <= 39.0f ? ConstantDef.SDK_CONTENT_VERSION : f2 <= 54.0f ? CampaignEx.CLICKMODE_ON : f2 <= 69.0f ? "6" : f2 <= 84.0f ? t9.f6640e : f2 <= 100.0f ? "8" : "";
    }

    public static Long b() {
        long j;
        f0 f0Var = IAConfigManager.M.x;
        f0Var.getClass();
        try {
            String str = "";
            String str2 = f0Var.c.get("SESSION_STAMP");
            if (!TextUtils.isEmpty(str2)) {
                str = str2;
            }
            j = Long.parseLong(str);
        } catch (Exception unused) {
            j = 0;
        }
        return Long.valueOf(TimeUnit.SECONDS.convert(SystemClock.elapsedRealtime() - j, TimeUnit.MILLISECONDS));
    }

    public static String c() {
        try {
            Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
            return "unity3d";
        } catch (Throwable unused) {
            return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        }
    }

    public static Long d() {
        try {
            return Long.valueOf(TimeUnit.MINUTES.convert(Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()), TimeUnit.MILLISECONDS));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean e() {
        if (Build.VERSION.SDK_INT < 17) {
            return null;
        }
        try {
            return Boolean.valueOf(Settings.System.getInt(l.a.getContentResolver(), "airplane_mode_on", 0) != 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static Boolean f() {
        if (l.b("android.permission.BLUETOOTH") && Build.VERSION.SDK_INT >= 18) {
            try {
                BluetoothManager bluetoothManager = (BluetoothManager) l.a.getSystemService(k2.f6178d);
                if (bluetoothManager.getAdapter().getProfileConnectionState(1) != 2 && bluetoothManager.getAdapter().getProfileConnectionState(2) != 2) {
                    return null;
                }
                return Boolean.TRUE;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Boolean g() {
        return Boolean.valueOf((l.a.getResources().getConfiguration().uiMode & 48) == 32);
    }

    public static Boolean h() {
        int intExtra;
        try {
            Intent intentRegisterReceiver = l.a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            boolean z = true;
            if (intentRegisterReceiver == null || ((intExtra = intentRegisterReceiver.getIntExtra("plugged", -1)) != 1 && intExtra != 2 && intExtra != 4)) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean i() {
        try {
            boolean z = false;
            int ringerMode = ((AudioManager) l.a.getSystemService("audio")).getRingerMode();
            if (ringerMode == 0 || ringerMode == 1) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean j() {
        try {
            NotificationManager notificationManager = (NotificationManager) l.a.getSystemService("notification");
            if (Build.VERSION.SDK_INT < 23) {
                return null;
            }
            int currentInterruptionFilter = notificationManager.getCurrentInterruptionFilter();
            return Boolean.valueOf(currentInterruptionFilter >= 2 && currentInterruptionFilter <= 4);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean k() {
        boolean zIsWiredHeadsetOn;
        try {
            AudioManager audioManager = (AudioManager) l.a.getSystemService("audio");
            if (Build.VERSION.SDK_INT >= 23) {
                zIsWiredHeadsetOn = false;
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    if (audioDeviceInfo.getType() == 22 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 12 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                        zIsWiredHeadsetOn = true;
                    }
                }
            } else {
                zIsWiredHeadsetOn = audioManager.isWiredHeadsetOn();
            }
            return Boolean.valueOf(zIsWiredHeadsetOn);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean l() {
        Integer num;
        try {
            String upperCase = Build.MANUFACTURER.toUpperCase(Locale.getDefault());
            if (TextUtils.isEmpty(upperCase) || !a.containsKey(upperCase)) {
                if (Build.VERSION.SDK_INT >= 21) {
                    return Boolean.valueOf(((PowerManager) l.a.getSystemService("power")).isPowerSaveMode());
                }
                return null;
            }
            try {
                Iterator<String> it = b.iterator();
                while (it.hasNext()) {
                    int i = Settings.System.getInt(l.a.getContentResolver(), it.next(), -1);
                    if (i != -1 && (num = a.get(upperCase)) != null) {
                        return Boolean.valueOf(num.intValue() == i);
                    }
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }
}
