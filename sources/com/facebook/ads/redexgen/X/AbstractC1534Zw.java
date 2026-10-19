package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1534Zw implements C2A {
    public static byte[] A05;
    public final InterfaceC07001y A00;
    public final YA A01;
    public final String A02 = UUID.randomUUID().toString();
    public final Handler A03;
    public final AnonymousClass25 A04;

    static {
        A03();
    }

    public AbstractC1534Zw(YA ya, AnonymousClass26 anonymousClass26) {
        this.A01 = ya;
        DynamicLoaderFactory.makeLoader(ya).getInitApi().onAdLoadInvoked(ya);
        C1537Zz c1537Zz = new C1537Zz(ya, this);
        this.A00 = c1537Zz;
        this.A03 = new Handler(Looper.getMainLooper());
        this.A04 = anonymousClass26.A4c(c1537Zz, this);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{-65, -46, -53, -63, -55, -62, -36, -62, -43, -47, -49, -66, -48, -36, -56, -62, -42, -46, -41, -35, -24, -50, -37, -37, -40, -37, -24, -52, -40, -51, -50, -24, -44, -50, -30, -83, -82, -84, -71, -101, -98, -71, -93, -98, -71, -91, -97, -77, -24, -23, -25, -12, -38, -25, -25, -28, -25, -12, -30, -38, -24, -24, -42, -36, -38, -12, -32, -38, -18};
    }

    public final void A04() {
        if (IP.A0q(this.A01)) {
            LP.A00(new C1535Zx(this));
        }
    }

    public abstract void A05();

    public final void A06(int i, AdErrorType adErrorType, String str) {
        Bundle bundle = new Bundle();
        String strA02 = A02(48, 21, 113);
        if (str != null) {
            bundle.putString(strA02, str);
        } else {
            bundle.putString(strA02, adErrorType.getDefaultErrorMessage());
        }
        bundle.putInt(A02(17, 18, 101), adErrorType.getErrorCode());
        AC7(i, this.A02, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.C2A
    public final void AC7(int i, String str, Bundle bundle) {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.getData().putString(A02(35, 13, 54), str);
        if (bundle != null) {
            messageObtain.getData().putBundle(A02(0, 17, 89), bundle);
        }
        this.A03.post(new C1536Zy(this, messageObtain));
    }
}
