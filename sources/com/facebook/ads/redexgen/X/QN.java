package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class QN {
    public static QN A09;
    public static byte[] A0A;
    public static final DownloadAction.Deserializer[] A0B;
    public C0977Dy A00;
    public H2 A01;
    public File A02;
    public boolean A03;
    public final Y9 A06;
    public final InterfaceC0970Dr A07;
    public final Handler A04 = new Handler(Looper.getMainLooper());
    public final SparseArray<QL> A05 = new SparseArray<>();
    public final Runnable A08 = new QK(this);

    static {
        A0C();
        A0B = new DownloadAction.Deserializer[]{C1428Vp.A03};
    }

    public QN(Y9 y9, C0977Dy c0977Dy) {
        JM jm = new JM(this);
        this.A07 = jm;
        this.A06 = y9;
        if (c0977Dy != null) {
            this.A00 = c0977Dy;
            c0977Dy.A0Q(jm);
        }
        A01().A0P();
    }

    private synchronized C0977Dy A01() {
        if (this.A00 == null) {
            C0977Dy c0977Dy = new C0977Dy(new E3(A03(), A02()), 10, 5, new File(A06(), A07(52, 12, 89)), A0B);
            this.A00 = c0977Dy;
            c0977Dy.A0Q(this.A07);
        }
        return this.A00;
    }

    private C2P A02() {
        return new C2P(A07(78, 3, 89), null);
    }

    private final synchronized H2 A03() {
        if (this.A01 == null) {
            this.A01 = new C1409Uw(new File(A06(), A07(64, 14, 16)), new C0906Am(IP.A0P(this.A06)));
        }
        return this.A01;
    }

    public static C1412Uz A04(VG vg, H2 h2) {
        return new C1412Uz(h2, vg, new VC(), null, 2, null);
    }

    public static synchronized QN A05(Y9 y9) {
        if (A09 == null) {
            A09 = new QN(y9, null);
        }
        return A09;
    }

    private File A06() {
        if (this.A02 == null) {
            this.A02 = this.A06.getCacheDir();
        }
        return this.A02;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A08(Y9 y9, Uri uri) {
        try {
            if (IP.A1U(y9)) {
                return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
            }
            return null;
        } catch (URISyntaxException e2) {
            y9.A07().A9M(A07(81, 5, 14), C08417x.A0u, new C08427y(e2));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        for (C0976Dx c0976Dx : A01().A0S()) {
            int i = c0976Dx.A02;
            QL ql = this.A05.get(i);
            if (ql != null) {
                int i2 = c0976Dx.A01;
                if (i2 == 2 || c0976Dx.A03 > ql.A00) {
                    String str = A07(15, 19, 61) + i2 + A07(0, 8, 18) + c0976Dx.A03;
                    ql.A01.AB7(ql.A02);
                    this.A05.remove(i);
                } else if (i2 == 4 || i2 == 3) {
                    String str2 = A07(34, 14, 111) + i2;
                    ql.A01.ABJ(c0976Dx.A05);
                    this.A05.remove(i);
                }
            }
            String str3 = A07(48, 4, 25) + i + A07(8, 7, 52) + c0976Dx.A03;
        }
    }

    private void A0A() {
        if (this.A03) {
            return;
        }
        this.A03 = true;
        this.A04.post(this.A08);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        this.A04.removeCallbacks(this.A08);
        this.A03 = false;
    }

    public static void A0C() {
        A0A = new byte[]{-103, -69, -14, -19, -34, -20, -77, -103, -69, -3, Ascii.DC4, Ascii.SI, 0, Ascii.SO, -69, -24, 19, Ascii.ESC, Ascii.DC2, Ascii.DLE, 19, 5, 8, 9, 8, -46, -60, -9, Ascii.CAN, 5, Ascii.CAN, 9, -34, -60, Ascii.ESC, 72, 72, 69, 72, 4, -10, 41, 74, 55, 74, 59, Ascii.DLE, -10, -44, -31, -13, -21, 33, 36, 46, 55, -19, 33, 35, 52, 41, 47, 46, 51, -40, -37, -27, -18, -92, -37, -26, -18, -27, -29, -26, -40, -37, -22, 33, 36, 51, -40, -42, -40, -35, -38};
    }

    public final C1412Uz A0F(Context context) {
        return A04(new VG(context, (InterfaceC1053Gy<? super InterfaceC1033Gc>) null, A02()), A03());
    }

    public final void A0G(Uri uri, QM qm, long j) {
        String strA08 = A08(this.A06, uri);
        if (strA08 == null) {
            strA08 = uri.toString();
        }
        boolean zA0H = A0H(strA08);
        this.A05.put(A01().A0O(new C1428Vp(uri, false, null, strA08)), new QL(qm, j, zA0H, null));
        A0A();
    }

    public final boolean A0H(String str) {
        return A03().A6B(str, 0L, 1L) > 0;
    }
}
