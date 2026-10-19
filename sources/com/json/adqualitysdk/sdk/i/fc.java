package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class fc extends ed {
    private static int j = 164;
    private static int k = 0;
    private static int l = 1;

    public fc(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(int i, boolean z, int i2, int i3, String str) {
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
                cArr2[i5] = (char) (cArr2[i5] - j);
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

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
    
        if ((r5 instanceof java.lang.Long) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0084, code lost:
    
        if ((r5 instanceof java.lang.Long) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
    
        return new com.json.adqualitysdk.sdk.i.dp(java.lang.Integer.valueOf(r6.intValue() + r5.intValue()));
     */
    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.json.adqualitysdk.sdk.i.dp mo687(com.json.adqualitysdk.sdk.i.dr r5, com.json.adqualitysdk.sdk.i.cj r6) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fc.mo687(com.ironsource.adqualitysdk.sdk.i.dr, com.ironsource.adqualitysdk.sdk.i.cj):com.ironsource.adqualitysdk.sdk.i.dp");
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = k + 39;
        l = i % 128;
        int i2 = i % 2;
        String strIntern = d(TextUtils.getOffsetBefore("", 0) + 207, true, (Process.myPid() >> 22) + 1, 1 - TextUtils.getOffsetBefore("", 0), "\u0000").intern();
        int i3 = l + 65;
        k = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
