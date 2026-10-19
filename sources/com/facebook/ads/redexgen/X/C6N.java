package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6N, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C6N implements Callable<Boolean> {
    public static byte[] A02;
    public static String[] A03 = {"4L70rbdc", "PBHhMXx0npnpwTY", "91GJPzFmEyeOW3DYeKz29HPCrWXW0gNC", "umTRidE45okZulrVlJrHIV8", "kRbho3HgdeG0CdJ8rA209tRImftPXEnI", "60YY30c8MY", "ZuHjaYDngPTOcLYvMZdLe8TI8ruUn8GD", "lL0vcWHD5F"};
    public final C6M A00;
    public final /* synthetic */ C6Q A01;

    static {
        A02();
    }

    public C6N(C6Q c6q, C6M c6m) {
        this.A01 = c6q;
        this.A00 = c6m;
    }

    private final Boolean A00() throws Throwable {
        if (K0.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            AnonymousClass06 anonymousClass06 = new AnonymousClass06(this.A00.A08, this.A00.A07, this.A00.A06, this.A00.A04 ? A01(0, 6, 63) : A01(6, 5, 125), this.A00.A02, this.A00.A05);
            anonymousClass06.A04 = this.A00.A03;
            anonymousClass06.A02 = this.A00.A01;
            anonymousClass06.A05 = this.A00.A04;
            if (C6T.A06(this.A01.A04)) {
                C6Q.A0F.put(this.A00.A08, anonymousClass06);
            }
            return Boolean.valueOf(C6Q.A03(this.A01.A04.A01()).AEj(anonymousClass06) != null);
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{114, 126, 109, 116, 106, 111, 43, 52, 57, 56, 50};
        if (A03[1].length() != 15) {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[7] = "XFV0lH04tD";
        strArr[5] = "8rdCtS3Igw";
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        if (K0.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }
}
