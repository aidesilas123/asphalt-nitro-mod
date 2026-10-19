package com.fyber.inneractive.sdk.player.exoplayer2.extractor;

import com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    public static final g.a c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f2292d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public class a implements g.a {
    }

    public boolean a() {
        return (this.a == -1 || this.b == -1) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.metadata.a r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            com.fyber.inneractive.sdk.player.exoplayer2.metadata.a$b[] r2 = r8.a
            int r3 = r2.length
            if (r1 >= r3) goto L4d
            r2 = r2[r1]
            boolean r3 = r2 instanceof com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e
            if (r3 == 0) goto L4a
            com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e r2 = (com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e) r2
            java.lang.String r3 = r2.c
            java.lang.String r2 = r2.f2494d
            java.lang.String r4 = "iTunSMPB"
            boolean r3 = r4.equals(r3)
            r4 = 1
            if (r3 != 0) goto L1d
            goto L46
        L1d:
            java.util.regex.Pattern r3 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.j.f2292d
            java.util.regex.Matcher r2 = r3.matcher(r2)
            boolean r3 = r2.find()
            if (r3 == 0) goto L46
            java.lang.String r3 = r2.group(r4)     // Catch: java.lang.NumberFormatException -> L46
            r5 = 16
            int r3 = java.lang.Integer.parseInt(r3, r5)     // Catch: java.lang.NumberFormatException -> L46
            r6 = 2
            java.lang.String r2 = r2.group(r6)     // Catch: java.lang.NumberFormatException -> L46
            int r2 = java.lang.Integer.parseInt(r2, r5)     // Catch: java.lang.NumberFormatException -> L46
            if (r3 > 0) goto L40
            if (r2 <= 0) goto L46
        L40:
            r7.a = r3     // Catch: java.lang.NumberFormatException -> L46
            r7.b = r2     // Catch: java.lang.NumberFormatException -> L46
            r2 = 1
            goto L47
        L46:
            r2 = 0
        L47:
            if (r2 == 0) goto L4a
            return r4
        L4a:
            int r1 = r1 + 1
            goto L2
        L4d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.j.a(com.fyber.inneractive.sdk.player.exoplayer2.metadata.a):boolean");
    }
}
