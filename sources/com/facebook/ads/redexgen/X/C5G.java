package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5G, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C5G {
    public static byte[] A04;
    public final Intent A00;
    public final C5J A01;
    public final YA A02;
    public final InterfaceC1086If A03;

    static {
        A0T();
    }

    public C5G(C5J c5j, Intent intent, InterfaceC1086If interfaceC1086If, YA ya) {
        this.A01 = c5j;
        this.A00 = intent;
        this.A03 = interfaceC1086If;
        this.A02 = ya;
    }

    public /* synthetic */ C5G(C5J c5j, Intent intent, InterfaceC1086If interfaceC1086If, YA ya, C5F c5f) {
        this(c5j, intent, interfaceC1086If, ya);
    }

    private F0 A00() {
        return (F0) this.A00.getSerializableExtra(A0S(0, 14, 29));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1174Lu A02() {
        C5F c5f = null;
        return IP.A2H(this.A02) ? new C7I(this.A02, this.A03, new C6Q(this.A02), new C1507Yt(this.A01, c5f), A00()) : new C7H(this.A02, this.A03, new C6Q(this.A02), new C1507Yt(this.A01, c5f), A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1372Tl A0G() {
        C5J c5j = this.A01;
        return new C1372Tl(c5j, this.A02, this.A03, new C1507Yt(c5j, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TU A0H() {
        return new TU(this.A02, this.A03, new C1507Yt(this.A01, null), A00(), null, new TR());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TU A0I() {
        C1003Ey c1003Ey = (C1003Ey) this.A00.getSerializableExtra(A0S(51, 25, 124));
        return new TU(this.A02, this.A03, new EB(this.A01, null), c1003Ey, c1003Ey.A0S(), new TQ());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TS A0J(RelativeLayout relativeLayout) {
        TS ts = new TS(this.A02, new C1506Ys(this), this.A03, new C1507Yt(this.A01, null));
        ts.A05(relativeLayout);
        ts.A04(this.A00.getIntExtra(A0S(76, 27, 41), 200));
        LV.A0M(relativeLayout, ViewCompat.MEASURED_STATE_MASK);
        return ts;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AnonymousClass96 A0K() {
        return new AnonymousClass96(this.A02, this.A03, new C1507Yt(this.A01, null), A00(), new TR(), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AnonymousClass96 A0L() {
        return new AnonymousClass96(this.A02, this.A03, new C1507Yt(this.A01, null), (C1003Ey) this.A00.getSerializableExtra(A0S(51, 25, 124)), new TQ(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1336Sa A0M() {
        C1239Oh c1239OhA02;
        AbstractC1566aS abstractC1566aS = (AbstractC1566aS) this.A00.getSerializableExtra(A0S(33, 18, 116));
        C5F c5f = null;
        if (abstractC1566aS == null || (c1239OhA02 = C1240Oi.A02(abstractC1566aS.A0R())) == null) {
            return null;
        }
        return new C1336Sa(this.A02, new C1507Yt(this.A01, c5f), c1239OhA02, abstractC1566aS.A11());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SD A0N(EnumC1121Jq enumC1121Jq) {
        MM tq;
        InterfaceC1173Lt eb;
        C1564aQ c1564aQ = (C1564aQ) this.A00.getSerializableExtra(A0S(14, 19, 51));
        C5F c5f = null;
        if (enumC1121Jq == EnumC1121Jq.A03) {
            tq = new TR();
            eb = new C1507Yt(this.A01, c5f);
        } else {
            tq = new TQ();
            eb = new EB(this.A01, c5f);
        }
        return new SD(this.A02, tq, this.A03, c1564aQ, new C6Q(this.A02), eb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C8B A0O() {
        return new C8B(this.A02, new TR(), this.A03, A00(), new C6Q(this.A02), new C1507Yt(this.A01, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7K A0P() {
        return new C7K(this.A02, new TR(), this.A03, A00(), new C6Q(this.A02), new C1507Yt(this.A01, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7K A0Q() {
        return new C7K(this.A02, new TQ(), this.A03, (C1003Ey) this.A00.getSerializableExtra(A0S(51, 25, 124)), new C6Q(this.A02), new EB(this.A01, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7H A0R() {
        return new C7H(this.A02, this.A03, new C6Q(this.A02), new C1507Yt(this.A01, null), (C1003Ey) this.A00.getSerializableExtra(A0S(51, 25, 124)));
    }

    public static String A0S(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0T() {
        A04 = new byte[]{51, 54, Ascii.CR, 54, 51, 38, 51, Ascii.CR, 48, 39, 60, 54, 62, 55, Ascii.US, Ascii.DC4, Ascii.GS, Ascii.NAK, Ascii.DC2, Ascii.EM, Ascii.CAN, 61, Ascii.CAN, 56, Ascii.GS, 8, Ascii.GS, 62, 9, Ascii.DC2, Ascii.CAN, Ascii.DLE, Ascii.EM, 85, 90, 79, 82, 77, 94, 122, 95, Ascii.DEL, 90, 79, 90, 121, 78, 85, 95, 87, 94, 65, 86, 68, 82, 65, 87, 86, 87, 101, 90, 87, 86, 92, 114, 87, 119, 82, 71, 82, 113, 70, 93, 87, 95, 86, Ascii.DLE, Ascii.SI, 2, 3, 9, 57, Ascii.DC2, Ascii.SI, Ascii.VT, 3, 57, Ascii.SYN, 9, 10, 10, Ascii.SI, 8, 1, 57, Ascii.SI, 8, Ascii.DC2, 3, Ascii.DC4, Ascii.DLE, 7, 10};
    }
}
