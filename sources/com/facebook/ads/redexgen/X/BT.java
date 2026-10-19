package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class BT implements InterfaceC1419Vg, InterfaceC0922Bc, InterfaceC1043Go<C1423Vk>, InterfaceC1046Gr, InterfaceC0997Es {
    public static byte[] A0c;
    public static String[] A0d = {"uM3", "HhtEoeszujhq2hqW803X6wAUFNr2yIvk", "llgRlYE2HHrDKVr9Tlv1gg4sawaKL", "gd26Zevc0BeMQVnsPvgEWj4kMHitbDqE", "B56DgxYfwXnRdFUWoxgY8ZwWxUmrPQlR", "o6X9hbG4Io42IRbcZylLcsRNIhbJFPRA", "SBfu1SOz9uKNnyoy8", "5PtJb97AhuhjIJJCziWFyl83Esr9CMYA"};
    public int A00;
    public int A01;
    public int A02;
    public long A04;
    public InterfaceC0927Bj A07;
    public InterfaceC1420Vh A08;
    public TrackGroupArray A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean[] A0L;
    public boolean[] A0M;
    public boolean[] A0N;
    public final int A0O;
    public final long A0P;
    public final Uri A0Q;
    public final ES A0S;
    public final ET A0T;
    public final C0988Ej A0U;
    public final GU A0V;
    public final InterfaceC1033Gc A0W;
    public final String A0b;
    public final V6 A0X = new V6(A07(0, 27, 27));
    public final HO A0Y = new HO();
    public final Runnable A0Z = new EQ(this);
    public final Runnable A0a = new ER(this);
    public final Handler A0R = new Handler();
    public int[] A0J = new int[0];
    public C1418Vf[] A0K = new C1418Vf[0];
    public long A06 = C.TIME_UNSET;
    public long A05 = -1;
    public long A03 = C.TIME_UNSET;

    static {
        A0B();
    }

    public BT(Uri uri, InterfaceC1033Gc interfaceC1033Gc, InterfaceC0920Ba[] interfaceC0920BaArr, int i, C0988Ej c0988Ej, ET et, GU gu, String str, int i2) {
        this.A0Q = uri;
        this.A0W = interfaceC1033Gc;
        this.A0O = i;
        this.A0U = c0988Ej;
        this.A0T = et;
        this.A0V = gu;
        this.A0b = str;
        this.A0P = i2;
        this.A0S = new ES(interfaceC0920BaArr, this);
        this.A00 = i == -1 ? 3 : i;
        c0988Ej.A03();
    }

    private int A00() {
        int iA0C = 0;
        for (C1418Vf c1418Vf : this.A0K) {
            iA0C += c1418Vf.A0C();
        }
        return iA0C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1043Go
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final int ABs(C1423Vk c1423Vk, long j, long j2, IOException iOException) {
        boolean zA0N = A0N(iOException);
        this.A0U.A0H(c1423Vk.A03, 1, -1, null, 0, null, c1423Vk.A02, this.A03, j, j2, c1423Vk.A00, iOException, zA0N);
        A0E(c1423Vk);
        if (zA0N) {
            return 3;
        }
        int iA00 = A00();
        boolean z = iA00 > this.A02;
        if (A0L(c1423Vk, iA00)) {
            return z ? 1 : 0;
        }
        return 2;
    }

    private long A02() {
        long jMax = Long.MIN_VALUE;
        for (C1418Vf c1418Vf : this.A0K) {
            jMax = Math.max(jMax, c1418Vf.A0F());
        }
        return jMax;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0c, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        if (this.A0G || this.A0F || this.A07 == null || !this.A0H) {
            return;
        }
        for (C1418Vf c1418Vf : this.A0K) {
            if (c1418Vf.A0G() == null) {
                return;
            }
        }
        this.A0Y.A01();
        int length = this.A0K.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        this.A0N = new boolean[length];
        this.A0L = new boolean[length];
        this.A0M = new boolean[length];
        this.A03 = this.A07.A6k();
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                break;
            }
            Format formatA0G = this.A0K[i].A0G();
            trackGroupArr[i] = new TrackGroup(formatA0G);
            String str = formatA0G.A0O;
            if (!C1055Ha.A0B(str) && !C1055Ha.A09(str)) {
                z = false;
            }
            this.A0N[i] = z;
            this.A0A |= z;
            i++;
        }
        this.A09 = new TrackGroupArray(trackGroupArr);
        if (this.A0O == -1 && this.A05 == -1 && this.A07.A6k() == C.TIME_UNSET) {
            String[] strArr = A0d;
            if (strArr[4].charAt(19) == strArr[5].charAt(19)) {
                throw new RuntimeException();
            }
            A0d[2] = "7a3gC0RfnKvRSexgB6r2d4KLSEZ";
            this.A00 = 6;
        }
        this.A0F = true;
        this.A0T.ACy(this.A03, this.A07.A95());
        this.A08.ACW(this);
    }

    private void A0A() {
        C1423Vk c1423Vk = new C1423Vk(this, this.A0Q, this.A0W, this.A0S, this.A0Y);
        if (this.A0F) {
            HI.A04(A0I());
            long j = this.A03;
            if (j != C.TIME_UNSET && this.A06 >= j) {
                this.A0B = true;
                this.A06 = C.TIME_UNSET;
                return;
            } else {
                c1423Vk.A04(this.A07.A7l(this.A06).A00.A00, this.A06);
                this.A06 = C.TIME_UNSET;
            }
        }
        this.A02 = A00();
        this.A0U.A0E(c1423Vk.A03, 1, -1, null, 0, null, c1423Vk.A02, this.A03, this.A0X.A04(c1423Vk, this, this.A00));
    }

    public static void A0B() {
        A0c = new byte[]{78, 109, 99, 102, 103, 112, 56, 71, 122, 118, 112, 99, 97, 118, 109, 112, 79, 103, 102, 107, 99, 82, 103, 112, 107, 109, 102};
    }

    private void A0C(int i) {
        if (this.A0M[i]) {
            return;
        }
        Format formatA01 = this.A09.A01(i).A01(0);
        this.A0U.A06(C1055Ha.A01(formatA01.A0O), formatA01, 0, null, this.A04);
        boolean[] zArr = this.A0M;
        if (A0d[2].length() == 31) {
            throw new RuntimeException();
        }
        A0d[2] = "eh27oOHcwVOmHzYfi8kDTS";
        zArr[i] = true;
    }

    private void A0D(int i) {
        if (this.A0E && this.A0N[i] && !this.A0K[i].A0M()) {
            String[] strArr = A0d;
            if (strArr[7].charAt(26) != strArr[1].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0d;
            strArr2[6] = "sgNFiq5UDquEcD4Be";
            strArr2[0] = "0a9";
            this.A06 = 0L;
            this.A0E = false;
            this.A0D = true;
            this.A04 = 0L;
            this.A02 = 0;
            for (C1418Vf c1418Vf : this.A0K) {
                c1418Vf.A0I();
            }
            this.A08.AAx(this);
        }
    }

    private void A0E(C1423Vk c1423Vk) {
        if (this.A05 == -1) {
            this.A05 = c1423Vk.A01;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1043Go
    /* JADX INFO: renamed from: A0F, reason: merged with bridge method [inline-methods] */
    public final void ABr(C1423Vk c1423Vk, long j, long j2) {
        if (this.A03 == C.TIME_UNSET) {
            long jA02 = A02();
            long j3 = jA02 == Long.MIN_VALUE ? 0L : 10000 + jA02;
            this.A03 = j3;
            this.A0T.ACy(j3, this.A07.A95());
        }
        this.A0U.A0G(c1423Vk.A03, 1, -1, null, 0, null, c1423Vk.A02, this.A03, j, j2, c1423Vk.A00);
        A0E(c1423Vk);
        this.A0B = true;
        this.A08.AAx(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1043Go
    /* JADX INFO: renamed from: A0G, reason: merged with bridge method [inline-methods] */
    public final void ABp(C1423Vk c1423Vk, long j, long j2, boolean z) {
        this.A0U.A0F(c1423Vk.A03, 1, -1, null, 0, null, c1423Vk.A02, this.A03, j, j2, c1423Vk.A00);
        if (z) {
            return;
        }
        A0E(c1423Vk);
        for (C1418Vf c1418Vf : this.A0K) {
            c1418Vf.A0I();
        }
        if (this.A01 > 0) {
            this.A08.AAx(this);
        }
    }

    private boolean A0I() {
        return this.A06 != C.TIME_UNSET;
    }

    private boolean A0J() {
        return this.A0D || A0I();
    }

    private boolean A0K(long j) {
        int length = this.A0K.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                return true;
            }
            C1418Vf c1418Vf = this.A0K[i];
            c1418Vf.A0J();
            if (!(c1418Vf.A0D(j, true, false) != -1)) {
                if (this.A0N[i]) {
                    break;
                }
                boolean z = this.A0A;
                String[] strArr = A0d;
                if (strArr[4].charAt(19) == strArr[5].charAt(19)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0d;
                strArr2[7] = "iCn5X7g6PoYVWCe4GwpQYWYt9drfTGBT";
                strArr2[1] = "IDd3eJ2NBG0wgz78gdspZyWtrcrofueQ";
                if (!z) {
                    break;
                }
            }
            i++;
        }
        return false;
    }

    private boolean A0L(C1423Vk c1423Vk, int i) {
        InterfaceC0927Bj interfaceC0927Bj;
        if (this.A05 != -1 || ((interfaceC0927Bj = this.A07) != null && interfaceC0927Bj.A6k() != C.TIME_UNSET)) {
            this.A02 = i;
            if (A0d[2].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0d;
            strArr[6] = "F1SGTXFlfQdsRtCv2";
            strArr[0] = "c29";
            return true;
        }
        if (this.A0F && !A0J()) {
            this.A0E = true;
            return false;
        }
        this.A0D = this.A0F;
        this.A04 = 0L;
        this.A02 = 0;
        for (C1418Vf c1418Vf : this.A0K) {
            c1418Vf.A0I();
        }
        c1423Vk.A04(0L, 0L);
        return true;
    }

    public static boolean A0N(IOException iOException) {
        return iOException instanceof C1416Vd;
    }

    public final int A0O(int i, long j) {
        int iA0D;
        if (A0J()) {
            return 0;
        }
        C1418Vf c1418Vf = this.A0K[i];
        if (!this.A0B || j <= c1418Vf.A0F()) {
            iA0D = c1418Vf.A0D(j, true, true);
            String[] strArr = A0d;
            if (strArr[4].charAt(19) == strArr[5].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0d;
            strArr2[6] = "NIYG9FQCzFZSe10IE";
            strArr2[0] = "6cN";
            if (iA0D == -1) {
                iA0D = 0;
            }
        } else {
            iA0D = c1418Vf.A0A();
        }
        if (iA0D > 0) {
            A0C(i);
        } else {
            A0D(i);
        }
        return iA0D;
    }

    public final int A0P(int i, C9X c9x, XE xe, boolean z) {
        if (A0J()) {
            return -3;
        }
        int iA0E = this.A0K[i].A0E(c9x, xe, z, this.A0B, this.A04);
        if (iA0E == -4) {
            A0C(i);
        } else if (iA0E == -3) {
            A0D(i);
        }
        return iA0E;
    }

    public final void A0Q() throws IOException {
        this.A0X.A06(this.A00);
    }

    public final void A0R() {
        if (this.A0F) {
            for (C1418Vf c1418Vf : this.A0K) {
                c1418Vf.A0H();
            }
        }
        this.A0X.A07(this);
        this.A0R.removeCallbacksAndMessages(null);
        this.A08 = null;
        this.A0G = true;
        this.A0U.A04();
    }

    public final boolean A0S(int i) {
        return !A0J() && (this.A0B || this.A0K[i].A0M());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final boolean A4Q(long j) {
        if (this.A0B || this.A0E) {
            return false;
        }
        if (this.A0F && this.A01 == 0) {
            return false;
        }
        boolean zA02 = this.A0Y.A02();
        if (this.A0X.A08()) {
            return zA02;
        }
        A0A();
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void A55(long j, boolean z) {
        int length = this.A0K.length;
        for (int i = 0; i < length; i++) {
            this.A0K[i].A0K(j, z, this.A0L[i]);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0922Bc
    public final void A5T() {
        this.A0H = true;
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A5s(long j, C08909v c08909v) {
        if (!this.A07.A95()) {
            return 0L;
        }
        C0926Bi c0926BiA7l = this.A07.A7l(j);
        return C1078Hx.A0I(j, c08909v, c0926BiA7l.A00.A01, c0926BiA7l.A01.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A68() {
        long jA02;
        if (this.A0B) {
            return Long.MIN_VALUE;
        }
        if (A0I()) {
            long j = this.A06;
            String[] strArr = A0d;
            if (strArr[7].charAt(26) != strArr[1].charAt(26)) {
                throw new RuntimeException();
            }
            A0d[3] = "ld4wWqv9tK9nTvU7QEEl8vpde5wWqGSi";
            return j;
        }
        if (this.A0A) {
            jA02 = Long.MAX_VALUE;
            int length = this.A0K.length;
            for (int i = 0; i < length; i++) {
                if (this.A0N[i]) {
                    jA02 = Math.min(jA02, this.A0K[i].A0F());
                }
            }
        } else {
            jA02 = A02();
        }
        return jA02 == Long.MIN_VALUE ? this.A04 : jA02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A7M() {
        if (this.A01 == 0) {
            return Long.MIN_VALUE;
        }
        return A68();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final TrackGroupArray A82() {
        return this.A09;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void AA3() throws IOException {
        A0Q();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1046Gr
    public final void ABw() {
        for (C1418Vf c1418Vf : this.A0K) {
            c1418Vf.A0I();
        }
        this.A0S.A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0997Es
    public final void ADI(Format format) {
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void ADu(InterfaceC1420Vh interfaceC1420Vh, long j) {
        this.A08 = interfaceC1420Vh;
        this.A0Y.A02();
        A0A();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long AED() {
        if (!this.A0C) {
            this.A0U.A05();
            this.A0C = true;
        }
        boolean z = this.A0D;
        String[] strArr = A0d;
        if (strArr[6].length() != strArr[0].length()) {
            A0d[2] = "";
            if (z && (this.A0B || A00() > this.A02)) {
                this.A0D = false;
                return this.A04;
            }
            String[] strArr2 = A0d;
            if (strArr2[7].charAt(26) == strArr2[1].charAt(26)) {
                String[] strArr3 = A0d;
                strArr3[4] = "a8TiTKBNhx8jXxPRrcAgh1BUcIw96G2f";
                strArr3[5] = "NHpS1UqcJuZi4hHtySMRiLK65X8yfSYb";
                return C.TIME_UNSET;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void AEK(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0922Bc
    public final void AEx(InterfaceC0927Bj interfaceC0927Bj) {
        this.A07 = interfaceC0927Bj;
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long AF0(long j) {
        if (!this.A07.A95()) {
            j = 0;
        }
        this.A04 = j;
        this.A0D = false;
        if (!A0I()) {
            boolean zA0K = A0K(j);
            String[] strArr = A0d;
            if (strArr[4].charAt(19) == strArr[5].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0d;
            strArr2[4] = "4t4h1X84Q9aXzP6i3O1IFqP61fZwJyic";
            strArr2[5] = "YchhDxV7HDCpyjRy2lVbypcIuIxdt4SR";
            if (zA0K) {
                return j;
            }
        }
        this.A0E = false;
        this.A06 = j;
        this.A0B = false;
        if (this.A0X.A08()) {
            this.A0X.A05();
        } else {
            for (C1418Vf c1418Vf : this.A0K) {
                c1418Vf.A0I();
            }
        }
        return j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long AF1(GO[] goArr, boolean[] zArr, InterfaceC0998Et[] interfaceC0998EtArr, boolean[] zArr2, long j) {
        HI.A04(this.A0F);
        int i = this.A01;
        int i2 = 0;
        while (true) {
            int i3 = 0;
            if (i2 >= goArr.length) {
                boolean z = !this.A0I ? j == 0 : i != 0;
                for (int i4 = 0; i4 < goArr.length; i4++) {
                    if (interfaceC0998EtArr[i4] == null && goArr[i4] != null) {
                        GO go = goArr[i4];
                        HI.A04(go.length() == 1);
                        HI.A04(go.A75(0) == 0);
                        int iA00 = this.A09.A00(go.A81());
                        HI.A04(!this.A0L[iA00]);
                        this.A01++;
                        this.A0L[iA00] = true;
                        interfaceC0998EtArr[i4] = new C1422Vj(this, iA00);
                        zArr2[i4] = true;
                        if (!z) {
                            C1418Vf c1418Vf = this.A0K[iA00];
                            c1418Vf.A0J();
                            z = c1418Vf.A0D(j, true, true) == -1 && c1418Vf.A0B() != 0;
                        }
                    }
                }
                if (this.A01 == 0) {
                    this.A0E = false;
                    this.A0D = false;
                    if (this.A0X.A08()) {
                        C1418Vf[] c1418VfArr = this.A0K;
                        int length = c1418VfArr.length;
                        while (i3 < length) {
                            c1418VfArr[i3].A0H();
                            i3++;
                        }
                        this.A0X.A05();
                    } else {
                        C1418Vf[] c1418VfArr2 = this.A0K;
                        int length2 = c1418VfArr2.length;
                        while (i3 < length2) {
                            c1418VfArr2[i3].A0I();
                            i3++;
                        }
                    }
                } else if (z) {
                    j = AF0(j);
                    for (int i5 = 0; i5 < interfaceC0998EtArr.length; i5++) {
                        if (interfaceC0998EtArr[i5] != null) {
                            zArr2[i5] = true;
                        }
                    }
                }
                this.A0I = true;
                return j;
            }
            InterfaceC0998Et interfaceC0998Et = interfaceC0998EtArr[i2];
            String[] strArr = A0d;
            if (strArr[4].charAt(19) == strArr[5].charAt(19)) {
                throw new RuntimeException();
            }
            A0d[2] = "mg4ta7ka0nUwB4FGZ9fOP";
            if (interfaceC0998Et != null && (goArr[i2] == null || !zArr[i2])) {
                int i6 = ((C1422Vj) interfaceC0998EtArr[i2]).A00;
                HI.A04(this.A0L[i6]);
                this.A01--;
                this.A0L[i6] = false;
                interfaceC0998EtArr[i2] = null;
            }
            i2++;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0922Bc
    public final InterfaceC0930Bm AFx(int i, int i2) {
        int length = this.A0K.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.A0J[i3] == i) {
                return this.A0K[i3];
            }
        }
        C1418Vf c1418Vf = new C1418Vf(this.A0V);
        c1418Vf.A0L(this);
        int[] iArrCopyOf = Arrays.copyOf(this.A0J, length + 1);
        this.A0J = iArrCopyOf;
        iArrCopyOf[length] = i;
        C1418Vf[] c1418VfArr = (C1418Vf[]) Arrays.copyOf(this.A0K, length + 1);
        this.A0K = c1418VfArr;
        c1418VfArr[length] = c1418Vf;
        return c1418Vf;
    }
}
