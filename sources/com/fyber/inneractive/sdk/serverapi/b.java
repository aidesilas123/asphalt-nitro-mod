package com.fyber.inneractive.sdk.serverapi;

import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.util.j;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.p;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b implements c {
    public static final List<Integer> c = Arrays.asList(5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<Integer> f2723d = Arrays.asList(Integer.valueOf(com.fyber.inneractive.sdk.rtb.data.types.a.VAST_2_0.value), Integer.valueOf(com.fyber.inneractive.sdk.rtb.data.types.a.VAST_2_0_WRAPPER.value));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List<String> f2724e = Arrays.asList(MimeTypes.VIDEO_MP4, "video/webm", MimeTypes.VIDEO_H263, MimeTypes.APPLICATION_M3U8);
    public s a;
    public String b = j.j();

    public b(s sVar) {
        this.a = sVar;
    }

    public static String a(Boolean bool) {
        return bool == null ? "" : bool.booleanValue() ? "1" : "0";
    }

    public String a() {
        try {
            return ((TelephonyManager) l.a.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception unused) {
            return null;
        }
    }

    public String a(Intent intent) {
        return a.a((intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / intent.getIntExtra("scale", -1));
    }

    public String a(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('-');
        sb.append(o2.f6459e);
        sb.append('-');
        sb.append("8.2.4");
        if (!TextUtils.isEmpty(InneractiveAdManager.getDevPlatform())) {
            sb.append('-');
            sb.append(InneractiveAdManager.getDevPlatform());
        }
        return sb.toString();
    }

    public void a(Map<String, String> map, String str) {
        String str2;
        HashMap<String, Integer> map2 = a.a;
        try {
            Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
            str2 = "unity3d";
        } catch (Throwable unused) {
            str2 = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        }
        map.put("frmn", str2);
        map.put("headset", a(a.k()));
        map.put("is_muted", a(a.i()));
        map.put("btry_c", a(a.h()));
        map.put("btry_l", a.a());
        map.put("bt_con", a(a.f()));
        Long lD = a.d();
        map.put("tod", lD == null ? "" : String.valueOf(lD));
        map.put("apnm", a(a.e()));
        map.put("dnd", a(a.j()));
        IAConfigManager iAConfigManager = IAConfigManager.M;
        map.put("lng", iAConfigManager.p);
        String strA = iAConfigManager.x.a(a.a(str), "LAST_DOMAIN_SHOWED");
        if (!TextUtils.isEmpty(strA) && strA.contains(",")) {
            strA = strA.split(",")[0];
        }
        map.put("ldomain", strA);
        map.put("lbundle", iAConfigManager.x.a(a.a(str), "LAST_APP_BUNDLE_ID"));
        String strA2 = iAConfigManager.x.a(a.a(str), "LAST_CLICKED");
        if (TextUtils.equals(strA2, "0")) {
            strA2 = "";
        }
        map.put("lclick", strA2);
        String strA3 = iAConfigManager.x.a(a.a(str), "LAST_VAST_SKIPED");
        if (TextUtils.equals(strA3, "0")) {
            strA3 = "";
        }
        map.put("v_lskip", strA3);
        UnitDisplayType unitDisplayTypeA = a.a(str);
        map.put("v_lclicktype", unitDisplayTypeA.isFullscreenUnit() ? iAConfigManager.x.a(unitDisplayTypeA, "LAST_VAST_CLICKED_TYPE") : "");
        Long lB = a.b();
        map.put("sdur", lB != null ? String.valueOf(lB) : "");
        map.put("userid", IAConfigManager.g());
        map.put("low_power_mode", a(a.l()));
        map.put("dark_mode", a(a.g()));
        map.put("d_api", String.valueOf(Build.VERSION.SDK_INT));
    }

    public String b() {
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    public String c() {
        String str = this.b;
        return str == null ? "" : str.substring(0, Math.min(3, str.length()));
    }

    public String d() {
        String str = this.b;
        return str == null ? "" : str.substring(Math.min(3, str.length()));
    }

    public String e() {
        return l.a.getPackageName();
    }

    public String f() {
        try {
            return l.a.getPackageManager().getPackageInfo(l.a.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return null;
        }
    }

    public int g() {
        return l.c(l.d());
    }

    public int h() {
        return l.c(l.e());
    }

    public boolean i() {
        return (p.a() ^ true) || IAConfigManager.M.r;
    }
}
