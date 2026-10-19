package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1510Yw extends AbstractC07574f {
    public static byte[] A03;
    public static String[] A04 = {"WP5CpU5dCfM1vj2iCgRczyLeS833jqA7", "f0t6mABNpir4NiI1IJBR", "VMSqLwjWc3fXvu7D9B7JwatTJSWiKmSt", "2kGOlvpEajHcc9JJ5BV7kSrV8Uhb9VDh", "BGGgbgkg4NpzKA2XjpG6Q8iHB2GG9zH0", "ziOTckvigWpUqNYWulExTvMWDfbzI1Sq", "WkLWBkQ13lLgYVln8HDaQ7gYbGPRUWfj", "hZJ2tRP2pGaevCKAXmW2Fr9GhnOGACBf"};
    public ED A00;
    public Scroller A01;
    public final AbstractC07594h A02 = new C1511Yx(this);

    static {
        A09();
    }

    private final ZB A05(AbstractC07544c abstractC07544c) {
        return A0E(abstractC07544c);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    private void A07() {
        this.A00.A1l(this.A02);
        this.A00.setOnFlingListener(null);
    }

    private void A08() throws IllegalStateException {
        if (this.A00.getOnFlingListener() != null) {
            throw new IllegalStateException(A06(0, 43, 103));
        }
        this.A00.A1k(this.A02);
        this.A00.setOnFlingListener(this);
    }

    public static void A09() {
        byte[] bArr = {-35, 10, -68, 5, 10, Ascii.SI, Ascii.DLE, -3, 10, -1, 1, -68, Ascii.VT, 2, -68, -21, 10, -30, 8, 5, 10, 3, -24, 5, Ascii.SI, Ascii.DLE, 1, 10, 1, Ascii.SO, -68, -3, 8, Ascii.SO, 1, -3, 0, Ascii.NAK, -68, Ascii.SI, 1, Ascii.DLE, -54};
        if (A04[2].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[3] = "Gfsvb5V6ZkZ1EjPhJmDEOg0wCX37AMGK";
        strArr[5] = "BogmwpJuEiSgKohE6B9VLJKkNQC2pxlX";
        A03 = bArr;
    }

    private boolean A0A(AbstractC07544c abstractC07544c, int i, int i2) {
        ZB zbA05;
        if (!(abstractC07544c instanceof InterfaceC07654o) || (zbA05 = A05(abstractC07544c)) == null) {
            return false;
        }
        int iA0C = A0C(abstractC07544c, i, i2);
        String[] strArr = A04;
        if (strArr[0].charAt(25) == strArr[7].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[0] = "3QNQgzU1MIdfo8xP0zEWa1SfaSPVi8u7";
        strArr2[7] = "BhxrOivCOMjMD1hwED78TbVHZR3oyoMb";
        if (iA0C == -1) {
            return false;
        }
        zbA05.A0A(iA0C);
        abstractC07544c.A1L(zbA05);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07574f
    public final boolean A0B(int i, int i2) {
        AbstractC07544c layoutManager = this.A00.getLayoutManager();
        if (layoutManager == null || this.A00.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.A00.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && A0A(layoutManager, i, i2);
    }

    public abstract int A0C(AbstractC07544c abstractC07544c, int i, int i2);

    public abstract View A0D(AbstractC07544c abstractC07544c);

    @Deprecated
    public ZB A0E(AbstractC07544c abstractC07544c) {
        if (abstractC07544c instanceof InterfaceC07654o) {
            return new EC(this, this.A00.getContext());
        }
        return null;
    }

    public final void A0F() {
        AbstractC07544c layoutManager;
        View viewA0D;
        ED ed = this.A00;
        if (ed == null || (layoutManager = ed.getLayoutManager()) == null || (viewA0D = A0D(layoutManager)) == null) {
            return;
        }
        int[] iArrA0H = A0H(layoutManager, viewA0D);
        if (iArrA0H[0] == 0 && iArrA0H[1] == 0) {
            return;
        }
        this.A00.A1f(iArrA0H[0], iArrA0H[1]);
    }

    public final void A0G(ED ed) throws IllegalStateException {
        ED ed2 = this.A00;
        if (ed2 == ed) {
            return;
        }
        if (ed2 != null) {
            A07();
        }
        this.A00 = ed;
        if (ed != null) {
            A08();
            this.A01 = new Scroller(this.A00.getContext(), new DecelerateInterpolator());
            A0F();
        }
    }

    public abstract int[] A0H(AbstractC07544c abstractC07544c, View view);
}
