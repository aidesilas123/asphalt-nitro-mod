package com.facebook.ads.redexgen.X;

import android.os.Process;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7n, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08327n implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final Y9 A00;
    public final InterfaceC08387u A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public C08327n(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Y9 y9, InterfaceC08317m interfaceC08317m) {
        this(uncaughtExceptionHandler, y9, interfaceC08317m, C08397v.A00());
    }

    public C08327n(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Y9 y9, InterfaceC08317m interfaceC08317m, InterfaceC08387u interfaceC08387u) {
        this.A02 = uncaughtExceptionHandler;
        if (y9 == null) {
            throw new IllegalArgumentException(A00(2, 15, 82));
        }
        this.A00 = y9;
        this.A03 = interfaceC08317m.A7r(y9);
        this.A01 = interfaceC08387u;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, Ascii.FS, 94, 122, 96, 96, 122, 125, 116, 51, 80, 124, 125, 103, 118, 107, 103, Ascii.VT, 7, 5, 70, Ascii.SO, 9, Ascii.VT, Ascii.CR, 10, 7, 7, 3, 70, 9, Ascii.FF, Ascii.ESC, 71, 86, 69, 87, 76, Ascii.DC4, Ascii.DC2, 5, 19, Ascii.RS, Ascii.ETB, 2, 80, 86, 65, 87, 90, 83, 70, 124, 64, 76, 71, 70};
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.A02;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA03 = LD.A03(this.A00, th);
            if (!TextUtils.isEmpty(strA03) && strA03.contains(A00(17, 16, 41))) {
                Map<String, String> mapA02 = new C08307l(strA03, this.A03).A02();
                mapA02.put(A00(38, 7, 38), A00(33, 5, 101));
                Throwable thA00 = AbstractRunnableC1125Jv.A00();
                String strA00 = A00(45, 12, 98);
                if (thA00 == th) {
                    mapA02.put(strA00, A00(1, 1, 108));
                } else {
                    mapA02.put(strA00, A00(0, 1, 91));
                }
                this.A01.AGU(new AnonymousClass81(this.A00.A08().A01(), this.A00.A08().A02(), mapA02), this.A00);
                if (IP.A1g(this.A00)) {
                    IP.A0d(this.A00);
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
