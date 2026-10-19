package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.gms.drive.DriveFile;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1200Mu implements View.OnClickListener {
    public static byte[] A02;
    public final /* synthetic */ YA A00;
    public final /* synthetic */ C1202Mw A01;

    static {
        A01();
    }

    public ViewOnClickListenerC1200Mu(C1202Mw c1202Mw, YA ya) {
        this.A01 = c1202Mw;
        this.A00 = ya;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, Ascii.DC4, 33, Ascii.DC2, Ascii.DC4, Ascii.SYN, 39, Ascii.FS, 41, Ascii.FS, 39, 44, -60, -47, -57, -43, -46, -52, -57, -111, -52, -47, -41, -56, -47, -41, -111, -60, -58, -41, -52, -46, -47, -111, -71, -84, -88, -70};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.A01.A06) && !A00(0, 11, 35).equals(this.A01.A06)) {
                Intent intent = new Intent(A00(22, 26, 33), C1132Kc.A00(this.A01.A06));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.A00.A0E().A8W();
                try {
                    KN.A0B(this.A00, intent);
                } catch (KL e2) {
                    Throwable cause = e2.getCause();
                    KL cause2 = e2;
                    if (cause != null) {
                        cause2 = e2.getCause();
                    }
                    this.A00.A07().A9M(A00(11, 11, 113), C08417x.A00, new C08427y(cause2));
                }
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
