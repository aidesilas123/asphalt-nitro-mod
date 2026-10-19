package com.fyber.inneractive.sdk.util;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class q0 {
    public static String a(com.fyber.inneractive.sdk.response.e eVar) {
        UnitDisplayType unitDisplayType = eVar.n;
        return (unitDisplayType == UnitDisplayType.INTERSTITIAL || unitDisplayType == UnitDisplayType.REWARDED) ? unitDisplayType.name().toLowerCase(Locale.US) : UnitDisplayType.BANNER.name().toLowerCase(Locale.US);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r7) {
        /*
            com.fyber.inneractive.sdk.config.z r7 = com.fyber.inneractive.sdk.config.a.a(r7)
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r0 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.BANNER
            if (r7 != 0) goto L13
            java.lang.String r7 = r0.name()
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r7 = r7.toLowerCase(r0)
            return r7
        L13:
            r1 = 0
            r2 = 0
        L15:
            java.util.List<com.fyber.inneractive.sdk.config.a0> r3 = r7.a
            int r3 = r3.size()
            if (r2 >= r3) goto L94
            com.fyber.inneractive.sdk.config.a0 r3 = r7.c(r2)
            r4 = 1
            if (r3 == 0) goto L2f
            com.fyber.inneractive.sdk.config.t r5 = r3.c
            if (r5 != 0) goto L2d
            com.fyber.inneractive.sdk.config.c0 r5 = r3.f1942f
            if (r5 != 0) goto L2d
            goto L2f
        L2d:
            r5 = 0
            goto L30
        L2f:
            r5 = 1
        L30:
            if (r5 == 0) goto L33
            goto L86
        L33:
            com.fyber.inneractive.sdk.config.t r5 = r3.c
            if (r5 == 0) goto L4c
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r5 = r5.b
            if (r5 == 0) goto L47
            boolean r6 = r5.isDeprecated()
            if (r6 != 0) goto L47
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r6 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.DEFAULT
            if (r6 == r5) goto L47
            r5 = 1
            goto L48
        L47:
            r5 = 0
        L48:
            if (r5 == 0) goto L4c
            r5 = 1
            goto L4d
        L4c:
            r5 = 0
        L4d:
            if (r5 == 0) goto L54
            com.fyber.inneractive.sdk.config.t r0 = r3.c
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r0 = r0.b
            goto L73
        L54:
            com.fyber.inneractive.sdk.config.c0 r5 = r3.f1942f
            if (r5 == 0) goto L6c
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r5 = r5.j
            if (r5 == 0) goto L68
            boolean r6 = r5.isDeprecated()
            if (r6 != 0) goto L68
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r6 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.DEFAULT
            if (r6 == r5) goto L68
            r5 = 1
            goto L69
        L68:
            r5 = 0
        L69:
            if (r5 == 0) goto L6c
            goto L6d
        L6c:
            r4 = 0
        L6d:
            if (r4 == 0) goto L73
            com.fyber.inneractive.sdk.config.c0 r0 = r3.f1942f
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r0 = r0.j
        L73:
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r3 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.MRECT
            if (r3 != r0) goto L79
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r0 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.BANNER
        L79:
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r3 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.REWARDED
            if (r3 == r0) goto L89
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r3 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.INTERSTITIAL
            if (r3 == r0) goto L89
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r3 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.BANNER
            if (r3 != r0) goto L86
            goto L89
        L86:
            int r2 = r2 + 1
            goto L15
        L89:
            java.lang.String r7 = r0.name()
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r7 = r7.toLowerCase(r0)
            return r7
        L94:
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r7 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.BANNER
            java.lang.String r7 = r7.name()
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r7 = r7.toLowerCase(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.util.q0.a(java.lang.String):java.lang.String");
    }
}
