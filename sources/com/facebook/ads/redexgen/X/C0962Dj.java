package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0962Dj implements Handler.Callback, InterfaceC1420Vh, GQ, EX, C9H, InterfaceC08839o {
    public static byte[] A0V;
    public static String[] A0W = {"TSIQGmaqgvrUxo0yYDewkVNDuuioOpPV", "LhstooR1wZsH8RVMZSyyF7FJZ5wrHutR", "WZmkRBn8iXpnqDBIN644YOqcruHieEQJ", "OBm1ApV8rqkCiyt7FxArHXpNA0", "RSLtmQKc5IgtmDXEpea3qKBmF", "cT5hSyxhu4oYAFMn61C1ja3cHbuAf9wl", "QQz6Qig88n9IGtqyO", "pBG4ezF2k8D44jdvacVEPM0q7VNUtk0G"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public C9T A04;
    public C08739e A05;
    public EY A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public XS[] A0C;
    public final long A0D;
    public final Handler A0E;
    public final HandlerThread A0F;
    public final XV A0G;
    public final XT A0H;
    public final C9Z A0J;
    public final C08919x A0L;
    public final C08929y A0M;
    public final GR A0N;
    public final GS A0O;
    public final HL A0P;
    public final HV A0Q;
    public final ArrayList<C9R> A0R;
    public final boolean A0S;
    public final XS[] A0T;
    public final InterfaceC08879s[] A0U;
    public final C08719c A0K = new C08719c();
    public C08909v A06 = C08909v.A03;
    public final C9S A0I = new C9S();

    static {
        A0K();
    }

    public C0962Dj(XS[] xsArr, GR gr, GS gs, C9Z c9z, boolean z, int i, boolean z2, Handler handler, XT xt, HL hl) {
        this.A0T = xsArr;
        this.A0N = gr;
        this.A0O = gs;
        this.A0J = c9z;
        this.A08 = z;
        this.A02 = i;
        this.A0B = z2;
        this.A0E = handler;
        this.A0H = xt;
        this.A0P = hl;
        this.A0D = c9z.A60();
        this.A0S = c9z.AEo();
        this.A05 = new C08739e(AbstractC08939z.A01, C.TIME_UNSET, TrackGroupArray.A04, gs);
        this.A0U = new InterfaceC08879s[xsArr.length];
        for (int i2 = 0; i2 < xsArr.length; i2++) {
            xsArr[i2].AFH(i2);
            this.A0U[i2] = xsArr[i2].A6D();
        }
        this.A0G = new XV(this, hl);
        this.A0R = new ArrayList<>();
        this.A0C = new XS[0];
        this.A0M = new C08929y();
        this.A0L = new C08919x();
        gr.A00(this);
        HandlerThread handlerThread = new HandlerThread(A06(21, 29, 0), -16);
        this.A0F = handlerThread;
        handlerThread.start();
        this.A0Q = hl.A4Z(handlerThread.getLooper(), this);
    }

    private int A00() {
        AbstractC08939z abstractC08939z = this.A05.A03;
        if (abstractC08939z.A0E()) {
            return 0;
        }
        return abstractC08939z.A0B(abstractC08939z.A05(this.A0B), this.A0M).A00;
    }

    private int A01(int i, AbstractC08939z abstractC08939z, AbstractC08939z abstractC08939z2) {
        int iA03 = i;
        int iA04 = -1;
        int iA00 = abstractC08939z.A00();
        for (int i2 = 0; i2 < iA00 && iA04 == -1; i2++) {
            iA03 = abstractC08939z.A03(iA03, this.A0L, this.A0M, this.A02, this.A0B);
            if (iA03 == -1) {
                break;
            }
            iA04 = abstractC08939z2.A04(abstractC08939z.A0A(iA03, this.A0L, true).A03);
        }
        return iA04;
    }

    private long A02(EW ew, long j) throws C9K {
        return A03(ew, j, this.A0K.A0G() != this.A0K.A0H());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A03(com.facebook.ads.redexgen.X.EW r9, long r10, boolean r12) throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0962Dj.A03(com.facebook.ads.redexgen.X.EW, long, boolean):long");
    }

    private Pair<Integer, Long> A04(C9T c9t, boolean z) {
        int iA01;
        AbstractC08939z abstractC08939z = this.A05.A03;
        AbstractC08939z abstractC08939z2 = c9t.A02;
        if (abstractC08939z.A0E()) {
            return null;
        }
        if (abstractC08939z2.A0E()) {
            abstractC08939z2 = abstractC08939z;
        }
        try {
            Pair<Integer, Long> pairA07 = abstractC08939z2.A07(this.A0M, this.A0L, c9t.A00, c9t.A01);
            if (abstractC08939z == abstractC08939z2) {
                return pairA07;
            }
            int iA04 = abstractC08939z.A04(abstractC08939z2.A0A(((Integer) pairA07.first).intValue(), this.A0L, true).A03);
            if (iA04 != -1) {
                return Pair.create(Integer.valueOf(iA04), (Long) pairA07.second);
            }
            if (!z || (iA01 = A01(((Integer) pairA07.first).intValue(), abstractC08939z2, abstractC08939z)) == -1) {
                return null;
            }
            Pair<Integer, Long> pairA05 = A05(abstractC08939z, abstractC08939z.A09(iA01, this.A0L).A00, C.TIME_UNSET);
            String[] strArr = A0W;
            if (strArr[4].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[1] = "LZRu6qU1d7MAJxELkyp6D6bqJ9pCtQWv";
            strArr2[0] = "5OOlDtGsHYXmvjCA2lYHypc4I8JTMes9";
            return pairA05;
        } catch (IndexOutOfBoundsException unused) {
            throw new C9Y(abstractC08939z, c9t.A00, c9t.A01);
        }
    }

    private Pair<Integer, Long> A05(AbstractC08939z abstractC08939z, int i, long j) {
        return abstractC08939z.A07(this.A0M, this.A0L, i, j);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0V, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(bArrCopyOfRange);
    }

    private void A07() throws C9K, IOException {
        long jAG7 = this.A0P.AG7();
        A0I();
        if (!this.A0K.A0P()) {
            A0B();
            A0R(jAG7, 10L);
            return;
        }
        C08699a c08699aA0G = this.A0K.A0G();
        C1075Hu.A02(A06(150, 10, 20));
        A0J();
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        c08699aA0G.A08.A55(this.A05.A0A - this.A0D, this.A0S);
        boolean z = true;
        boolean z2 = true;
        for (XS xs : this.A0C) {
            xs.AEb(this.A03, jElapsedRealtime);
            boolean z3 = true;
            z = z && xs.A8q();
            boolean z4 = xs.A90() || xs.A8q() || A0s(xs);
            if (!z4) {
                xs.AA5();
            }
            if (!z2 || !z4) {
                z3 = false;
            }
            z2 = z3;
        }
        if (!z2) {
            A0B();
        }
        long j = c08699aA0G.A02.A01;
        if (z && ((j == C.TIME_UNSET || j <= this.A05.A0A) && c08699aA0G.A02.A05)) {
            A0N(4);
            A0H();
        } else if (this.A05.A00 == 2 && A0u(z2)) {
            A0N(3);
            if (this.A08) {
                A0G();
            }
        } else if (this.A05.A00 == 3) {
            int length = this.A0C.length;
            String[] strArr = A0W;
            if (strArr[4].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[4] = "Eggx5Ft4Lgnx6HVrotcHBkscR";
            strArr2[3] = "Urp4oA4mdP1paz0o5Y10JqXrCe";
            if (length != 0 ? !z2 : !A0q()) {
                this.A09 = this.A08;
                A0N(2);
                A0H();
            }
        }
        if (this.A05.A00 == 2) {
            for (XS xs2 : this.A0C) {
                xs2.AA5();
            }
        }
        boolean z5 = this.A08;
        if (A0W[7].charAt(9) != '8') {
            throw new RuntimeException();
        }
        A0W[5] = "rTELFOhgZqImPwKgVJI0nXuoysvpkaxO";
        if ((z5 && this.A05.A00 == 3) || this.A05.A00 == 2) {
            A0R(jAG7, 10L);
        } else if (this.A0C.length == 0 || this.A05.A00 == 4) {
            this.A0Q.AEY(2);
        } else {
            A0R(jAG7, 1000L);
        }
        C1075Hu.A00();
    }

    private void A08() {
        A0N(4);
        A0o(false, true, false);
    }

    private void A09() {
        C08699a c08699aA0F = this.A0K.A0F();
        long jA06 = c08699aA0F.A06();
        if (jA06 == Long.MIN_VALUE) {
            A0k(false);
            return;
        }
        boolean zAFX = this.A0J.AFX(jA06 - c08699aA0F.A08(this.A03), this.A0G.A7Z().A01);
        A0k(zAFX);
        if (zAFX) {
            c08699aA0F.A0F(this.A03);
        }
    }

    private void A0A() {
        if (this.A0I.A06(this.A05)) {
            this.A0E.obtainMessage(0, this.A0I.A01, this.A0I.A03 ? this.A0I.A00 : -1, this.A05).sendToTarget();
            this.A0I.A05(this.A05);
        }
    }

    private void A0B() throws IOException {
        C08699a c08699aA0F = this.A0K.A0F();
        C08699a c08699aA0H = this.A0K.A0H();
        if (c08699aA0F == null || c08699aA0F.A06) {
            return;
        }
        if (c08699aA0H == null || c08699aA0H.A01 == c08699aA0F) {
            XS[] xsArr = this.A0C;
            if (A0W[2].charAt(12) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A0W;
            strArr[4] = "M2PhxJTgTMxoek0nGdRGZ8ED7";
            strArr[3] = "JhH24KrsERDOvzAX41swXn1Uhz";
            for (XS xs : xsArr) {
                if (!xs.A8Q()) {
                    return;
                }
            }
            c08699aA0F.A08.AA3();
        }
    }

    private void A0C() throws IOException {
        this.A0K.A0M(this.A03);
        if (this.A0K.A0Q()) {
            C08709b c08709bA0I = this.A0K.A0I(this.A03, this.A05);
            if (c08709bA0I == null) {
                this.A07.AA4();
                return;
            }
            this.A0K.A0K(this.A0U, this.A0N, this.A0J.A5v(), this.A07, this.A05.A03.A0A(c08709bA0I.A04.A02, this.A0L, true).A03, c08709bA0I).ADu(this, c08709bA0I.A03);
            A0k(true);
        }
    }

    private void A0D() {
        A0o(true, true, true);
        this.A0J.ACg();
        A0N(1);
        this.A0F.quit();
        synchronized (this) {
            this.A0A = true;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0E() throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0962Dj.A0E():void");
    }

    private void A0F() {
        for (int size = this.A0R.size() - 1; size >= 0; size--) {
            if (!A0r(this.A0R.get(size))) {
                this.A0R.get(size).A03.A0A(false);
                this.A0R.remove(size);
            }
        }
        Collections.sort(this.A0R);
    }

    private void A0G() throws C9K {
        this.A09 = false;
        this.A0G.A05();
        for (XS xs : this.A0C) {
            xs.start();
        }
    }

    private void A0H() throws C9K {
        this.A0G.A06();
        for (XS xs : this.A0C) {
            A0c(xs);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0I() throws com.facebook.ads.redexgen.X.C9K, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0962Dj.A0I():void");
    }

    private void A0J() throws C9K {
        if (this.A0K.A0P()) {
            C08699a c08699aA0G = this.A0K.A0G();
            InterfaceC1419Vg interfaceC1419Vg = c08699aA0G.A08;
            if (A0W[6].length() != 17) {
                throw new RuntimeException();
            }
            A0W[7] = "e9etinPRA8BQH2CZknXr4yAbSJ3blA39";
            long jAED = interfaceC1419Vg.AED();
            if (jAED != C.TIME_UNSET) {
                A0P(jAED);
                if (jAED != this.A05.A0A) {
                    C08739e c08739e = this.A05;
                    this.A05 = c08739e.A04(c08739e.A04, jAED, this.A05.A01);
                    this.A0I.A04(4);
                }
            } else {
                long jA04 = this.A0G.A04();
                this.A03 = jA04;
                long jA08 = c08699aA0G.A08(jA04);
                A0Q(this.A05.A0A, jA08);
                this.A05.A0A = jA08;
            }
            this.A05.A09 = this.A0C.length == 0 ? c08699aA0G.A02.A01 : c08699aA0G.A0C(true);
        }
    }

    public static void A0K() {
        byte[] bArr = {68, 121, 110, 81, 109, 96, 120, 100, 115, 72, 108, 113, 109, 72, 111, 117, 100, 115, 111, 96, 109, 111, 82, 69, 122, 70, 75, 83, 79, 88, 99, 71, 90, 70, 99, 68, 94, 79, 88, 68, 75, 70, Ascii.DLE, 98, 75, 68, 78, 70, 79, 88, 66, 108, 101, 100, 121, 98, 101, 108, 43, 102, 110, 120, 120, 106, 108, 110, 120, 43, 120, 110, 101, Ascii.DEL, 43, 106, 109, Ascii.DEL, 110, 121, 43, 121, 110, 103, 110, 106, 120, 110, 37, 69, 98, 120, 105, 126, 98, 109, 96, 44, 126, 121, 98, 120, 101, 97, 105, 44, 105, 126, 126, 99, 126, 34, Ascii.CAN, 36, 41, 49, 42, 41, 43, 35, 104, 45, 58, 58, 39, 58, 102, 74, 118, 108, 107, 122, 124, 57, 124, 107, 107, 118, 107, 55, 72, 111, 116, 107, 59, 125, 122, 114, 119, 126, Ascii.DEL, 53, 90, 81, 109, 81, 83, 91, 105, 81, 76, 85};
        String[] strArr = A0W;
        if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
            throw new RuntimeException();
        }
        A0W[7] = "OuUcfGxYs8HKuxzYIQS3N8YCcqwYwO9D";
        A0V = bArr;
    }

    private void A0L(float f2) {
        for (C08699a c08699aA0E = this.A0K.A0E(); c08699aA0E != null; c08699aA0E = c08699aA0E.A01) {
            GS gs = c08699aA0E.A04;
            if (A0W[7].charAt(9) != '8') {
                throw new RuntimeException();
            }
            A0W[5] = "TmHCYSIZuHNmxK6kBnR58JopztOBcNrn";
            if (gs != null) {
                for (GO go : c08699aA0E.A04.A01.A01()) {
                    if (go != null) {
                        go.ACP(f2);
                    }
                }
            }
        }
    }

    private void A0M(int i) throws C9K {
        this.A02 = i;
        if (this.A0K.A0R(i)) {
            return;
        }
        A0j(true);
    }

    private void A0N(int i) {
        if (this.A05.A00 != i) {
            C08739e c08739eA02 = this.A05.A02(i);
            if (A0W[7].charAt(9) != '8') {
                throw new RuntimeException();
            }
            A0W[2] = "kM2qExU4ybhQ7HWfawBquzR2zjX0F4jA";
            this.A05 = c08739eA02;
        }
    }

    private void A0O(int i, boolean z, int i2) throws C9K {
        C08699a c08699aA0G = this.A0K.A0G();
        XS xs = this.A0T[i];
        this.A0C[i2] = xs;
        if (xs.A7t() == 0) {
            C08889t c08889t = c08699aA0G.A04.A03[i];
            String[] strArr = A0W;
            if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0W[2] = "NYdCxyfB4qBB5fQElsuicf6C6huVudSr";
            Format[] formatArrA0v = A0v(c08699aA0G.A04.A01.A00(i));
            boolean z2 = this.A08 && this.A05.A00 == 3;
            xs.A5Q(c08889t, formatArrA0v, c08699aA0G.A0A[i], this.A03, !z && z2, c08699aA0G.A07());
            this.A0G.A09(xs);
            if (z2) {
                xs.start();
            }
        }
    }

    private void A0P(long j) throws C9K {
        if (this.A0K.A0P()) {
            j = this.A0K.A0G().A09(j);
        }
        this.A03 = j;
        this.A0G.A07(j);
        for (XS xs : this.A0C) {
            xs.AEn(this.A03);
        }
    }

    private void A0Q(long j, long j2) throws C9K {
        if (this.A0R.isEmpty() || this.A05.A04.A01()) {
            return;
        }
        if (this.A05.A02 == j) {
            j--;
        }
        C08739e c08739e = this.A05;
        if (A0W[2].charAt(12) == 'N') {
            throw new RuntimeException();
        }
        A0W[2] = "iI9novLuZIFAEfCO4qiE3Y1J9OFTcxg5";
        int i = c08739e.A04.A02;
        int i2 = this.A00;
        C9R c9r = i2 > 0 ? this.A0R.get(i2 - 1) : null;
        while (c9r != null) {
            if (c9r.A00 <= i) {
                int i3 = c9r.A00;
                if (A0W[7].charAt(9) == '8') {
                    A0W[2] = "hDlIvL5rLgyE5VG4VUIth4YrdDyvlxxs";
                    if (i3 != i || c9r.A01 <= j) {
                        break;
                    }
                } else {
                    throw new RuntimeException();
                }
            }
            int i4 = this.A00 - 1;
            this.A00 = i4;
            c9r = i4 > 0 ? this.A0R.get(i4 - 1) : null;
        }
        C9R c9r2 = this.A00 < this.A0R.size() ? this.A0R.get(this.A00) : null;
        while (c9r2 != null && c9r2.A02 != null && (c9r2.A00 < i || (c9r2.A00 == i && c9r2.A01 <= j))) {
            int i5 = this.A00 + 1;
            this.A00 = i5;
            c9r2 = i5 < this.A0R.size() ? this.A0R.get(this.A00) : null;
        }
        while (c9r2 != null && c9r2.A02 != null && c9r2.A00 == i && c9r2.A01 > j && c9r2.A01 <= j2) {
            A0Z(c9r2.A03);
            if (c9r2.A03.A0B() || c9r2.A03.A0D()) {
                this.A0R.remove(this.A00);
            } else {
                this.A00++;
            }
            if (this.A00 < this.A0R.size()) {
                ArrayList<C9R> arrayList = this.A0R;
                int i6 = this.A00;
                if (A0W[5].charAt(1) == 'w') {
                    throw new RuntimeException();
                }
                A0W[6] = "2inRqgHKNmW90mXz8";
                c9r2 = arrayList.get(i6);
            } else {
                c9r2 = null;
            }
        }
    }

    private void A0R(long j, long j2) {
        this.A0Q.AEY(2);
        this.A0Q.AF3(2, j + j2);
    }

    private void A0S(C9Q c9q) throws C9K {
        if (c9q.A01 != this.A07) {
            return;
        }
        AbstractC08939z abstractC08939z = this.A05.A03;
        AbstractC08939z abstractC08939z2 = c9q.A00;
        Object obj = c9q.A02;
        this.A0K.A0N(abstractC08939z2);
        this.A05 = this.A05.A03(abstractC08939z2, obj);
        A0F();
        int i = this.A01;
        if (i > 0) {
            this.A0I.A03(i);
            this.A01 = 0;
            C9T c9t = this.A04;
            if (c9t != null) {
                Pair<Integer, Long> pairA04 = A04(c9t, true);
                this.A04 = null;
                if (pairA04 == null) {
                    A08();
                    return;
                }
                int iIntValue = ((Integer) pairA04.first).intValue();
                long jLongValue = ((Long) pairA04.second).longValue();
                EW ewA0L = this.A0K.A0L(iIntValue, jLongValue);
                this.A05 = this.A05.A04(ewA0L, ewA0L.A01() ? 0L : jLongValue, jLongValue);
                return;
            }
            if (this.A05.A02 == C.TIME_UNSET) {
                if (abstractC08939z2.A0E()) {
                    A08();
                    return;
                }
                Pair<Integer, Long> pairA05 = A05(abstractC08939z2, abstractC08939z2.A05(this.A0B), C.TIME_UNSET);
                int iIntValue2 = ((Integer) pairA05.first).intValue();
                long jLongValue2 = ((Long) pairA05.second).longValue();
                EW ewA0L2 = this.A0K.A0L(iIntValue2, jLongValue2);
                this.A05 = this.A05.A04(ewA0L2, ewA0L2.A01() ? 0L : jLongValue2, jLongValue2);
                return;
            }
            return;
        }
        int i2 = this.A05.A04.A02;
        long j = this.A05.A01;
        if (abstractC08939z.A0E()) {
            if (abstractC08939z2.A0E()) {
                return;
            }
            EW ewA0L3 = this.A0K.A0L(i2, j);
            this.A05 = this.A05.A04(ewA0L3, ewA0L3.A01() ? 0L : j, j);
            return;
        }
        C08699a c08699aA0E = this.A0K.A0E();
        int iA04 = abstractC08939z2.A04(c08699aA0E == null ? abstractC08939z.A0A(i2, this.A0L, true).A03 : c08699aA0E.A09);
        if (iA04 != -1) {
            if (iA04 != i2) {
                this.A05 = this.A05.A01(iA04);
            }
            EW ew = this.A05.A04;
            if (ew.A01()) {
                EW ewA0L4 = this.A0K.A0L(iA04, j);
                if (!ewA0L4.equals(ew)) {
                    this.A05 = this.A05.A04(ewA0L4, A02(ewA0L4, ewA0L4.A01() ? 0L : j), j);
                    return;
                }
            }
            if (this.A0K.A0U(ew, this.A03)) {
                return;
            }
            A0j(false);
            return;
        }
        int iA01 = A01(i2, abstractC08939z, abstractC08939z2);
        if (A0W[2].charAt(12) == 'N') {
            throw new RuntimeException();
        }
        String[] strArr = A0W;
        strArr[4] = "W6zkXP9eIZkyJx4uPbHf9NTX6";
        strArr[3] = "m3yrwIeXeqUIkhQgLJp1WNCsrl";
        if (iA01 == -1) {
            A08();
            return;
        }
        Pair<Integer, Long> pairA052 = A05(abstractC08939z2, abstractC08939z2.A09(iA01, this.A0L).A00, C.TIME_UNSET);
        int iIntValue3 = ((Integer) pairA052.first).intValue();
        long jLongValue3 = ((Long) pairA052.second).longValue();
        EW ewA0L5 = this.A0K.A0L(iIntValue3, jLongValue3);
        abstractC08939z2.A0A(iIntValue3, this.A0L, true);
        if (c08699aA0E != null) {
            Object obj2 = this.A0L.A03;
            c08699aA0E.A02 = c08699aA0E.A02.A00(-1);
            while (c08699aA0E.A01 != null) {
                c08699aA0E = c08699aA0E.A01;
                if (c08699aA0E.A09.equals(obj2)) {
                    C08719c c08719c = this.A0K;
                    C08709b c08709b = c08699aA0E.A02;
                    if (A0W[2].charAt(12) == 'N') {
                        throw new RuntimeException();
                    }
                    A0W[5] = "ODoCru5Men7rnsumvsVlRJsOWyiHNrdt";
                    c08699aA0E.A02 = c08719c.A0J(c08709b, iIntValue3);
                } else {
                    c08699aA0E.A02 = c08699aA0E.A02.A00(-1);
                }
            }
        }
        boolean zA01 = ewA0L5.A01();
        if (A0W[6].length() != 17) {
            throw new RuntimeException();
        }
        A0W[7] = "hRbRvIJE18IQkSZp4h0fxN12mLMfZDhd";
        this.A05 = this.A05.A04(ewA0L5, A02(ewA0L5, zA01 ? 0L : jLongValue3), jLongValue3);
    }

    private void A0T(C9T c9t) throws Throwable {
        long jLongValue;
        EW ewA0L;
        long jLongValue2;
        boolean z;
        this.A0I.A03(1);
        Pair<Integer, Long> pairA04 = A04(c9t, true);
        if (pairA04 == null) {
            ewA0L = new EW(A00());
            jLongValue2 = C.TIME_UNSET;
            jLongValue = C.TIME_UNSET;
            z = true;
        } else {
            int iIntValue = ((Integer) pairA04.first).intValue();
            jLongValue = ((Long) pairA04.second).longValue();
            ewA0L = this.A0K.A0L(iIntValue, jLongValue);
            if (ewA0L.A01()) {
                jLongValue2 = 0;
                z = true;
            } else {
                jLongValue2 = ((Long) pairA04.second).longValue();
                z = c9t.A01 == C.TIME_UNSET;
            }
        }
        try {
            try {
                if (this.A07 != null && this.A01 <= 0) {
                    if (A0W[5].charAt(1) != 'w') {
                        A0W[5] = "YfoxJXVxtggAgJ3C0qUN5WGXkfVCteCk";
                        try {
                            if (jLongValue2 == C.TIME_UNSET) {
                                A0N(4);
                                A0o(false, true, false);
                            } else {
                                long jA5s = jLongValue2;
                                if (ewA0L.equals(this.A05.A04)) {
                                    C08699a c08699aA0G = this.A0K.A0G();
                                    if (c08699aA0G != null && jA5s != 0) {
                                        jA5s = c08699aA0G.A08.A5s(jA5s, this.A06);
                                    }
                                    if (C9E.A01(jA5s) == C9E.A01(this.A05.A0A)) {
                                        this.A05 = this.A05.A04(ewA0L, this.A05.A0A, jLongValue);
                                        if (z) {
                                            this.A0I.A04(2);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                long jA02 = A02(ewA0L, jA5s);
                                z |= jLongValue2 != jA02;
                                if (A0W[6].length() == 17) {
                                    A0W[7] = "LtwUHLpv08wEzos7LWvR75PA6MqqEvuh";
                                    jLongValue2 = jA02;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            this.A05 = this.A05.A04(ewA0L, jLongValue2, jLongValue);
                            if (z) {
                                this.A0I.A04(2);
                            }
                            throw th;
                        }
                    }
                    throw new RuntimeException();
                }
                this.A04 = c9t;
                this.A05 = this.A05.A04(ewA0L, jLongValue2, jLongValue);
                if (z) {
                    C9S c9s = this.A0I;
                    String[] strArr = A0W;
                    if (strArr[4].length() == strArr[3].length()) {
                        c9s.A04(2);
                    } else {
                        A0W[6] = "NnvGpWmx2ly54VvtA";
                        c9s.A04(2);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void A0V(C08699a c08699a) throws C9K {
        C08699a c08699aA0G = this.A0K.A0G();
        if (c08699aA0G == null || c08699a == c08699aA0G) {
            return;
        }
        int i = 0;
        boolean[] zArr = new boolean[this.A0T.length];
        int i2 = 0;
        while (true) {
            XS[] xsArr = this.A0T;
            if (i2 >= xsArr.length) {
                this.A05 = this.A05.A05(c08699aA0G.A03, c08699aA0G.A04);
                A0p(zArr, i);
                return;
            }
            XS xs = xsArr[i2];
            zArr[i2] = xs.A7t() != 0;
            if (c08699aA0G.A04.A00(i2)) {
                i++;
            }
            if (zArr[i2] && (!c08699aA0G.A04.A00(i2) || (xs.A8n() && xs.A7w() == c08699a.A0A[i2]))) {
                A0b(xs);
            }
            i2++;
        }
    }

    private void A0W(C08749f c08749f) {
        this.A0G.AFP(c08749f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0X(C08859q c08859q) throws C9K {
        if (c08859q.A0D()) {
            return;
        }
        try {
            c08859q.A04().A8L(c08859q.A00(), c08859q.A09());
            c08859q.A0A(true);
            String[] strArr = A0W;
            if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[4] = "j7cBoz179DrNpy3qD7RptXNd9";
            strArr2[3] = "0iwSWX3dM4PAnuiRq1LulMUFPW";
        } catch (Throwable th) {
            c08859q.A0A(true);
            throw th;
        }
    }

    private void A0Y(C08859q c08859q) throws C9K {
        if (c08859q.A02() == C.TIME_UNSET) {
            A0Z(c08859q);
            return;
        }
        if (this.A07 == null || this.A01 > 0) {
            this.A0R.add(new C9R(c08859q));
            return;
        }
        C9R c9r = new C9R(c08859q);
        if (!A0r(c9r)) {
            c08859q.A0A(false);
        } else {
            this.A0R.add(c9r);
            Collections.sort(this.A0R);
        }
    }

    private void A0Z(C08859q c08859q) throws C9K {
        if (c08859q.A03().getLooper() != this.A0Q.A7D()) {
            this.A0Q.AAH(15, c08859q).sendToTarget();
            return;
        }
        A0X(c08859q);
        C08739e c08739e = this.A05;
        if (A0W[6].length() != 17) {
            throw new RuntimeException();
        }
        A0W[5] = "cBEQE15IFXZqMCE104UHZMDgeC8qTiqN";
        if (c08739e.A00 == 3 || this.A05.A00 == 2) {
            this.A0Q.AF2(2);
        }
    }

    private void A0a(final C08859q c08859q) {
        c08859q.A03().post(new Runnable() { // from class: com.facebook.ads.redexgen.X.9P
            public static byte[] A02;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{-60, -9, -18, -49, -21, -32, -8, -28, -15, -56, -20, -17, -21, -56, -19, -13, -28, -15, -19, -32, -21, -52, -27, -36, -17, -25, -36, -38, -21, -36, -37, -105, -36, -23, -23, -26, -23, -105, -37, -36, -29, -32, -19, -36, -23, -32, -27, -34, -105, -28, -36, -22, -22, -40, -34, -36, -105, -26, -27, -105, -36, -17, -21, -36, -23, -27, -40, -29, -105, -21, -33, -23, -36, -40, -37, -91};
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (K0.A02(this)) {
                    return;
                }
                try {
                    try {
                        this.A00.A0X(c08859q);
                    } catch (C9K e2) {
                        Log.e(A00(0, 21, 113), A00(21, 55, 105), e2);
                        throw new RuntimeException(e2);
                    }
                } catch (Throwable th) {
                    K0.A00(th, this);
                }
            }
        });
    }

    private void A0b(XS xs) throws C9K {
        this.A0G.A08(xs);
        A0c(xs);
        xs.A53();
    }

    private void A0c(XS xs) throws C9K {
        if (xs.A7t() == 2) {
            xs.stop();
        }
    }

    private void A0d(C08909v c08909v) {
        this.A06 = c08909v;
    }

    private void A0e(InterfaceC1419Vg interfaceC1419Vg) {
        if (this.A0K.A0T(interfaceC1419Vg)) {
            this.A0K.A0M(this.A03);
            A09();
        }
    }

    private void A0f(InterfaceC1419Vg interfaceC1419Vg) throws C9K {
        if (this.A0K.A0T(interfaceC1419Vg)) {
            C08699a c08699aA0F = this.A0K.A0F();
            c08699aA0F.A0E(this.A0G.A7Z().A01);
            A0i(c08699aA0F.A03, c08699aA0F.A04);
            if (!this.A0K.A0P()) {
                A0P(this.A0K.A0C().A02.A03);
                A0V(null);
            }
            A09();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0999Eu
    /* JADX INFO: renamed from: A0g, reason: merged with bridge method [inline-methods] */
    public final void AAx(InterfaceC1419Vg interfaceC1419Vg) {
        this.A0Q.AAH(10, interfaceC1419Vg).sendToTarget();
    }

    private void A0h(EY ey, boolean z, boolean z2) {
        this.A01++;
        A0o(true, z, z2);
        this.A0J.onPrepared();
        this.A07 = ey;
        A0N(2);
        ey.ADx(this.A0H, true, this);
        this.A0Q.AF2(2);
    }

    private void A0i(TrackGroupArray trackGroupArray, GS gs) {
        this.A0J.ADD(this.A0T, trackGroupArray, gs.A01);
    }

    private void A0j(boolean z) throws C9K {
        EW ew = this.A0K.A0G().A02.A04;
        long jA03 = A03(ew, this.A05.A0A, true);
        if (jA03 != this.A05.A0A) {
            C08739e c08739e = this.A05;
            this.A05 = c08739e.A04(ew, jA03, c08739e.A01);
            if (z) {
                this.A0I.A04(4);
            }
        }
    }

    private void A0k(boolean z) {
        if (this.A05.A08 != z) {
            this.A05 = this.A05.A06(z);
        }
    }

    private void A0l(boolean z) throws C9K {
        this.A09 = false;
        this.A08 = z;
        if (!z) {
            A0H();
            A0J();
        } else if (this.A05.A00 == 3) {
            A0G();
            this.A0Q.AF2(2);
        } else if (this.A05.A00 == 2) {
            this.A0Q.AF2(2);
        }
    }

    private void A0m(boolean z) throws C9K {
        this.A0B = z;
        if (this.A0K.A0V(z)) {
            return;
        }
        A0j(true);
    }

    private void A0n(boolean z, boolean z2) {
        A0o(true, z, z);
        this.A0I.A03(this.A01 + (z2 ? 1 : 0));
        this.A01 = 0;
        this.A0J.AD4();
        A0N(1);
    }

    private void A0o(boolean z, boolean z2, boolean z3) {
        EY ey;
        this.A0Q.AEY(2);
        this.A09 = false;
        this.A0G.A06();
        this.A03 = 0L;
        for (XS xs : this.A0C) {
            try {
                A0b(xs);
            } catch (C9K | RuntimeException e2) {
                Log.e(A06(0, 21, 43), A06(138, 12, 49), e2);
            }
        }
        this.A0C = new XS[0];
        this.A0K.A0O(!z2);
        A0k(false);
        if (z2) {
            this.A04 = null;
        }
        if (z3) {
            this.A0K.A0N(AbstractC08939z.A01);
            Iterator<C9R> it = this.A0R.iterator();
            while (it.hasNext()) {
                it.next().A03.A0A(false);
            }
            this.A0R.clear();
            this.A00 = 0;
        }
        AbstractC08939z abstractC08939z = z3 ? AbstractC08939z.A01 : this.A05.A03;
        Object obj = z3 ? null : this.A05.A07;
        EW ew = z2 ? new EW(A00()) : this.A05.A04;
        long j = C.TIME_UNSET;
        long j2 = z2 ? -9223372036854775807L : this.A05.A0A;
        if (!z2) {
            j = this.A05.A01;
        }
        this.A05 = new C08739e(abstractC08939z, obj, ew, j2, j, this.A05.A00, false, z3 ? TrackGroupArray.A04 : this.A05.A05, z3 ? this.A0O : this.A05.A06);
        if (!z || (ey = this.A07) == null) {
            return;
        }
        ey.AEV(this);
        this.A07 = null;
    }

    private void A0p(boolean[] zArr, int i) throws C9K {
        this.A0C = new XS[i];
        int i2 = 0;
        C08699a c08699aA0G = this.A0K.A0G();
        for (int i3 = 0; i3 < this.A0T.length; i3++) {
            if (c08699aA0G.A04.A00(i3)) {
                A0O(i3, zArr[i3], i2);
                i2++;
            }
        }
    }

    private boolean A0q() {
        C08699a c08699aA0G = this.A0K.A0G();
        long j = c08699aA0G.A02.A01;
        if (j != C.TIME_UNSET && this.A05.A0A >= j) {
            C08699a c08699a = c08699aA0G.A01;
            if (A0W[7].charAt(9) != '8') {
                throw new RuntimeException();
            }
            String[] strArr = A0W;
            strArr[1] = "YaIhV2LltIG4HuclCS5WOO9hjwkCXeMt";
            strArr[0] = "X0pypN8zwLPsNLuJVHuHfetSc0yM8k9B";
            if (c08699a == null || (!c08699aA0G.A01.A06 && !c08699aA0G.A01.A02.A04.A01())) {
                return false;
            }
        }
        return true;
    }

    private boolean A0r(C9R c9r) {
        if (c9r.A02 == null) {
            Pair<Integer, Long> pairA04 = A04(new C9T(c9r.A03.A08(), c9r.A03.A01(), C9E.A00(c9r.A03.A02())), false);
            if (pairA04 == null) {
                return false;
            }
            int iIntValue = ((Integer) pairA04.first).intValue();
            long jLongValue = ((Long) pairA04.second).longValue();
            AbstractC08939z abstractC08939z = this.A05.A03;
            Integer num = (Integer) pairA04.first;
            String[] strArr = A0W;
            if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0W[6] = "Qe4SjxIsSBa3x6HAW";
            c9r.A01(iIntValue, jLongValue, abstractC08939z.A0A(num.intValue(), this.A0L, true).A03);
        } else {
            int iA04 = this.A05.A03.A04(c9r.A02);
            if (iA04 == -1) {
                return false;
            }
            c9r.A00 = iA04;
        }
        return true;
    }

    private boolean A0s(XS xs) {
        C08699a c08699aA0H = this.A0K.A0H();
        return c08699aA0H.A01 != null && c08699aA0H.A01.A06 && xs.A8Q();
    }

    private boolean A0t(EW ew, long j, C08699a c08699a) {
        if (!ew.equals(c08699a.A02.A04) || !c08699a.A06) {
            return false;
        }
        this.A05.A03.A09(c08699a.A02.A04.A02, this.A0L);
        int iA04 = this.A0L.A04(j);
        return iA04 == -1 || this.A0L.A09(iA04) == c08699a.A02.A02;
    }

    private boolean A0u(boolean z) {
        if (this.A0C.length == 0) {
            return A0q();
        }
        if (!z) {
            return false;
        }
        if (!this.A05.A08) {
            return true;
        }
        C08699a c08699aA0F = this.A0K.A0F();
        long jA0C = c08699aA0F.A0C(!c08699aA0F.A02.A05);
        return jA0C == Long.MIN_VALUE || this.A0J.AFa(jA0C - c08699aA0F.A08(this.A03), this.A0G.A7Z().A01, this.A09);
    }

    public static Format[] A0v(GO go) {
        int length = go != null ? go.length() : 0;
        Format[] formatArr = new Format[length];
        String[] strArr = A0W;
        if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0W;
        strArr2[4] = "X04sVE4WijYjotgv6w3bASzS6";
        strArr2[3] = "U1jCIvxI6fY8JZE6Ili1DHAvIg";
        for (int i = 0; i < length; i++) {
            formatArr[i] = go.A6z(i);
        }
        return formatArr;
    }

    public final Looper A0w() {
        return this.A0F.getLooper();
    }

    public final synchronized void A0x() {
        if (this.A0A) {
            return;
        }
        this.A0Q.AF2(7);
        boolean z = false;
        while (!this.A0A) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final void A0y(AbstractC08939z abstractC08939z, int i, long j) {
        this.A0Q.AAH(3, new C9T(abstractC08939z, i, j)).sendToTarget();
    }

    public final void A0z(EY ey, boolean z, boolean z2) {
        this.A0Q.AAG(0, z ? 1 : 0, z2 ? 1 : 0, ey).sendToTarget();
    }

    public final void A10(boolean z) {
        this.A0Q.AAF(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void A11(boolean z) {
        this.A0Q.AAF(6, z ? 1 : 0, 0).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.C9H
    public final void ACO(C08749f c08749f) {
        this.A0E.obtainMessage(1, c08749f).sendToTarget();
        A0L(c08749f.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1420Vh
    public final void ACW(InterfaceC1419Vg interfaceC1419Vg) {
        this.A0Q.AAH(9, interfaceC1419Vg).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.EX
    public final void ACz(EY ey, AbstractC08939z abstractC08939z, Object obj) {
        this.A0Q.AAH(8, new C9Q(ey, abstractC08939z, obj)).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08839o
    public final synchronized void AF4(C08859q c08859q) {
        if (!this.A0A) {
            this.A0Q.AAH(14, c08859q).sendToTarget();
        } else {
            Log.w(A06(0, 21, 43), A06(50, 37, 33));
            c08859q.A0A(false);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        String strA06 = A06(0, 21, 43);
        try {
            switch (message.what) {
                case 0:
                    A0h((EY) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    A0l(message.arg1 != 0);
                    break;
                case 2:
                    A07();
                    break;
                case 3:
                    A0T((C9T) message.obj);
                    break;
                case 4:
                    A0W((C08749f) message.obj);
                    break;
                case 5:
                    A0d((C08909v) message.obj);
                    break;
                case 6:
                    A0n(message.arg1 != 0, true);
                    break;
                case 7:
                    A0D();
                    return true;
                case 8:
                    A0S((C9Q) message.obj);
                    break;
                case 9:
                    A0f((InterfaceC1419Vg) message.obj);
                    break;
                case 10:
                    A0e((InterfaceC1419Vg) message.obj);
                    break;
                case 11:
                    A0E();
                    break;
                case 12:
                    A0M(message.arg1);
                    break;
                case 13:
                    A0m(message.arg1 != 0);
                    break;
                case 14:
                    A0Y((C08859q) message.obj);
                    break;
                case 15:
                    A0a((C08859q) message.obj);
                    break;
                default:
                    return false;
            }
            A0A();
        } catch (C9K e2) {
            Log.e(strA06, A06(110, 15, 98), e2);
            A0n(false, false);
            this.A0E.obtainMessage(2, e2).sendToTarget();
            A0A();
        } catch (IOException e3) {
            Log.e(strA06, A06(125, 13, 51), e3);
            A0n(false, false);
            this.A0E.obtainMessage(2, C9K.A00(e3)).sendToTarget();
            A0A();
        } catch (RuntimeException e4) {
            Log.e(strA06, A06(87, 23, 38), e4);
            A0n(false, false);
            this.A0E.obtainMessage(2, C9K.A02(e4)).sendToTarget();
            A0A();
        }
        return true;
    }
}
