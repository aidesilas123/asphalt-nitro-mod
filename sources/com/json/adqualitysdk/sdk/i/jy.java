package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class jy {
    private static WeakReference<ba> a = null;
    private static long b = 9058047967775017479L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5952d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5953e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5954f = 1;

    private static void a(String str, String str2, String str3, String str4) {
        String string = "";
        int i = f5954f + 47;
        f5953e = i % 128;
        int i2 = i % 2;
        try {
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(b("慤飜㍲㞷", "쨇閭ꚢ綴", 1922620513 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (46899 - View.resolveSize(0, 0)), "嬺").intern());
            sb.append(str);
            String string2 = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(b("殸Ⓩ롪鼝", "쨇閭ꚢ綴", 1780797290 - TextUtils.lastIndexOf("", '0', 0), (char) (ViewConfiguration.getLongPressTimeout() >> 16), "殦笗䝑ໂ씉챥鯺趔\ue618褓툝").intern());
            sb2.append(string2);
            sb2.append(b("ℐ\ue12e煳湑", "쨇閭ꚢ綴", 1944137249 - Drawable.resolveOpacity(0, 0), (char) (20849 - (KeyEvent.getMaxKeyCode() >> 16)), "友曭Ȯ杘靌\ud897遛闠\ue1dd瓠媔炾鴿").intern());
            m.m1025(str, sb2.toString(), false);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str2);
            if (str4 != null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(b("˚譣ꗅⷑ", "쨇閭ꚢ綴", (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 980720895, (char) (53669 - KeyEvent.getDeadChar(0, 0)), "湡").intern());
                sb4.append(str4);
                string = sb4.toString();
                int i3 = f5954f + 75;
                f5953e = i3 % 128;
                int i4 = i3 % 2;
            }
            sb3.append(string);
            m.m1025(str, sb3.toString(), false);
            ba baVar = a.get();
            if (baVar != null) {
                baVar.m402(str, str2, string2, str4);
                int i5 = f5953e + 21;
                f5954f = i5 % 128;
                int i6 = i5 % 2;
            }
        } catch (Throwable unused) {
        }
    }

    private static String b(String str, String str2, int i, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c3;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c3;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ b) ^ ((long) c)) ^ ((long) f5952d));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    private static void c(String str, String str2, String str3, Throwable th, boolean z) {
        int i = f5953e + 117;
        f5954f = i % 128;
        int i2 = i % 2;
        try {
            d(str, str2, str3, th, null, false, false, false);
            int i3 = f5954f + 31;
            f5953e = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 26 : '.') == '.') {
            } else {
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    private static void d(String str, String str2, String str3, Throwable th, JSONObject jSONObject, boolean z, boolean z2, boolean z3) {
        String string;
        if (z) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(str3);
                sb.append(b("慤飜㍲㞷", "쨇閭ꚢ綴", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1922620514, (char) (46899 - TextUtils.indexOf("", "", 0, 0)), "嬺").intern());
                sb.append(str);
                string = sb.toString();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(b("穜Ʉ㉢捥", "쨇閭ꚢ綴", 1644315770 - (ViewConfiguration.getLongPressTimeout() >> 16), (char) TextUtils.getOffsetBefore("", 0), "蠜ୖ땽磃奔쟀鹃").intern());
                sb2.append(string);
                sb2.append(b("䊀몠ᴒ辎", "쨇閭ꚢ綴", 297443394 - Color.rgb(0, 0, 0), (char) (AndroidCharacter.getMirror('0') + 36333), "ﱏ").intern());
                m.m1030(str, sb2.toString(), th, z3);
                int i = f5953e + 47;
                f5954f = i % 128;
                int i2 = i % 2;
            } catch (Throwable unused) {
                return;
            }
        } else {
            string = str3;
        }
        ba baVar = a.get();
        if (!(baVar != null)) {
            return;
        }
        baVar.m403(str, str2, string, Log.getStackTraceString(th), jSONObject, z2);
        int i3 = f5953e + 5;
        f5954f = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m986(String str, String str2, String str3, Throwable th) {
        int i = f5953e + 7;
        f5954f = i % 128;
        int i2 = i % 2;
        try {
            c(str, str2, str3, th, false);
            int i3 = f5954f + 61;
            f5953e = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return;
            }
            int i4 = 93 / 0;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m987(String str, String str2, Throwable th, boolean z) {
        int i = f5953e + 37;
        f5954f = i % 128;
        int i2 = i % 2;
        try {
            m988(str, str2, th, z, false);
            int i3 = f5954f + 13;
            f5953e = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 0 : '%') != 0) {
                return;
            }
            int i4 = 69 / 0;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m988(String str, String str2, Throwable th, boolean z, boolean z2) {
        int i = f5954f + 69;
        f5953e = i % 128;
        try {
            if ((i % 2 != 0 ? 'W' : (char) 27) != 27) {
                m993(str, str2, th, z, z2, true);
            } else {
                m993(str, str2, th, z, z2, false);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Throwable m989(Throwable th) {
        while (true) {
            if (!(th.getCause() != null)) {
                break;
            }
            th = th.getCause();
            int i = f5953e + 113;
            f5954f = i % 128;
            int i2 = i % 2;
        }
        int i3 = f5954f + 49;
        f5953e = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        return th;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m990(String str, String str2, String str3, String str4) {
        int i = f5953e + 79;
        f5954f = i % 128;
        try {
            if ((i % 2 == 0 ? (char) 23 : 'L') != 23) {
                a(str, str2, str3, str4);
            } else {
                a(str, str2, str3, str4);
                int i2 = 80 / 0;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m991(ba baVar) {
        a = new WeakReference<>(baVar);
        int i = f5953e + 115;
        f5954f = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m992(String str, String str2, String str3, Throwable th, JSONObject jSONObject, boolean z) {
        int i = f5953e + 41;
        f5954f = i % 128;
        int i2 = i % 2;
        try {
            d(str, str2, str3, th, jSONObject, true, false, z);
            int i3 = f5953e + 113;
            f5954f = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m993(String str, String str2, Throwable th, boolean z, boolean z2, boolean z3) {
        try {
            if (z) {
                int i = f5953e + 103;
                f5954f = i % 128;
                int i2 = i % 2;
                m.m1025(str, str2, z3);
                if (!(th == null)) {
                    int i3 = f5953e + 51;
                    f5954f = i3 % 128;
                    int i4 = i3 % 2;
                    m.m1030(str, b("瘐铸罽殓", "쨇閭ꚢ綴", TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1, (char) TextUtils.getCapsMode("", 0, 0), "ᠰ귆\ude5e튜Ｒ젱锖犀").intern(), th, z3);
                }
            } else {
                m.m1030(str, str2, th, z3);
                int i5 = f5953e + 23;
                f5954f = i5 % 128;
                int i6 = i5 % 2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(b("嵂\uf85e쿖\u19ca", "쨇閭ꚢ綴", ViewConfiguration.getWindowTouchSlop() >> 8, (char) (ViewConfiguration.getLongPressTimeout() >> 16), "吞쳶㓣閙漏剺㦧젺込窨").intern());
            sb.append(str);
            d(str, str2, sb.toString(), th, null, false, z2, z3);
        } catch (Throwable unused) {
        }
    }
}
