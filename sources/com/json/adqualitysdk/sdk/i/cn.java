package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class cn {
    private static int a = 179;
    private static int b = 0;
    private static int c = 1;

    private static void a(String str, String str2, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(b(251 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), false, ExpandableListView.getPackedPositionGroup(0L) + 4, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 5, "\u000b\n\u0004\uffe7").intern());
        sb.append(str);
        jy.m992(sb.toString(), str2, Integer.toHexString(str2.hashCode()), th, (JSONObject) null, false);
        int i = c + 115;
        b = i % 128;
        int i2 = i % 2;
    }

    private static String b(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m518(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(b(247 - (ViewConfiguration.getLongPressTimeout() >> 16), false, 2 - TextUtils.indexOf("", "", 0), ExpandableListView.getPackedPositionGroup(0L) + 4, "\bￜ\u000f\u000e").intern());
        sb.append(str);
        m.m1021(sb.toString(), str2);
        int i = b + 19;
        c = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m519(String str, String str2, Throwable th) {
        int i = b + 13;
        c = i % 128;
        int i2 = i % 2;
        a(str, str2, th);
        int i3 = b + 3;
        c = i3 % 128;
        if ((i3 % 2 == 0 ? 'P' : 'Z') != 'P') {
            return;
        }
        int i4 = 67 / 0;
    }
}
