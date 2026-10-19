package com.applovin.exoplayer2.i.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.a.b;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends com.applovin.exoplayer2.i.a.c {

    @Nullable
    private List<com.applovin.exoplayer2.i.a> OV;

    @Nullable
    private List<com.applovin.exoplayer2.i.a> OW;
    private final boolean Pq;
    private final int Pr;
    private final C0044b[] Ps;
    private C0044b Pt;

    @Nullable
    private c Pu;
    private int Pv;
    private final y OO = new y();
    private final x Po = new x();
    private int Pp = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        private static final Comparator<a> Pw = new Comparator() { // from class: com.applovin.exoplayer2.i.a.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return b.a.a((b.a) obj, (b.a) obj2);
            }
        };
        public final com.applovin.exoplayer2.i.a Px;
        public final int Py;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f2, int i, int i2, float f3, int i3, float f4, boolean z, int i4, int i5) {
            a.C0041a c0041aP = new a.C0041a().m(charSequence).a(alignment).b(f2, i).ef(i2).o(f3).eg(i3).p(f4);
            if (z) {
                c0041aP.eh(i4);
            }
            this.Px = c0041aP.lU();
            this.Py = i5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar2.Py, aVar.Py);
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.a.b$b, reason: collision with other inner class name */
    private static final class C0044b {
        public static final int PA;
        public static final int PB;
        private static final int[] PC;
        private static final int[] PD;
        private static final int[] PE;
        private static final boolean[] PF;
        private static final int[] PG;
        private static final int[] PH;
        private static final int[] PI;
        private static final int[] PJ;
        public static final int Pz = b(2, 2, 2, 0);
        private boolean PL;
        private boolean PM;
        private boolean PN;
        private int PO;
        private int PP;
        private int PQ;
        private int PR;
        private boolean PS;
        private int PT;
        private int PU;
        private int PV;
        private int PW;
        private int PX;
        private int PY;
        private int PZ;
        private int Pj;
        private int Py;
        private int Qa;
        private int Qb;
        private int Qc;
        private final List<SpannableString> Ph = new ArrayList();
        private final SpannableStringBuilder PK = new SpannableStringBuilder();

        static {
            int iB = b(0, 0, 0, 0);
            PA = iB;
            int iB2 = b(0, 0, 0, 3);
            PB = iB2;
            PC = new int[]{0, 0, 0, 0, 0, 2, 0};
            PD = new int[]{0, 0, 0, 0, 0, 0, 2};
            PE = new int[]{3, 3, 3, 3, 3, 3, 1};
            PF = new boolean[]{false, false, false, true, true, true, false};
            PG = new int[]{iB, iB2, iB, iB, iB2, iB, iB};
            PH = new int[]{0, 1, 2, 3, 4, 3, 4};
            PI = new int[]{0, 0, 0, 0, 0, 3, 3};
            PJ = new int[]{iB, iB, iB, iB, iB, iB2, iB2};
        }

        public C0044b() {
            Y();
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int b(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.applovin.exoplayer2.l.a.h(r4, r0, r1)
                com.applovin.exoplayer2.l.a.h(r5, r0, r1)
                com.applovin.exoplayer2.l.a.h(r6, r0, r1)
                com.applovin.exoplayer2.l.a.h(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = 0
                goto L23
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L23
            L21:
                r7 = 255(0xff, float:3.57E-43)
            L23:
                if (r4 <= r1) goto L28
                r4 = 255(0xff, float:3.57E-43)
                goto L29
            L28:
                r4 = 0
            L29:
                if (r5 <= r1) goto L2e
                r5 = 255(0xff, float:3.57E-43)
                goto L2f
            L2e:
                r5 = 0
            L2f:
                if (r6 <= r1) goto L33
                r0 = 255(0xff, float:3.57E-43)
            L33:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.a.b.C0044b.b(int, int, int, int):int");
        }

        public static int f(int i, int i2, int i3) {
            return b(i, i2, i3, 0);
        }

        public void G(int i, int i2) {
            if (this.Pj != i) {
                a('\n');
            }
            this.Pj = i;
        }

        public void R(boolean z) {
            this.PM = z;
        }

        public void Y() {
            clear();
            this.PL = false;
            this.PM = false;
            this.Py = 4;
            this.PN = false;
            this.PO = 0;
            this.PP = 0;
            this.PQ = 0;
            this.PR = 15;
            this.PS = true;
            this.PT = 0;
            this.PU = 0;
            this.PV = 0;
            int i = PA;
            this.PW = i;
            this.Qa = Pz;
            this.Qc = i;
        }

        public void a(char c) {
            if (c != '\n') {
                this.PK.append(c);
                return;
            }
            this.Ph.add(my());
            this.PK.clear();
            if (this.PX != -1) {
                this.PX = 0;
            }
            if (this.PY != -1) {
                this.PY = 0;
            }
            if (this.PZ != -1) {
                this.PZ = 0;
            }
            if (this.Qb != -1) {
                this.Qb = 0;
            }
            while (true) {
                if ((!this.PS || this.Ph.size() < this.PR) && this.Ph.size() < 15) {
                    return;
                } else {
                    this.Ph.remove(0);
                }
            }
        }

        public void a(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.PX != -1) {
                if (!z) {
                    this.PK.setSpan(new StyleSpan(2), this.PX, this.PK.length(), 33);
                    this.PX = -1;
                }
            } else if (z) {
                this.PX = this.PK.length();
            }
            if (this.PY == -1) {
                if (z2) {
                    this.PY = this.PK.length();
                }
            } else {
                if (z2) {
                    return;
                }
                this.PK.setSpan(new UnderlineSpan(), this.PY, this.PK.length(), 33);
                this.PY = -1;
            }
        }

        public void a(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.PW = i;
            this.PT = i6;
        }

        public void a(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.PL = true;
            this.PM = z;
            this.PS = z2;
            this.Py = i;
            this.PN = z4;
            this.PO = i2;
            this.PP = i3;
            this.PQ = i6;
            int i9 = i4 + 1;
            if (this.PR != i9) {
                this.PR = i9;
                while (true) {
                    if ((!z2 || this.Ph.size() < this.PR) && this.Ph.size() < 15) {
                        break;
                    } else {
                        this.Ph.remove(0);
                    }
                }
            }
            if (i7 != 0 && this.PU != i7) {
                this.PU = i7;
                int i10 = i7 - 1;
                a(PG[i10], PB, PF[i10], 0, PD[i10], PE[i10], PC[i10]);
            }
            if (i8 == 0 || this.PV == i8) {
                return;
            }
            this.PV = i8;
            int i11 = i8 - 1;
            a(0, 1, 1, false, false, PI[i11], PH[i11]);
            e(Pz, PJ[i11], PA);
        }

        public void clear() {
            this.Ph.clear();
            this.PK.clear();
            this.PX = -1;
            this.PY = -1;
            this.PZ = -1;
            this.Qb = -1;
            this.Pj = 0;
        }

        public void e(int i, int i2, int i3) {
            if (this.PZ != -1 && this.Qa != i) {
                this.PK.setSpan(new ForegroundColorSpan(this.Qa), this.PZ, this.PK.length(), 33);
            }
            if (i != Pz) {
                this.PZ = this.PK.length();
                this.Qa = i;
            }
            if (this.Qb != -1 && this.Qc != i2) {
                this.PK.setSpan(new BackgroundColorSpan(this.Qc), this.Qb, this.PK.length(), 33);
            }
            if (i2 != PA) {
                this.Qb = this.PK.length();
                this.Qc = i2;
            }
        }

        public boolean isEmpty() {
            return !mw() || (this.Ph.isEmpty() && this.PK.length() == 0);
        }

        public void mm() {
            int length = this.PK.length();
            if (length > 0) {
                this.PK.delete(length - 1, length);
            }
        }

        public boolean mw() {
            return this.PL;
        }

        public boolean mx() {
            return this.PM;
        }

        public SpannableString my() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.PK);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.PX != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.PX, length, 33);
                }
                if (this.PY != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.PY, length, 33);
                }
                if (this.PZ != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.Qa), this.PZ, length, 33);
                }
                if (this.Qb != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.Qc), this.Qb, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        @Nullable
        public a mz() {
            Layout.Alignment alignment;
            float f2;
            float f3;
            if (isEmpty()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < this.Ph.size(); i++) {
                spannableStringBuilder.append((CharSequence) this.Ph.get(i));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) my());
            int i2 = this.PT;
            if (i2 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i2 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.PT);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.PN) {
                f2 = this.PP / 99.0f;
                f3 = this.PO / 99.0f;
            } else {
                f2 = this.PP / 209.0f;
                f3 = this.PO / 74.0f;
            }
            float f4 = (f2 * 0.9f) + 0.05f;
            float f5 = (f3 * 0.9f) + 0.05f;
            int i3 = this.PQ;
            return new a(spannableStringBuilder, alignment2, f5, 0, i3 / 3 == 0 ? 0 : i3 / 3 == 1 ? 1 : 2, f4, i3 % 3 == 0 ? 0 : i3 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.PW != PA, this.PW, this.Py);
        }
    }

    private static final class c {
        public final int Qd;
        public final int Qe;
        public final byte[] Qf;
        int pS = 0;

        public c(int i, int i2) {
            this.Qd = i;
            this.Qe = i2;
            this.Qf = new byte[(i2 * 2) - 1];
        }
    }

    public b(int i, @Nullable List<byte[]> list) {
        this.Pr = i == -1 ? 1 : i;
        this.Pq = list != null && com.applovin.exoplayer2.l.e.m(list);
        this.Ps = new C0044b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.Ps[i2] = new C0044b();
        }
        this.Pt = this.Ps[0];
    }

    private void en(int i) {
        if (i != 0) {
            if (i == 3) {
                this.OV = mi();
            }
            if (i == 8) {
                this.Pt.mm();
                return;
            }
            switch (i) {
                case 12:
                    mj();
                    break;
                case 13:
                    this.Pt.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i >= 17 && i <= 23) {
                        q.h("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                        this.Po.bR(8);
                    } else if (i >= 24 && i <= 31) {
                        q.h("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                        this.Po.bR(16);
                    } else {
                        q.h("Cea708Decoder", "Invalid C0 command: " + i);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void eo(int i) {
        int i2 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i3 = i - 128;
                if (this.Pv != i3) {
                    this.Pv = i3;
                    this.Pt = this.Ps[i3];
                }
                break;
            case 136:
                while (i2 <= 8) {
                    if (this.Po.ik()) {
                        this.Ps[8 - i2].clear();
                    }
                    i2++;
                }
                break;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.Po.ik()) {
                        this.Ps[8 - i4].R(true);
                    }
                }
                break;
            case 138:
                while (i2 <= 8) {
                    if (this.Po.ik()) {
                        this.Ps[8 - i2].R(false);
                    }
                    i2++;
                }
                break;
            case 139:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.Po.ik()) {
                        this.Ps[8 - i5].R(!r0.mx());
                    }
                }
                break;
            case IronSourceConstants.USING_CACHE_FOR_INIT_EVENT /* 140 */:
                while (i2 <= 8) {
                    if (this.Po.ik()) {
                        this.Ps[8 - i2].Y();
                    }
                    i2++;
                }
                break;
            case 141:
                this.Po.bR(8);
                break;
            case 142:
                break;
            case 143:
                mj();
                break;
            case 144:
                if (this.Pt.mw()) {
                    mr();
                } else {
                    this.Po.bR(16);
                }
                break;
            case 145:
                if (this.Pt.mw()) {
                    ms();
                } else {
                    this.Po.bR(24);
                }
                break;
            case 146:
                if (this.Pt.mw()) {
                    mt();
                } else {
                    this.Po.bR(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                q.h("Cea708Decoder", "Invalid C1 command: " + i);
                break;
            case 151:
                if (this.Pt.mw()) {
                    mu();
                } else {
                    this.Po.bR(32);
                }
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i6 = i - 152;
                ev(i6);
                if (this.Pv != i6) {
                    this.Pv = i6;
                    this.Pt = this.Ps[i6];
                }
                break;
        }
    }

    private void ep(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.Po.bR(8);
        } else if (i <= 23) {
            this.Po.bR(16);
        } else if (i <= 31) {
            this.Po.bR(24);
        }
    }

    private void eq(int i) {
        if (i <= 135) {
            this.Po.bR(32);
            return;
        }
        if (i <= 143) {
            this.Po.bR(40);
        } else if (i <= 159) {
            this.Po.bR(2);
            this.Po.bR(this.Po.bQ(6) * 8);
        }
    }

    private void er(int i) {
        if (i == 127) {
            this.Pt.a((char) 9835);
        } else {
            this.Pt.a((char) (i & 255));
        }
    }

    private void es(int i) {
        this.Pt.a((char) (i & 255));
    }

    private void et(int i) {
        if (i == 32) {
            this.Pt.a(' ');
        }
        if (i == 33) {
            this.Pt.a((char) 160);
            return;
        }
        if (i == 37) {
            this.Pt.a((char) 8230);
            return;
        }
        if (i == 42) {
            this.Pt.a((char) 352);
            return;
        }
        if (i == 44) {
            this.Pt.a((char) 338);
            return;
        }
        if (i == 63) {
            this.Pt.a((char) 376);
            return;
        }
        if (i == 57) {
            this.Pt.a((char) 8482);
            return;
        }
        if (i == 58) {
            this.Pt.a((char) 353);
            return;
        }
        if (i == 60) {
            this.Pt.a((char) 339);
            return;
        }
        if (i == 61) {
            this.Pt.a((char) 8480);
            return;
        }
        switch (i) {
            case 48:
                this.Pt.a((char) 9608);
                break;
            case 49:
                this.Pt.a((char) 8216);
                break;
            case 50:
                this.Pt.a((char) 8217);
                break;
            case 51:
                this.Pt.a((char) 8220);
                break;
            case 52:
                this.Pt.a((char) 8221);
                break;
            case 53:
                this.Pt.a((char) 8226);
                break;
            default:
                switch (i) {
                    case 118:
                        this.Pt.a((char) 8539);
                        break;
                    case 119:
                        this.Pt.a((char) 8540);
                        break;
                    case 120:
                        this.Pt.a((char) 8541);
                        break;
                    case 121:
                        this.Pt.a((char) 8542);
                        break;
                    case 122:
                        this.Pt.a((char) 9474);
                        break;
                    case 123:
                        this.Pt.a((char) 9488);
                        break;
                    case 124:
                        this.Pt.a((char) 9492);
                        break;
                    case 125:
                        this.Pt.a((char) 9472);
                        break;
                    case 126:
                        this.Pt.a((char) 9496);
                        break;
                    case 127:
                        this.Pt.a((char) 9484);
                        break;
                    default:
                        q.h("Cea708Decoder", "Invalid G2 character: " + i);
                        break;
                }
                break;
        }
    }

    private void eu(int i) {
        if (i == 160) {
            this.Pt.a((char) 13252);
            return;
        }
        q.h("Cea708Decoder", "Invalid G3 character: " + i);
        this.Pt.a('_');
    }

    private void ev(int i) {
        C0044b c0044b = this.Ps[i];
        this.Po.bR(2);
        boolean zIk = this.Po.ik();
        boolean zIk2 = this.Po.ik();
        boolean zIk3 = this.Po.ik();
        int iBQ = this.Po.bQ(3);
        boolean zIk4 = this.Po.ik();
        int iBQ2 = this.Po.bQ(7);
        int iBQ3 = this.Po.bQ(8);
        int iBQ4 = this.Po.bQ(4);
        int iBQ5 = this.Po.bQ(4);
        this.Po.bR(2);
        int iBQ6 = this.Po.bQ(6);
        this.Po.bR(2);
        c0044b.a(zIk, zIk2, zIk3, iBQ, zIk4, iBQ2, iBQ3, iBQ5, iBQ6, iBQ4, this.Po.bQ(3), this.Po.bQ(3));
    }

    private List<com.applovin.exoplayer2.i.a> mi() {
        a aVarMz;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.Ps[i].isEmpty() && this.Ps[i].mx() && (aVarMz = this.Ps[i].mz()) != null) {
                arrayList.add(aVarMz);
            }
        }
        Collections.sort(arrayList, a.Pw);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((a) arrayList.get(i2)).Px);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void mj() {
        for (int i = 0; i < 8; i++) {
            this.Ps[i].Y();
        }
    }

    private void mp() {
        if (this.Pu == null) {
            return;
        }
        mq();
        this.Pu = null;
    }

    private void mq() {
        c cVar = this.Pu;
        if (cVar.pS != (cVar.Qe * 2) - 1) {
            q.f("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.Pu.Qe * 2) - 1) + ", but current index is " + this.Pu.pS + " (sequence number " + this.Pu.Qd + ");");
        }
        x xVar = this.Po;
        c cVar2 = this.Pu;
        xVar.l(cVar2.Qf, cVar2.pS);
        int iBQ = this.Po.bQ(3);
        int iBQ2 = this.Po.bQ(5);
        if (iBQ == 7) {
            this.Po.bR(2);
            iBQ = this.Po.bQ(6);
            if (iBQ < 7) {
                q.h("Cea708Decoder", "Invalid extended service number: " + iBQ);
            }
        }
        if (iBQ2 == 0) {
            if (iBQ != 0) {
                q.h("Cea708Decoder", "serviceNumber is non-zero (" + iBQ + ") when blockSize is 0");
                return;
            }
            return;
        }
        if (iBQ != this.Pr) {
            return;
        }
        boolean z = false;
        while (this.Po.pf() > 0) {
            int iBQ3 = this.Po.bQ(8);
            if (iBQ3 == 16) {
                int iBQ4 = this.Po.bQ(8);
                if (iBQ4 <= 31) {
                    ep(iBQ4);
                } else {
                    if (iBQ4 <= 127) {
                        et(iBQ4);
                    } else if (iBQ4 <= 159) {
                        eq(iBQ4);
                    } else if (iBQ4 <= 255) {
                        eu(iBQ4);
                    } else {
                        q.h("Cea708Decoder", "Invalid extended command: " + iBQ4);
                    }
                    z = true;
                }
            } else if (iBQ3 <= 31) {
                en(iBQ3);
            } else {
                if (iBQ3 <= 127) {
                    er(iBQ3);
                } else if (iBQ3 <= 159) {
                    eo(iBQ3);
                } else if (iBQ3 <= 255) {
                    es(iBQ3);
                } else {
                    q.h("Cea708Decoder", "Invalid base command: " + iBQ3);
                }
                z = true;
            }
        }
        if (z) {
            this.OV = mi();
        }
    }

    private void mr() {
        this.Pt.a(this.Po.bQ(4), this.Po.bQ(2), this.Po.bQ(2), this.Po.ik(), this.Po.ik(), this.Po.bQ(3), this.Po.bQ(3));
    }

    private void ms() {
        int iB = C0044b.b(this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2));
        int iB2 = C0044b.b(this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2));
        this.Po.bR(2);
        this.Pt.e(iB, iB2, C0044b.f(this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2)));
    }

    private void mt() {
        this.Po.bR(4);
        int iBQ = this.Po.bQ(4);
        this.Po.bR(2);
        this.Pt.G(iBQ, this.Po.bQ(6));
    }

    private void mu() {
        int iB = C0044b.b(this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2));
        int iBQ = this.Po.bQ(2);
        int iF = C0044b.f(this.Po.bQ(2), this.Po.bQ(2), this.Po.bQ(2));
        if (this.Po.ik()) {
            iBQ |= 4;
        }
        boolean zIk = this.Po.ik();
        int iBQ2 = this.Po.bQ(2);
        int iBQ3 = this.Po.bQ(2);
        int iBQ4 = this.Po.bQ(2);
        this.Po.bR(8);
        this.Pt.a(iB, iF, zIk, iBQ, iBQ2, iBQ3, iBQ4);
    }

    @Override // com.applovin.exoplayer2.i.a.c
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ void D(j jVar) throws h {
        super.D(jVar);
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected void b(j jVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(jVar.rH);
        this.OO.l(byteBuffer.array(), byteBuffer.limit());
        while (this.OO.pj() >= 3) {
            int iPo = this.OO.po() & 7;
            int i = iPo & 3;
            boolean z = (iPo & 4) == 4;
            byte bPo = (byte) this.OO.po();
            byte bPo2 = (byte) this.OO.po();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        mp();
                        int i2 = (bPo & 192) >> 6;
                        int i3 = this.Pp;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            mj();
                            q.h("Cea708Decoder", "Sequence number discontinuity. previous=" + this.Pp + " current=" + i2);
                        }
                        this.Pp = i2;
                        int i4 = bPo & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        c cVar = new c(i2, i4);
                        this.Pu = cVar;
                        byte[] bArr = cVar.Qf;
                        int i5 = cVar.pS;
                        cVar.pS = i5 + 1;
                        bArr[i5] = bPo2;
                    } else {
                        com.applovin.exoplayer2.l.a.checkArgument(i == 2);
                        c cVar2 = this.Pu;
                        if (cVar2 == null) {
                            q.i("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = cVar2.Qf;
                            int i6 = cVar2.pS;
                            int i7 = i6 + 1;
                            cVar2.pS = i7;
                            bArr2[i6] = bPo;
                            cVar2.pS = i7 + 1;
                            bArr2[i7] = bPo2;
                        }
                    }
                    c cVar3 = this.Pu;
                    if (cVar3.pS == (cVar3.Qe * 2) - 1) {
                        mp();
                    }
                }
            }
        }
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.i.g
    public /* bridge */ /* synthetic */ void bd(long j) {
        super.bd(j);
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public void dI() {
        super.dI();
        this.OV = null;
        this.OW = null;
        this.Pv = 0;
        this.Pt = this.Ps[0];
        mj();
        this.Pu = null;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    @Nullable
    /* JADX INFO: renamed from: lV */
    public /* bridge */ /* synthetic */ j hc() throws h {
        return super.hc();
    }

    @Override // com.applovin.exoplayer2.i.a.c
    @Nullable
    /* JADX INFO: renamed from: lW */
    public /* bridge */ /* synthetic */ k hd() throws h {
        return super.hd();
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected boolean mg() {
        return this.OV != this.OW;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected com.applovin.exoplayer2.i.f mh() {
        List<com.applovin.exoplayer2.i.a> list = this.OV;
        this.OW = list;
        return new d((List) com.applovin.exoplayer2.l.a.checkNotNull(list));
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }
}
