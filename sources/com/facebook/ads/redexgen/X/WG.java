package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WG implements InterfaceC0941Cg {
    public static byte[] A06;
    public static String[] A07 = {"3GVDuA8wFVUyMgpUpbIewfrR9H99KrEk", "JlICi14zqaUcthBIG11pWTw91wh2yVCw", "SCc1nWfYKQsHAUfYf8T5wZndFViKre8j", "glAeXwJzdtWksZ9B0aFClAzpFAfPstjY", "", "MoUOfVVsEVomZ5Pq9PB", "UtG2kZW99inEJ5Gw9pPEuhVI3SuCWANI", "WpnQHVSEOc3lam6iocwMhSGypVEKzNDF"};
    public int A00;
    public int A01;
    public long A02;
    public InterfaceC0930Bm A03;
    public boolean A04;
    public final C1062Hh A05 = new C1062Hh(10);

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A07[3].charAt(3) == 'p') {
                throw new RuntimeException();
            }
            A07[3] = "8BWuaIrledIbOr1Vvmzlm7GxjPqtlOKX";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
            i4++;
        }
    }

    public static void A01() {
        A06 = new byte[]{121, 84, 78, 94, 92, 79, 89, 84, 83, 90, Ascii.GS, 84, 83, 75, 92, 81, 84, 89, Ascii.GS, 116, 121, Ascii.SO, Ascii.GS, 73, 92, 90, Ascii.SYN, 59, 108, Ascii.CR, 58, 62, 59, 58, 45, 43, 58, 58, 38, 35, 41, 43, 62, 35, 37, 36, 101, 35, 46, 121};
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0078, code lost:
    
        if (51 != r7) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00af, code lost:
    
        if (51 != r7) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
    
        r8.A05.A0Z(3);
        r8.A01 = r8.A05.A0D() + 10;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A4O(com.facebook.ads.redexgen.X.C1062Hh r9) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.WG.A4O(com.facebook.ads.redexgen.X.Hh):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 4);
        this.A03 = interfaceC0930BmAFx;
        interfaceC0930BmAFx.A5j(Format.A0B(c0952Cu.A04(), A00(35, 15, 124), null, -1, null));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
        int i;
        if (this.A04 && (i = this.A01) != 0 && this.A00 == i) {
            this.A03.AEs(this.A02, 1, i, 0, null);
            this.A04 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        if (z) {
            this.A04 = true;
            this.A02 = j;
            this.A01 = 0;
            this.A00 = 0;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        this.A04 = false;
    }
}
