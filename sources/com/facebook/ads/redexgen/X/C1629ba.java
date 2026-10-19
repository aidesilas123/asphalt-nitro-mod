package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1629ba {
    public InterfaceC1632bd A00;
    public InterfaceC1630bb A01;
    public C1617bO A02;
    public final InterfaceC1639bk A04;
    public final InterfaceC1631bc A05;
    public final LinkedHashMap<Integer, Runnable> A06 = new LinkedHashMap<>();
    public final InterfaceC1630bb A03 = new C1028Fx(this);

    public C1629ba(InterfaceC1639bk interfaceC1639bk, InterfaceC1631bc interfaceC1631bc) {
        this.A04 = interfaceC1639bk;
        this.A05 = interfaceC1631bc;
    }

    public static C1629ba A01() {
        return new C1629ba(new G1(), null);
    }

    private void A03(AbstractC1633be abstractC1633be, InterfaceC1637bi interfaceC1637bi, InterfaceC1027Fw interfaceC1027Fw) {
        C1617bO c1617bOA00 = C1617bO.A00(abstractC1633be, interfaceC1637bi, interfaceC1027Fw);
        this.A02 = c1617bOA00;
        InterfaceC1632bd interfaceC1632bd = this.A00;
        if (interfaceC1632bd != null) {
            c1617bOA00.A03(interfaceC1632bd);
        }
        this.A02.A04(this.A03);
    }

    public final void A04(View view) {
        C1617bO c1617bO = this.A02;
        if (c1617bO == null || view == null) {
            return;
        }
        c1617bO.A01(view);
    }

    public final void A05(View view, C1635bg c1635bg) {
        C1617bO c1617bO = this.A02;
        if (c1617bO == null || view == null || c1635bg == null) {
            return;
        }
        c1617bO.A02(view, c1635bg);
    }

    public final void A06(AbstractC1633be abstractC1633be, View view) {
        if (abstractC1633be == null || view == null) {
            return;
        }
        C1029Fy c1029Fy = new C1029Fy(view, this.A04);
        final InterfaceC1631bc interfaceC1631bc = this.A05;
        A03(abstractC1633be, c1029Fy, new InterfaceC1027Fw(interfaceC1631bc) { // from class: com.facebook.ads.redexgen.X.3f
            public static byte[] A09;
            public static String[] A0A = {"okBgSYhQGmV0QyU32992deBLR6XrdaZQ", "E", "ZDdZ5rthnspWTI3gzSJHBR7aYCyAxUsq", "EsXM2pc2I6J3hYC1V9OQRTCtALa8wmqB", "DKA0ex9266tXplnV6PUb8C0vdYHWYjG4", "tBgdKBpc94v7LWesC8aTGIaQqZdJYwjy", "iZindrm9v6DBRttH7DMzAa7", "d9237vu9oQoOcpvZwewcjFUDz74P7MIA"};
            public static final String A0B;
            public long A00;
            public InterfaceC1632bd A01;
            public final InterfaceC1631bc A02;
            public final Map<String, C1621bS> A06 = new HashMap();
            public final C1622bT A04 = new C1622bT();
            public final C1622bT A03 = new C1622bT();
            public final List<Rect> A05 = new ArrayList(1);
            public final boolean A08 = false;
            public final boolean A07 = false;

            static {
                A03();
                A0B = C07323f.class.getSimpleName();
            }

            {
                this.A02 = interfaceC1631bc;
            }

            public static Rect A00(C1621bS c1621bS) {
                if (c1621bS != null && c1621bS.A02.top != Integer.MIN_VALUE && c1621bS.A02.left != Integer.MIN_VALUE) {
                    Rect rect = c1621bS.A02;
                    String[] strArr = A0A;
                    if (strArr[1].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0A;
                    strArr2[1] = TtmlNode.TAG_P;
                    strArr2[6] = "Kr6mbDoiLKwWSgNyXDF2oJW";
                    if (rect.right != Integer.MIN_VALUE && c1621bS.A02.bottom != Integer.MIN_VALUE) {
                        return c1621bS.A02;
                    }
                }
                throw new IllegalStateException(A02(0, 143, 38));
            }

            private C1621bS A01(C1635bg c1635bg, Rect rect, Rect rect2) {
                C1621bS c1621bSA03 = this.A06.get(c1635bg.A04);
                if (this.A04.A06(c1635bg)) {
                    if (c1621bSA03 == null) {
                        c1621bSA03 = C1621bS.A03(this.A00);
                        this.A06.put(c1635bg.A04, c1621bSA03);
                    } else {
                        c1621bSA03.A01 = EnumC1625bW.A04;
                    }
                }
                c1621bSA03.A02.set(rect2);
                c1621bSA03.A03.add(new Rect(rect));
                return c1621bSA03;
            }

            public static String A02(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A03() {
                A09 = new byte[]{41, Ascii.NAK, Ascii.DC4, Ascii.SO, 93, Ascii.VT, Ascii.DC4, Ascii.CAN, 10, Ascii.CR, Ascii.DC2, Ascii.DC4, 19, 9, 93, Ascii.NAK, Ascii.FS, Ascii.SO, 93, 19, Ascii.DC2, 9, 93, Ascii.US, Ascii.CAN, Ascii.CAN, 19, 93, Ascii.DLE, Ascii.CAN, Ascii.FS, Ascii.SO, 8, Ascii.SI, Ascii.CAN, Ascii.EM, 93, Ascii.DC2, Ascii.SI, 93, Ascii.DC4, Ascii.SO, 93, Ascii.FS, 93, Ascii.SUB, Ascii.SI, Ascii.DC2, 8, Ascii.CR, 93, 10, Ascii.NAK, Ascii.DC4, Ascii.RS, Ascii.NAK, 93, 10, Ascii.DC4, 17, 17, 93, 19, Ascii.CAN, Ascii.VT, Ascii.CAN, Ascii.SI, 93, Ascii.SI, Ascii.CAN, 9, 8, Ascii.SI, 19, 93, Ascii.FS, 93, Ascii.DLE, Ascii.CAN, Ascii.FS, Ascii.SO, 8, Ascii.SI, Ascii.CAN, Ascii.DLE, Ascii.CAN, 19, 9, 93, Ascii.SO, Ascii.DC4, 19, Ascii.RS, Ascii.CAN, 93, Ascii.DC4, 9, 90, Ascii.SO, 93, Ascii.DLE, Ascii.FS, Ascii.EM, Ascii.CAN, 93, 8, Ascii.CR, 93, Ascii.DC2, Ascii.ESC, 93, Ascii.SO, 8, Ascii.US, Ascii.VT, Ascii.DC4, Ascii.CAN, 10, Ascii.SO, 93, 9, Ascii.NAK, Ascii.FS, 9, 93, Ascii.RS, Ascii.DC2, 8, 17, Ascii.EM, 93, Ascii.US, Ascii.CAN, 93, Ascii.DC2, Ascii.ESC, Ascii.ESC, Ascii.SO, Ascii.RS, Ascii.SI, Ascii.CAN, Ascii.CAN, 19, 118, 125, 111, 75, 123, 121, 118, 63, 36, 61, 61, 113, 39, 56, 52, 38, 113, 33, 35, 62, 33, 52, 35, 37, 40, 113, 55, 62, 35, 113, 35, 52, 60, 62, 39, 52, 53, 113, 56, 37, 52, 60, 113, 125, 97, 104, 122, 92, 107, 126, 97, 124, 122};
            }

            private void A04(C1622bT c1622bT) {
                for (C1635bg c1635bg : c1622bT.A01()) {
                    C1621bS c1621bS = this.A06.get(c1635bg.A04);
                    if (c1621bS != null) {
                        c1621bS.A01 = EnumC1625bW.A03;
                        c1621bS.A03.clear();
                        c1635bg.A03(this);
                        if (this.A08) {
                            Map<String, C1621bS> map = this.A06;
                            String[] strArr = A0A;
                            if (strArr[0].charAt(8) == strArr[2].charAt(8)) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A0A;
                            strArr2[0] = "dCpYPRypiVOHB4OlkAqBqk8EySqTLE1k";
                            strArr2[2] = "r3sjB169HJX8vOmMpko73ANLsggTEmi2";
                            map.remove(c1621bS);
                        } else {
                            continue;
                        }
                    } else if (this.A02 != null) {
                        String str = A02(150, 36, 10) + c1635bg.A04;
                        throw new NullPointerException(A02(186, 10, 85));
                    }
                }
            }

            private void A05(C1622bT c1622bT) {
                Iterator it = c1622bT.A00().iterator();
                while (it.hasNext()) {
                    ((C1635bg) it.next()).A03(this);
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1027Fw
            public final void A3R(C1635bg c1635bg, Rect rect, Rect rect2) {
                A01(c1635bg, rect, rect2);
                C1635bg c1635bg2 = c1635bg.A01;
                if (c1635bg2 != C1635bg.A08) {
                    boolean zA06 = this.A03.A06(c1635bg2);
                    C1621bS c1621bSA03 = this.A06.get(c1635bg2.A04);
                    if (zA06) {
                        if (c1621bSA03 != null) {
                            c1621bSA03.A03.clear();
                            if (!this.A07 || c1635bg2.A04()) {
                                c1621bSA03.A01 = EnumC1625bW.A04;
                            }
                        } else {
                            c1621bSA03 = C1621bS.A03(this.A00);
                            c1621bSA03.A02.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
                            this.A06.put(c1635bg2.A04, c1621bSA03);
                        }
                    }
                    c1621bSA03.A03.add(new Rect(rect));
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1027Fw
            public final void A3x(long j, List<Rect> list) {
                this.A00 = j;
                this.A05.clear();
                Iterator<Rect> it = list.iterator();
                while (it.hasNext()) {
                    this.A05.add(new Rect(it.next()));
                }
                Iterator it2 = this.A04.A01().iterator();
                while (it2.hasNext()) {
                    this.A06.remove(((C1635bg) it2.next()).A04);
                }
                Iterator it3 = this.A03.A01().iterator();
                while (it3.hasNext()) {
                    this.A06.remove(((C1635bg) it3.next()).A04);
                }
                Iterator<C1621bS> it4 = this.A06.values().iterator();
                while (it4.hasNext()) {
                    it4.next().A03.clear();
                }
                this.A04.A04();
                this.A03.A04();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1027Fw
            public final void A5U() {
                A05(this.A04);
                A04(this.A04);
                A05(this.A03);
                A04(this.A03);
                if (this.A01 != null) {
                    new C1620bR(toString(), this, this.A05, this.A04.A00(), this.A03.A00());
                    throw new NullPointerException(A02(143, 7, 67));
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1624bV
            public final void A71(C1635bg c1635bg, Rect rect) {
                rect.setEmpty();
                Iterator it = this.A06.get(c1635bg.A04).A03.iterator();
                while (it.hasNext()) {
                    rect.union((Rect) it.next());
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1624bV
            public final EnumC1625bW A8A(C1635bg c1635bg) {
                return this.A06.get(c1635bg.A04).A01;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1624bV
            public final void A8C(Rect rect) {
                rect.setEmpty();
                Iterator<Rect> it = this.A05.iterator();
                while (it.hasNext()) {
                    rect.union(it.next());
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1624bV
            public final float A8D(C1635bg c1635bg) {
                C1621bS c1621bS = this.A06.get(c1635bg.A04);
                if (c1621bS == null) {
                    return 0.0f;
                }
                Rect rectA00 = A00(c1621bS);
                int iHeight = rectA00.height() * rectA00.width();
                int iHeight2 = 0;
                for (Rect rect : c1621bS.A03) {
                    iHeight2 += rect.height() * rect.width();
                }
                return iHeight2 / iHeight;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1027Fw
            public final void AFW(InterfaceC1632bd interfaceC1632bd) {
                this.A01 = interfaceC1632bd;
            }
        });
    }
}
