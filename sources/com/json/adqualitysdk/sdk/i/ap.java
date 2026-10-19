package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ao;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ap extends ao.AnonymousClass3 {
    private static int[] c = {-1973556111, -1040905802, 355314164, -74226582, 282615719, 1946811471, 2081582132, 765451556, 984532503, -703947350, -742575763, 1788096688, 1746184138, 1855730397, -1602448379, -120027620, 73819817, 1787863461};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5234d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5235e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5236f;

    public ap(as asVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(a(new int[]{1100539412, 1981900602}, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern());
        sb.append(UUID.randomUUID().toString().replace(a(new int[]{73683131, -783660065}, Color.green(0) + 1).intern(), ""));
        this.f5236f = sb.toString();
        m333(asVar);
    }

    private static String a(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) c.clone();
            b.f34 = 0;
            while (true) {
                int i2 = b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = b.f31 ^ iArr2[i3];
                        b.f31 = i4;
                        b.f32 = b.m391(i4) ^ b.f32;
                        int i5 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i5;
                    }
                    int i6 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i6;
                    b.f32 = i6 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i7 = b.f32;
                    int i8 = b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    b.m390(iArr2);
                    int i10 = b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m343() {
        JSONObject jSONObjectM332;
        String strA;
        int i = f5234d + 3;
        f5235e = i % 128;
        if (i % 2 != 0) {
            jSONObjectM332 = m332();
            strA = a(new int[]{-982385414, -1612367046}, 3 - ExpandableListView.getPackedPositionGroup(0L));
        } else {
            jSONObjectM332 = m332();
            strA = a(new int[]{-982385414, -1612367046}, 2 / ExpandableListView.getPackedPositionGroup(0L));
        }
        return jSONObjectM332.optString(strA.intern(), this.f5236f);
    }
}
