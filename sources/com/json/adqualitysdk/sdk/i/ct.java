package com.json.adqualitysdk.sdk.i;

import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ct extends cx {
    private static int[] h = {-898354621, 1399149834, 474248834, -404303229, 310703356, -636912164, 790876664, 842798134, -401043993, 578554880, -1228218652, -1255437315, -484688039, -295787039, 932785149, -794529537, 423792864, -1870442560};
    private static int i = 0;
    private static int j = 1;

    private static String d(int[] iArr, int i2) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) h.clone();
            b.f34 = 0;
            while (true) {
                int i3 = b.f34;
                if (i3 < iArr.length) {
                    cArr[0] = (char) (iArr[i3] >> 16);
                    cArr[1] = (char) iArr[i3];
                    cArr[2] = (char) (iArr[i3 + 1] >> 16);
                    cArr[3] = (char) iArr[i3 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i4 = 0; i4 < 16; i4++) {
                        int i5 = b.f31 ^ iArr2[i4];
                        b.f31 = i5;
                        b.f32 = b.m391(i5) ^ b.f32;
                        int i6 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i6;
                    }
                    int i7 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i7;
                    b.f32 = i7 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i8 = b.f32;
                    int i9 = b.f31;
                    cArr[0] = (char) (i9 >>> 16);
                    cArr[1] = (char) i9;
                    int i10 = b.f32;
                    cArr[2] = (char) (i10 >>> 16);
                    cArr[3] = (char) i10;
                    b.m390(iArr2);
                    int i11 = b.f34;
                    cArr2[i11 << 1] = cArr[0];
                    cArr2[(i11 << 1) + 1] = cArr[1];
                    cArr2[(i11 << 1) + 2] = cArr[2];
                    cArr2[(i11 << 1) + 3] = cArr[3];
                    b.f34 = i11 + 2;
                } else {
                    str = new String(cArr2, 0, i2);
                }
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba A[Catch: Exception -> 0x00d3, TRY_ENTER, TryCatch #1 {Exception -> 0x00d3, blocks: (B:3:0x000b, B:21:0x0062, B:22:0x0068, B:26:0x0079, B:40:0x00ba, B:42:0x00c7, B:44:0x00cf, B:41:0x00c1, B:29:0x008f, B:11:0x0034, B:13:0x003a, B:18:0x004f, B:20:0x005d), top: B:53:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c7 A[SYNTHETIC] */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m573(com.json.adqualitysdk.sdk.i.cj r11, java.util.List<java.lang.Object> r12) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ct.m573(com.ironsource.adqualitysdk.sdk.i.cj, java.util.List):java.lang.Object");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Object m574(cj cjVar, List<Object> list) {
        int i2 = i + 39;
        j = i2 % 128;
        int i3 = i2 % 2;
        m575(cjVar, list);
        int i4 = j + 1;
        i = i4 % 128;
        if (i4 % 2 == 0) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m575(cj cjVar, List<Object> list) {
        cj cjVar2;
        List list2 = (List) cx.m592(list, 0, List.class);
        try {
            boolean z = true;
            dn dnVar = (dn) cx.m592(list, 1, dn.class);
            List<Object> arrayList = new ArrayList<>();
            if (list.size() <= 2) {
                z = false;
            }
            if (!z) {
                cjVar2 = cjVar;
            } else if (cx.b(list, 2, cj.class)) {
                int i2 = i + 113;
                j = i2 % 128;
                int i3 = i2 % 2;
                cjVar2 = (cj) cx.m592(list, 2, cj.class);
                if (list.size() > 3) {
                    arrayList = cx.c(list, 3);
                }
            } else {
                arrayList = cx.c(list, 2);
                cjVar2 = cjVar;
            }
            ArrayList arrayList2 = new ArrayList();
            int i4 = j + 71;
            i = i4 % 128;
            int i5 = i4 % 2;
            for (int i6 = 0; i6 < list2.size(); i6++) {
                arrayList.add(0, list2.get(i6));
                arrayList2.add(dnVar.m667(cjVar2.m446(), cjVar2, arrayList).m674());
                arrayList.remove(0);
            }
            int i7 = j + 91;
            i = i7 % 128;
            if ((i7 % 2 != 0 ? '.' : '-') != '.') {
                return arrayList2;
            }
            throw null;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), d(new int[]{-1532120927, -1438193522, 583003661, -117943881, -894614214, 37377296, 1684003103, 1351990809, -1794854674, -1632608610, -692829489, -1001040817, -915965866, 742142341, -1019964976, 180924464, 667481588, 25775193}, 33 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), e2);
            return list2;
        }
    }
}
