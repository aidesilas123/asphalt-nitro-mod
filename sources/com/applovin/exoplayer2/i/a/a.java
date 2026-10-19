package com.applovin.exoplayer2.i.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {
    private static final int[] OG = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] OH = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] OI = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] OJ = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] OK = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] OL = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] OM = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] ON = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final int OP;
    private final int OQ;
    private final int OR;
    private final long OS;

    @Nullable
    private List<com.applovin.exoplayer2.i.a> OV;

    @Nullable
    private List<com.applovin.exoplayer2.i.a> OW;
    private int OX;
    private int OY;
    private boolean OZ;
    private boolean Pa;
    private byte Pb;
    private byte Pc;
    private boolean Pe;
    private long Pf;
    private final y OO = new y();
    private final ArrayList<C0042a> OT = new ArrayList<>();
    private C0042a OU = new C0042a(0, 4);
    private int Pd = 0;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.a.a$a, reason: collision with other inner class name */
    private static final class C0042a {
        private int OX;
        private int OY;
        private final List<C0043a> Pg = new ArrayList();
        private final List<SpannableString> Ph = new ArrayList();
        private final StringBuilder Pi = new StringBuilder();
        private int Pj;
        private int Pk;
        private int Pl;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.i.a.a$a$a, reason: collision with other inner class name */
        private static class C0043a {
            public final int Pm;
            public final boolean Pn;
            public int start;

            public C0043a(int i, boolean z, int i2) {
                this.Pm = i;
                this.Pn = z;
                this.start = i2;
            }
        }

        public C0042a(int i, int i2) {
            U(i);
            this.OY = i2;
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        private SpannableString mo() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.Pi);
            int length = spannableStringBuilder.length();
            int i = 0;
            int i2 = -1;
            int i3 = -1;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            boolean z = false;
            while (i < this.Pg.size()) {
                C0043a c0043a = this.Pg.get(i);
                boolean z2 = c0043a.Pn;
                int i7 = c0043a.Pm;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i6 = a.OI[i7];
                    }
                    z = z3;
                }
                int i8 = c0043a.start;
                i++;
                if (i8 != (i < this.Pg.size() ? this.Pg.get(i).start : length)) {
                    if (i2 != -1 && !z2) {
                        a(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z2) {
                        i2 = i8;
                    }
                    if (i3 != -1 && !z) {
                        b(spannableStringBuilder, i3, i8);
                        i3 = -1;
                    } else if (i3 == -1 && z) {
                        i3 = i8;
                    }
                    if (i6 != i5) {
                        a(spannableStringBuilder, i4, i8, i5);
                        i5 = i6;
                        i4 = i8;
                    }
                }
            }
            if (i2 != -1 && i2 != length) {
                a(spannableStringBuilder, i2, length);
            }
            if (i3 != -1 && i3 != length) {
                b(spannableStringBuilder, i3, length);
            }
            if (i4 != length) {
                a(spannableStringBuilder, i4, length, i5);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void U(int i) {
            this.OX = i;
            this.Pg.clear();
            this.Ph.clear();
            this.Pi.setLength(0);
            this.Pj = 15;
            this.Pk = 0;
            this.Pl = 0;
        }

        public void a(char c) {
            if (this.Pi.length() < 32) {
                this.Pi.append(c);
            }
        }

        public void ek(int i) {
            this.OX = i;
        }

        public void el(int i) {
            this.OY = i;
        }

        @Nullable
        public com.applovin.exoplayer2.i.a em(int i) {
            float f2;
            int i2 = this.Pk + this.Pl;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.Ph.size(); i4++) {
                spannableStringBuilder.append(ai.a(this.Ph.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(ai.a(mo(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.OX != 2 || (Math.abs(i5) >= 3 && length >= 0)) ? (this.OX != 2 || i5 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f2 = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f2 = 0.5f;
            }
            int i6 = this.Pj;
            if (i6 > 7) {
                i6 = (i6 - 15) - 2;
            } else if (this.OX == 1) {
                i6 -= this.OY - 1;
            }
            return new a.C0041a().m(spannableStringBuilder).a(Layout.Alignment.ALIGN_NORMAL).b(i6, 1).o(f2).eg(i).lU();
        }

        public boolean isEmpty() {
            return this.Pg.isEmpty() && this.Ph.isEmpty() && this.Pi.length() == 0;
        }

        public void m(int i, boolean z) {
            this.Pg.add(new C0043a(i, z, this.Pi.length()));
        }

        public void mm() {
            int length = this.Pi.length();
            if (length > 0) {
                this.Pi.delete(length - 1, length);
                for (int size = this.Pg.size() - 1; size >= 0; size--) {
                    C0043a c0043a = this.Pg.get(size);
                    int i = c0043a.start;
                    if (i != length) {
                        return;
                    }
                    c0043a.start = i - 1;
                }
            }
        }

        public void mn() {
            this.Ph.add(mo());
            this.Pi.setLength(0);
            this.Pg.clear();
            int iMin = Math.min(this.OY, this.Pj);
            while (this.Ph.size() >= iMin) {
                this.Ph.remove(0);
            }
        }
    }

    public a(String str, int i, long j) {
        this.OS = j > 0 ? j * 1000 : -9223372036854775807L;
        this.OP = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.OR = 0;
            this.OQ = 0;
        } else if (i == 2) {
            this.OR = 1;
            this.OQ = 0;
        } else if (i == 3) {
            this.OR = 0;
            this.OQ = 1;
        } else if (i != 4) {
            q.h("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.OR = 0;
            this.OQ = 0;
        } else {
            this.OR = 1;
            this.OQ = 1;
        }
        ek(0);
        mj();
        this.Pe = true;
        this.Pf = C.TIME_UNSET;
    }

    private boolean a(byte b) {
        if (h(b)) {
            this.Pd = i(b);
        }
        return this.Pd == this.OR;
    }

    private boolean a(boolean z, byte b, byte b2) {
        if (!z || !j(b)) {
            this.Pa = false;
        } else {
            if (this.Pa && this.Pb == b && this.Pc == b2) {
                this.Pa = false;
                return true;
            }
            this.Pa = true;
            this.Pb = b;
            this.Pc = b2;
        }
        return false;
    }

    private void b(byte b) {
        this.OU.a(' ');
        this.OU.m((b >> 1) & 7, (b & 1) == 1);
    }

    private void b(byte b, byte b2) {
        int i = OG[b & 7];
        if ((b2 & 32) != 0) {
            i++;
        }
        if (i != this.OU.Pj) {
            if (this.OX != 1 && !this.OU.isEmpty()) {
                C0042a c0042a = new C0042a(this.OX, this.OY);
                this.OU = c0042a;
                this.OT.add(c0042a);
            }
            this.OU.Pj = i;
        }
        boolean z = (b2 & Ascii.DLE) == 16;
        boolean z2 = (b2 & 1) == 1;
        int i2 = (b2 >> 1) & 7;
        this.OU.m(z ? 8 : i2, z2);
        if (z) {
            this.OU.Pk = OH[i2];
        }
    }

    private void c(byte b) {
        if (b == 32) {
            ek(2);
            return;
        }
        if (b == 41) {
            ek(3);
            return;
        }
        switch (b) {
            case 37:
                ek(1);
                el(2);
                break;
            case 38:
                ek(1);
                el(3);
                break;
            case 39:
                ek(1);
                el(4);
                break;
            default:
                int i = this.OX;
                if (i != 0) {
                    if (b != 33) {
                        switch (b) {
                            case 44:
                                this.OV = Collections.emptyList();
                                int i2 = this.OX;
                                if (i2 == 1 || i2 == 3) {
                                    mj();
                                }
                                break;
                            case 45:
                                if (i == 1 && !this.OU.isEmpty()) {
                                    this.OU.mn();
                                    break;
                                }
                                break;
                            case 46:
                                mj();
                                break;
                            case 47:
                                this.OV = mi();
                                mj();
                                break;
                        }
                    } else {
                        this.OU.mm();
                        break;
                    }
                }
                break;
        }
    }

    private void c(byte b, byte b2) {
        if (k(b)) {
            this.Pe = false;
            return;
        }
        if (l(b)) {
            if (b2 != 32 && b2 != 47) {
                switch (b2) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b2) {
                            case 42:
                            case 43:
                                this.Pe = false;
                                break;
                        }
                }
            }
            this.Pe = true;
        }
    }

    private static char d(byte b) {
        return (char) OJ[(b & Ascii.DEL) - 32];
    }

    private static boolean d(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    private static char e(byte b) {
        return (char) OK[b & Ascii.SI];
    }

    private static boolean e(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    private void ek(int i) {
        int i2 = this.OX;
        if (i2 == i) {
            return;
        }
        this.OX = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.OT.size(); i3++) {
                this.OT.get(i3).ek(i);
            }
            return;
        }
        mj();
        if (i2 == 3 || i == 1 || i == 0) {
            this.OV = Collections.emptyList();
        }
    }

    private void el(int i) {
        this.OY = i;
        this.OU.el(i);
    }

    private static char f(byte b) {
        return (char) OL[b & Ascii.US];
    }

    private static char f(byte b, byte b2) {
        return (b & 1) == 0 ? f(b2) : g(b2);
    }

    private static char g(byte b) {
        return (char) OM[b & Ascii.US];
    }

    private static boolean g(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    private static boolean h(byte b) {
        return (b & 224) == 0;
    }

    private static boolean h(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    private static int i(byte b) {
        return (b >> 3) & 1;
    }

    private static boolean i(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    private static boolean j(byte b) {
        return (b & 240) == 16;
    }

    private static boolean j(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    private static boolean k(byte b) {
        return 1 <= b && b <= 15;
    }

    private static boolean l(byte b) {
        return (b & 247) == 20;
    }

    private List<com.applovin.exoplayer2.i.a> mi() {
        int size = this.OT.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            com.applovin.exoplayer2.i.a aVarEm = this.OT.get(i).em(Integer.MIN_VALUE);
            arrayList.add(aVarEm);
            if (aVarEm != null) {
                iMin = Math.min(iMin, aVarEm.Oe);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            com.applovin.exoplayer2.i.a aVar = (com.applovin.exoplayer2.i.a) arrayList.get(i2);
            if (aVar != null) {
                if (aVar.Oe != iMin) {
                    aVar = (com.applovin.exoplayer2.i.a) com.applovin.exoplayer2.l.a.checkNotNull(this.OT.get(i2).em(iMin));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private void mj() {
        this.OU.U(this.OX);
        this.OT.clear();
        this.OT.add(this.OU);
    }

    private boolean mk() {
        return (this.OS == C.TIME_UNSET || this.Pf == C.TIME_UNSET || au() - this.Pf < this.OS) ? false : true;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ void D(j jVar) throws h {
        super.D(jVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    @Override // com.applovin.exoplayer2.i.a.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void b(com.applovin.exoplayer2.i.j r10) {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.a.a.b(com.applovin.exoplayer2.i.j):void");
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
        ek(0);
        el(4);
        mj();
        this.OZ = false;
        this.Pa = false;
        this.Pb = (byte) 0;
        this.Pc = (byte) 0;
        this.Pd = 0;
        this.Pe = true;
        this.Pf = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    @Nullable
    /* JADX INFO: renamed from: lV */
    public /* bridge */ /* synthetic */ j hc() throws h {
        return super.hc();
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: lW */
    public k hd() throws h {
        k kVarMA;
        k kVarHd = super.hd();
        if (kVarHd != null) {
            return kVarHd;
        }
        if (!mk() || (kVarMA = mA()) == null) {
            return null;
        }
        this.OV = Collections.emptyList();
        this.Pf = C.TIME_UNSET;
        kVarMA.a(au(), mh(), Long.MAX_VALUE);
        return kVarMA;
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
    public void release() {
    }
}
