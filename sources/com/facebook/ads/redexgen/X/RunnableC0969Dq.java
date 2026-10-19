package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0969Dq implements Runnable {
    public static byte[] A02;
    public final /* synthetic */ C0977Dy A00;
    public final /* synthetic */ DownloadAction[] A01;

    static {
        A01();
    }

    public RunnableC0969Dq(C0977Dy c0977Dy, DownloadAction[] downloadActionArr) {
        this.A00 = c0977Dy;
        this.A01 = downloadActionArr;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{Ascii.RS, 53, 45, 52, 54, 53, 59, 62, Ascii.ETB, 59, 52, 59, 61, 63, 40, 105, 92, 75, 74, 80, 74, 77, 80, 87, 94, Ascii.EM, 88, 90, 77, 80, 86, 87, 74, Ascii.EM, 95, 88, 80, 85, 92, 93, Ascii.ETB};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            try {
                this.A00.A09.A02(this.A01);
            } catch (IOException e2) {
                Log.e(A00(0, 15, 36), A00(15, 26, 71), e2);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
