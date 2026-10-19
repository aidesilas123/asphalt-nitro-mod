package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1626bX {
    public static String[] A0C = {"YcCIPLCDTe1wGTKdO7xqYhpFwQzvmXtt", "FfIdHaSVTal814YVh5tJNVr21T0wsSAo", "HLDls6wic6LzndIKtUvgWnGJ4QMP07cO", "ccYpD8PuArRKO9YkPTuVfhIh5pDN1br2", "LFFD576NBTVByEN649EglQB81U0zBBuc", "sO5gz1O188I9hNkbLLxzl8j4JWiDgVKK", "Hord6YvHX1lmSPmhXyMRW660HCYjcXOm", "5HbQDpK1pfSpB47EOovGOWVGJlrw1BSl"};
    public InterfaceC1630bb A00;
    public boolean A01;
    public final Rect A02;
    public final Rect A03;
    public final Handler A04;
    public final InterfaceC1325Rp A05;
    public final InterfaceC1637bi A06;
    public final C1628bZ A07;
    public final InterfaceC1027Fw A08;
    public final Runnable A09;
    public final List<Rect> A0A;
    public final List<View> A0B;

    public C1626bX(InterfaceC1637bi interfaceC1637bi, InterfaceC1325Rp interfaceC1325Rp, InterfaceC1027Fw interfaceC1027Fw, C1628bZ c1628bZ, Handler handler) {
        this(interfaceC1637bi, interfaceC1325Rp, interfaceC1027Fw, c1628bZ, handler, 100);
    }

    public C1626bX(InterfaceC1637bi interfaceC1637bi, InterfaceC1325Rp interfaceC1325Rp, InterfaceC1027Fw interfaceC1027Fw, C1628bZ c1628bZ, Handler handler, int i) {
        this.A03 = new Rect();
        this.A02 = new Rect();
        this.A0B = new ArrayList();
        this.A0A = new ArrayList();
        this.A01 = false;
        this.A06 = interfaceC1637bi;
        this.A05 = interfaceC1325Rp;
        this.A08 = interfaceC1027Fw;
        this.A07 = c1628bZ;
        this.A04 = handler;
        this.A09 = new RunnableC1627bY(this, i);
    }

    private void A03(long j) {
        if (!this.A0B.isEmpty()) {
            throw new IllegalStateException();
        }
        this.A06.A8E(this.A0A);
        this.A08.A3x(j, this.A0A);
        this.A08.A5U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(long j) {
        this.A06.A8E(this.A0A);
        this.A08.A3x(j, this.A0A);
        if (!this.A0B.isEmpty()) {
            throw new IllegalStateException();
        }
        this.A07.A03(this.A0B);
        Iterator<View> it = this.A0B.iterator();
        loop0: while (true) {
            if (it.hasNext()) {
                View next = it.next();
                C1635bg c1635bgA00 = this.A07.A00(next);
                Iterator<Rect> it2 = this.A0A.iterator();
                while (it2.hasNext()) {
                    if (C1619bQ.A00(next, this.A03, this.A02, it2.next()) && c1635bgA00 != C1635bg.A08) {
                        InterfaceC1027Fw interfaceC1027Fw = this.A08;
                        Rect rect = this.A03;
                        Rect rect2 = this.A02;
                        if (A0C[0].charAt(21) != 'h') {
                            break loop0;
                        }
                        A0C[6] = "BhrT0c14O8Thrmtg3HRzOfRcpCyh5HNl";
                        interfaceC1027Fw.A3R(c1635bgA00, rect, rect2);
                    }
                }
            } else {
                this.A08.A5U();
                InterfaceC1630bb interfaceC1630bb = this.A00;
                if (interfaceC1630bb != null) {
                    interfaceC1630bb.ACr();
                }
                this.A0B.clear();
                String[] strArr = A0C;
                if (strArr[1].charAt(9) != strArr[3].charAt(9)) {
                    String[] strArr2 = A0C;
                    strArr2[1] = "lmQ3TWUKEycrXTOUs6diKoA3HcDn9Pdd";
                    strArr2[3] = "T2sieqBmgvCwHjMtYcExspPM2F3LyLlD";
                    return;
                }
            }
        }
        throw new RuntimeException();
    }

    public final void A07() {
        InterfaceC1630bb interfaceC1630bb = this.A00;
        if (interfaceC1630bb != null) {
            interfaceC1630bb.ACr();
        }
        if (this.A01) {
            this.A04.removeCallbacks(this.A09);
            A03(this.A05.AAE());
        }
        this.A01 = false;
        if (A0C[0].charAt(21) != 'h') {
            throw new RuntimeException();
        }
        A0C[0] = "Da2exFZBguRvp8OTbNDxEhbqIKaEOHIs";
    }

    public final void A08() {
        if (this.A01) {
            return;
        }
        this.A01 = true;
        this.A04.post(this.A09);
    }

    public final void A09(InterfaceC1632bd interfaceC1632bd) {
        this.A08.AFW(interfaceC1632bd);
    }

    public final void A0A(InterfaceC1630bb interfaceC1630bb) {
        this.A00 = interfaceC1630bb;
    }
}
