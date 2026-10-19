package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class K8 implements Runnable {
    public static byte[] A01;
    public static final AtomicBoolean A02;
    public static final AtomicBoolean A03;
    public static final AtomicReference<InterfaceC1128Jy> A04;
    public final C1126Jw A00;

    static {
        A02();
        A02 = new AtomicBoolean();
        A03 = new AtomicBoolean(false);
        A04 = new AtomicReference<>();
    }

    public K8() {
        if (A03.get()) {
            this.A00 = KD.A01(new KC(A01(0, 26, 90) + Thread.currentThread().getName()));
        } else {
            this.A00 = null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{124, 91, 64, 64, 79, 76, 66, 75, Ascii.SO, 77, 92, 75, 79, 90, 75, 74, 0, Ascii.SO, 122, 70, 92, 75, 79, 74, Ascii.DC4, Ascii.SO};
    }

    public static void A03(boolean z) {
        A03.set(z);
    }

    public static void A04(boolean z, InterfaceC1128Jy interfaceC1128Jy) {
        A02.set(z);
        A04.set(interfaceC1128Jy);
    }

    public final C1126Jw A05() {
        return this.A00;
    }

    public abstract void A06();

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (A03.get()) {
                KD.A03(this);
            }
            try {
                A06();
            } catch (Throwable th) {
                if (!A02.get()) {
                    throw th;
                }
                KF.A00().A9E(IronSourceConstants.BN_INSTANCE_RELOAD_ERROR, th);
                InterfaceC1128Jy interfaceC1128Jy = A04.get();
                if (interfaceC1128Jy != null) {
                    interfaceC1128Jy.AEc(th, this);
                }
            }
            if (A03.get()) {
                KD.A04(this);
            }
        } catch (Throwable th2) {
            K0.A00(th2, this);
        }
    }
}
