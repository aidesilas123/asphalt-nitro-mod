package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class H8 {
    public static String[] A00 = {"QVkvGuTrNYCOXAoNAePTggpZ9p9y8rjH", "Ru98bprrD7b3UUfLrlKs", "", "dJgVNsDePsDRNqW", "8CeCwhAARX5BeZctdCHITAez339E1kKv", "TdcchyCe9I3Btqth6iKX4VQ7acLjRTHE", "dxVA2OdEqxN0v6bZFx4Cf7LzvY6ZoBAr", "aJerxmZYtdmBHI5cIDnwKt2ezc6XXR2j"};

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x009e: INVOKE (r3 I:com.facebook.ads.redexgen.X.Gc) STATIC call: com.facebook.ads.redexgen.X.Hx.A0W(com.facebook.ads.redexgen.X.Gc):void A[MD:(com.facebook.ads.redexgen.X.Gc):void (m)], block:B:37:0x009e */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00ae: INVOKE (r3 I:com.facebook.ads.redexgen.X.Gc) STATIC call: com.facebook.ads.redexgen.X.Hx.A0W(com.facebook.ads.redexgen.X.Gc):void A[MD:(com.facebook.ads.redexgen.X.Gc):void (m)], block:B:43:0x00ae */
    public static long A00(C1037Gg c1037Gg, long j, long j2, InterfaceC1033Gc interfaceC1033Gc, byte[] bArr, C1066Hl c1066Hl, int i, H7 h7) throws InterruptedException, IOException {
        InterfaceC1033Gc interfaceC1033Gc2;
        while (true) {
            if (c1066Hl != null) {
                c1066Hl.A01(i);
            }
            try {
                break;
            } catch (C1065Hk unused) {
            } finally {
                C1078Hx.A0W(interfaceC1033Gc2);
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        C1037Gg c1037Gg2 = new C1037Gg(c1037Gg.A04, c1037Gg.A06, j, (c1037Gg.A03 + j) - c1037Gg.A01, -1L, c1037Gg.A05, c1037Gg.A00 | 2);
        long jADb = interfaceC1033Gc2.ADb(c1037Gg2);
        if (h7.A01 == -1 && jADb != -1) {
            h7.A01 = c1037Gg2.A01 + jADb;
        }
        long j3 = 0;
        while (true) {
            if (j3 == j2) {
                break;
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int i2 = interfaceC1033Gc2.read(bArr, 0, j2 != -1 ? (int) Math.min(bArr.length, j2 - j3) : bArr.length);
            if (A00[3].length() != 15) {
                throw new RuntimeException();
            }
            A00[1] = "Mr4dmhY4u";
            if (i2 != -1) {
                j3 += (long) i2;
                h7.A02 += (long) i2;
            } else if (h7.A01 == -1) {
                h7.A01 = c1037Gg2.A01 + j3;
            }
        }
        return j3;
    }

    public static String A01(Uri uri) {
        return uri.toString();
    }

    public static String A02(C1037Gg c1037Gg) {
        if (c1037Gg.A05 != null) {
            return c1037Gg.A05;
        }
        Uri uri = c1037Gg.A04;
        if (A00[0].charAt(11) != 'O') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[5] = "cu8QQJDviMrw4mI2sOy5Vu7yKrvbPHoQ";
        strArr[7] = "0ihZqD29ZbZOvC3sCo5KdBScvHoXIGQ7";
        return A01(uri);
    }

    public static void A03(C1037Gg c1037Gg, H2 h2, V0 v0, byte[] bArr, C1066Hl c1066Hl, int i, H7 h7, AtomicBoolean atomicBoolean, boolean z) throws InterruptedException, IOException {
        H7 h72 = h7;
        HI.A01(v0);
        HI.A01(bArr);
        if (h72 != null) {
            A04(c1037Gg, h2, h72);
        } else {
            h72 = new H7();
        }
        String strA02 = A02(c1037Gg);
        long j = c1037Gg.A01;
        long jA6Q = c1037Gg.A02 != -1 ? c1037Gg.A02 : h2.A6Q(strA02);
        while (true) {
            long j2 = 0;
            if (jA6Q == 0) {
                return;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            long jA6B = h2.A6B(strA02, j, jA6Q != -1 ? jA6Q : Long.MAX_VALUE);
            if (jA6B <= 0) {
                long j3 = -jA6B;
                jA6B = j3;
                if (A00(c1037Gg, j, j3, v0, bArr, c1066Hl, i, h72) < jA6B) {
                    if (z && jA6Q != -1) {
                        throw new EOFException();
                    }
                    return;
                }
            }
            j += jA6B;
            if (jA6Q != -1) {
                j2 = jA6B;
            }
            jA6Q -= j2;
        }
    }

    public static void A04(C1037Gg c1037Gg, H2 h2, H7 h7) {
        String strA02 = A02(c1037Gg);
        long j = c1037Gg.A01;
        long jA6Q = c1037Gg.A02 != -1 ? c1037Gg.A02 : h2.A6Q(strA02);
        h7.A01 = jA6Q;
        h7.A00 = 0L;
        h7.A02 = 0L;
        while (jA6Q != 0) {
            long jA6B = h2.A6B(strA02, j, jA6Q != -1 ? jA6Q : Long.MAX_VALUE);
            if (jA6B > 0) {
                h7.A00 += jA6B;
            } else {
                jA6B = -jA6B;
                if (jA6B == Long.MAX_VALUE) {
                    return;
                }
            }
            j += jA6B;
            if (jA6Q == -1) {
                jA6B = 0;
            }
            jA6Q -= jA6B;
        }
    }

    public static void A05(H2 h2, String str) {
        Iterator<H6> it = h2.A6C(str).iterator();
        while (it.hasNext()) {
            try {
                h2.AEZ(it.next());
            } catch (H0 unused) {
            }
        }
    }
}
