package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class MinimalEncoder {
    static final char[] a = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', b4.R, '>', '?', '@', '[', '\\', ']', '^', '_'};

    enum Mode {
        ASCII,
        C40,
        TEXT,
        X12,
        EDF,
        B256
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[SymbolShapeHint.values().length];
            b = iArr;
            try {
                iArr[SymbolShapeHint.FORCE_SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[SymbolShapeHint.FORCE_RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            a = iArr2;
            try {
                iArr2[Mode.ASCII.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Mode.B256.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Mode.C40.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Mode.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[Mode.X12.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[Mode.EDF.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private static final class b {
        private static final int[] a = {3, 5, 8, 10, 12, 16, 18, 22, 30, 32, 36, 44, 49, 62, 86, 114, 144, 174, 204, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};
        private static final int[] b = {3, 5, 8, 12, 18, 22, 30, 36, 44, 62, 86, 114, 144, 174, 204, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};
        private static final int[] c = {5, 10, 16, 33, 32, 49};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final c f4349d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Mode f4350e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f4351f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f4352g;
        private final b h;
        private final int i;

        /* JADX WARN: Removed duplicated region for block: B:20:0x003c A[PHI: r10
          0x003c: PHI (r10v15 int) = 
          (r10v8 int)
          (r10v8 int)
          (r10v8 int)
          (r10v11 int)
          (r10v11 int)
          (r10v11 int)
          (r10v17 int)
          (r10v17 int)
          (r10v17 int)
         binds: [B:51:0x0089, B:53:0x008d, B:55:0x0091, B:36:0x0067, B:38:0x006b, B:39:0x006d, B:15:0x0032, B:17:0x0036, B:19:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[PHI: r10
          0x0040: PHI (r10v13 int) = (r10v6 int), (r10v6 int), (r10v6 int), (r10v8 int), (r10v11 int), (r10v11 int), (r10v17 int), (r10v17 int) binds: [B:63:0x00ae, B:65:0x00b2, B:67:0x00b6, B:48:0x0084, B:30:0x005c, B:32:0x0060, B:10:0x0029, B:12:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private b(com.google.zxing.datamatrix.encoder.MinimalEncoder.c r6, com.google.zxing.datamatrix.encoder.MinimalEncoder.Mode r7, int r8, int r9, com.google.zxing.datamatrix.encoder.MinimalEncoder.b r10) {
            /*
                Method dump skipped, instruction units count: 204
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.encoder.MinimalEncoder.b.<init>(com.google.zxing.datamatrix.encoder.MinimalEncoder$c, com.google.zxing.datamatrix.encoder.MinimalEncoder$Mode, int, int, com.google.zxing.datamatrix.encoder.MinimalEncoder$b):void");
        }

        /* synthetic */ b(c cVar, Mode mode, int i, int i2, b bVar, a aVar) {
            this(cVar, mode, i, i2, bVar);
        }

        static byte[] h(int i) {
            return new byte[]{(byte) i};
        }

        static byte[] i(int i, int i2) {
            return new byte[]{(byte) i, (byte) i2};
        }

        private static int j(boolean z, int i, char c2, int i2) {
            if (c2 == i2) {
                return 27;
            }
            if (z) {
                if (c2 <= 31) {
                    return c2;
                }
                if (c2 == ' ') {
                    return 3;
                }
                return c2 <= '/' ? c2 - '!' : c2 <= '9' ? c2 - ',' : c2 <= '@' ? c2 - '+' : c2 <= 'Z' ? c2 - '3' : c2 <= '_' ? c2 - 'E' : c2 <= 127 ? c2 - '`' : c2;
            }
            if (c2 != 0) {
                if (i == 0 && c2 <= 3) {
                    return c2 - 1;
                }
                if (i == 1 && c2 <= 31) {
                    return c2;
                }
                if (c2 == ' ') {
                    return 3;
                }
                if (c2 >= '!' && c2 <= '/') {
                    return c2 - '!';
                }
                if (c2 >= '0' && c2 <= '9') {
                    return c2 - ',';
                }
                if (c2 >= ':' && c2 <= '@') {
                    return c2 - '+';
                }
                if (c2 >= 'A' && c2 <= 'Z') {
                    return c2 - '@';
                }
                if (c2 >= '[' && c2 <= '_') {
                    return c2 - 'E';
                }
                if (c2 != '`') {
                    return (c2 < 'a' || c2 > 'z') ? (c2 < '{' || c2 > 127) ? c2 : c2 - '`' : c2 - 'S';
                }
            }
            return 0;
        }

        static int v(char c2, boolean z, int i) {
            if (!(z && MinimalEncoder.k(c2)) && (z || !MinimalEncoder.m(c2))) {
                return (!(z && MinimalEncoder.l(c2, i)) && (z || !MinimalEncoder.n(c2, i))) ? 2 : 1;
            }
            return 0;
        }

        private static int w(char c2) {
            if (c2 == '\r') {
                return 0;
            }
            if (c2 == '*') {
                return 1;
            }
            if (c2 == '>') {
                return 2;
            }
            if (c2 == ' ') {
                return 3;
            }
            return (c2 < '0' || c2 > '9') ? (c2 < 'A' || c2 > 'Z') ? c2 : c2 - '3' : c2 - ',';
        }

        static void y(byte[] bArr, int i, int i2, int i3, int i4) {
            int i5 = ((i2 & 255) * 1600) + ((i3 & 255) * 40) + (i4 & 255) + 1;
            bArr[i] = (byte) (i5 / 256);
            bArr[i + 1] = (byte) (i5 % 256);
        }

        int g() {
            int i = 0;
            for (b bVar = this; bVar != null && bVar.f4350e == Mode.B256 && i <= 250; bVar = bVar.h) {
                i++;
            }
            return i;
        }

        byte[] k(boolean z, int i) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f4352g; i2++) {
                char cCharAt = this.f4349d.charAt(this.f4351f + i2);
                if ((z && HighLevelEncoder.f(cCharAt)) || (!z && HighLevelEncoder.h(cCharAt))) {
                    arrayList.add(Byte.valueOf((byte) j(z, 0, cCharAt, i)));
                } else if (MinimalEncoder.j(cCharAt, i)) {
                    char c2 = (char) ((cCharAt & 255) - 128);
                    if (!(z && HighLevelEncoder.f(c2)) && (z || !HighLevelEncoder.h(c2))) {
                        arrayList.add((byte) 1);
                        arrayList.add(Byte.valueOf(Ascii.RS));
                        int iV = v(c2, z, i);
                        arrayList.add(Byte.valueOf((byte) iV));
                        arrayList.add(Byte.valueOf((byte) j(z, iV, c2, i)));
                    } else {
                        arrayList.add((byte) 1);
                        arrayList.add(Byte.valueOf(Ascii.RS));
                        arrayList.add(Byte.valueOf((byte) j(z, 0, c2, i)));
                    }
                } else {
                    int iV2 = v(cCharAt, z, i);
                    arrayList.add(Byte.valueOf((byte) iV2));
                    arrayList.add(Byte.valueOf((byte) j(z, iV2, cCharAt, i)));
                }
            }
            if (arrayList.size() % 3 != 0) {
                arrayList.add((byte) 0);
            }
            byte[] bArr = new byte[(arrayList.size() / 3) * 2];
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4 += 3) {
                y(bArr, i3, ((Byte) arrayList.get(i4)).byteValue() & 255, ((Byte) arrayList.get(i4 + 1)).byteValue() & 255, ((Byte) arrayList.get(i4 + 2)).byteValue() & 255);
                i3 += 2;
            }
            return bArr;
        }

        int l(int i) {
            return r(i) - i;
        }

        byte[] m() {
            switch (a.a[this.f4350e.ordinal()]) {
                case 1:
                    return this.f4349d.a(this.f4351f) ? i(241, this.f4349d.b(this.f4351f) + 1) : MinimalEncoder.j(this.f4349d.charAt(this.f4351f), this.f4349d.f()) ? i(235, this.f4349d.charAt(this.f4351f) - 127) : this.f4352g == 2 ? h(((((this.f4349d.charAt(this.f4351f) - '0') * 10) + this.f4349d.charAt(this.f4351f + 1)) - 48) + 130) : this.f4349d.h(this.f4351f) ? h(232) : h(this.f4349d.charAt(this.f4351f) + 1);
                case 2:
                    return h(this.f4349d.charAt(this.f4351f));
                case 3:
                    return k(true, this.f4349d.f());
                case 4:
                    return k(false, this.f4349d.f());
                case 5:
                    return x();
                case 6:
                    return n();
                default:
                    return new byte[0];
            }
        }

        byte[] n() {
            int iCeil = (int) Math.ceil(((double) this.f4352g) / 4.0d);
            byte[] bArr = new byte[iCeil * 3];
            int i = this.f4351f;
            int iMin = Math.min((this.f4352g + i) - 1, this.f4349d.length() - 1);
            for (int i2 = 0; i2 < iCeil; i2 += 3) {
                int[] iArr = new int[4];
                for (int i3 = 0; i3 < 4; i3++) {
                    if (i <= iMin) {
                        iArr[i3] = this.f4349d.charAt(i) & '?';
                        i++;
                    } else {
                        iArr[i3] = i == iMin + 1 ? 31 : 0;
                    }
                }
                int i4 = (iArr[0] << 18) | (iArr[1] << 12) | (iArr[2] << 6) | iArr[3];
                bArr[i2] = (byte) ((i4 >> 16) & 255);
                bArr[i2 + 1] = (byte) ((i4 >> 8) & 255);
                bArr[i2 + 2] = (byte) (i4 & 255);
            }
            return bArr;
        }

        Mode o() {
            if (this.f4350e == Mode.EDF) {
                if (this.f4352g < 4) {
                    return Mode.ASCII;
                }
                int iP = p();
                if (iP > 0 && l(this.i + iP) <= 2 - iP) {
                    return Mode.ASCII;
                }
            }
            Mode mode = this.f4350e;
            if (mode == Mode.C40 || mode == Mode.TEXT || mode == Mode.X12) {
                if (this.f4351f + this.f4352g >= this.f4349d.length() && l(this.i) == 0) {
                    return Mode.ASCII;
                }
                if (p() == 1 && l(this.i + 1) == 0) {
                    return Mode.ASCII;
                }
            }
            return this.f4350e;
        }

        int p() {
            int length = this.f4349d.length();
            int i = this.f4351f + this.f4352g;
            int i2 = length - i;
            if (i2 <= 4 && i < length) {
                if (i2 == 1) {
                    return MinimalEncoder.j(this.f4349d.charAt(i), this.f4349d.f()) ? 0 : 1;
                }
                if (i2 == 2) {
                    if (!MinimalEncoder.j(this.f4349d.charAt(i), this.f4349d.f())) {
                        int i3 = i + 1;
                        if (!MinimalEncoder.j(this.f4349d.charAt(i3), this.f4349d.f())) {
                            return (HighLevelEncoder.d(this.f4349d.charAt(i)) && HighLevelEncoder.d(this.f4349d.charAt(i3))) ? 1 : 2;
                        }
                    }
                    return 0;
                }
                if (i2 == 3) {
                    if (HighLevelEncoder.d(this.f4349d.charAt(i)) && HighLevelEncoder.d(this.f4349d.charAt(i + 1)) && !MinimalEncoder.j(this.f4349d.charAt(i + 2), this.f4349d.f())) {
                        return 2;
                    }
                    return (HighLevelEncoder.d(this.f4349d.charAt(i + 1)) && HighLevelEncoder.d(this.f4349d.charAt(i + 2)) && !MinimalEncoder.j(this.f4349d.charAt(i), this.f4349d.f())) ? 2 : 0;
                }
                if (HighLevelEncoder.d(this.f4349d.charAt(i)) && HighLevelEncoder.d(this.f4349d.charAt(i + 1)) && HighLevelEncoder.d(this.f4349d.charAt(i + 2)) && HighLevelEncoder.d(this.f4349d.charAt(i + 3))) {
                    return 2;
                }
            }
            return 0;
        }

        byte[] q() {
            int[] iArr = a.a;
            switch (iArr[t().ordinal()]) {
                case 1:
                case 2:
                    int i = iArr[this.f4350e.ordinal()];
                    if (i == 2) {
                        return h(231);
                    }
                    if (i == 3) {
                        return h(230);
                    }
                    if (i == 4) {
                        return h(239);
                    }
                    if (i == 5) {
                        return h(238);
                    }
                    if (i == 6) {
                        return h(PsExtractor.VIDEO_STREAM_MASK);
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    if (this.f4350e != t()) {
                        switch (iArr[this.f4350e.ordinal()]) {
                            case 1:
                                return h(254);
                            case 2:
                                return i(254, 231);
                            case 3:
                                return i(254, 230);
                            case 4:
                                return i(254, 239);
                            case 5:
                                return i(254, 238);
                            case 6:
                                return i(254, PsExtractor.VIDEO_STREAM_MASK);
                        }
                    }
                    break;
            }
            return new byte[0];
        }

        int r(int i) {
            int i2 = a.b[this.f4349d.l().ordinal()];
            if (i2 == 1) {
                for (int i3 : b) {
                    if (i3 >= i) {
                        return i3;
                    }
                }
            } else if (i2 == 2) {
                for (int i4 : c) {
                    if (i4 >= i) {
                        return i4;
                    }
                }
            }
            for (int i5 : a) {
                if (i5 >= i) {
                    return i5;
                }
            }
            int[] iArr = a;
            return iArr[iArr.length - 1];
        }

        Mode s() {
            return this.f4350e;
        }

        Mode t() {
            b bVar = this.h;
            return bVar == null ? Mode.ASCII : bVar.o();
        }

        Mode u() {
            b bVar = this.h;
            return bVar == null ? Mode.ASCII : bVar.f4350e;
        }

        byte[] x() {
            int i = (this.f4352g / 3) * 2;
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2 += 2) {
                int i3 = (i2 / 2) * 3;
                y(bArr, i2, w(this.f4349d.charAt(this.f4351f + i3)), w(this.f4349d.charAt(this.f4351f + i3 + 1)), w(this.f4349d.charAt(this.f4351f + i3 + 2)));
            }
            return bArr;
        }
    }

    private static final class c extends com.google.zxing.common.g {
        private final SymbolShapeHint c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f4353d;

        private c(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2) {
            super(str, charset, i);
            this.c = symbolShapeHint;
            this.f4353d = i2;
        }

        /* synthetic */ c(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2, a aVar) {
            this(str, charset, i, symbolShapeHint, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int k() {
            return this.f4353d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SymbolShapeHint l() {
            return this.c;
        }
    }

    private static final class d {
        private final byte[] a;

        d(b bVar) {
            int i;
            c cVar = bVar.f4349d;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i2 = 0;
            int iC = ((bVar.f4350e == Mode.C40 || bVar.f4350e == Mode.TEXT || bVar.f4350e == Mode.X12) && bVar.o() != Mode.ASCII) ? c(b.h(254), arrayList) + 0 : 0;
            for (b bVar2 = bVar; bVar2 != null; bVar2 = bVar2.h) {
                iC += c(bVar2.m(), arrayList);
                if (bVar2.h == null || bVar2.u() != bVar2.s()) {
                    if (bVar2.s() == Mode.B256) {
                        if (iC <= 249) {
                            arrayList.add(0, Byte.valueOf((byte) iC));
                            i = iC + 1;
                        } else {
                            arrayList.add(0, Byte.valueOf((byte) (iC % 250)));
                            arrayList.add(0, Byte.valueOf((byte) ((iC / 250) + 249)));
                            i = iC + 2;
                        }
                        arrayList2.add(Integer.valueOf(arrayList.size()));
                        arrayList3.add(Integer.valueOf(i));
                    }
                    c(bVar2.q(), arrayList);
                    iC = 0;
                }
            }
            if (cVar.k() == 5) {
                c(b.h(236), arrayList);
            } else if (cVar.k() == 6) {
                c(b.h(237), arrayList);
            }
            if (cVar.f() > 0) {
                c(b.h(232), arrayList);
            }
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                a(arrayList, arrayList.size() - ((Integer) arrayList2.get(i3)).intValue(), ((Integer) arrayList3.get(i3)).intValue());
            }
            int iR = bVar.r(arrayList.size());
            if (arrayList.size() < iR) {
                arrayList.add((byte) -127);
            }
            while (arrayList.size() < iR) {
                arrayList.add(Byte.valueOf((byte) d(arrayList.size() + 1)));
            }
            this.a = new byte[arrayList.size()];
            while (true) {
                byte[] bArr = this.a;
                if (i2 >= bArr.length) {
                    return;
                }
                bArr[i2] = ((Byte) arrayList.get(i2)).byteValue();
                i2++;
            }
        }

        static void a(List<Byte> list, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = i + i3;
                int iByteValue = (list.get(i4).byteValue() & 255) + (((i4 + 1) * 149) % 255) + 1;
                if (iByteValue > 255) {
                    iByteValue += InputDeviceCompat.SOURCE_ANY;
                }
                list.set(i4, Byte.valueOf((byte) iByteValue));
            }
        }

        static int c(byte[] bArr, List<Byte> list) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                list.add(0, Byte.valueOf(bArr[length]));
            }
            return bArr.length;
        }

        private static int d(int i) {
            int i2 = ((i * 149) % 253) + 1 + 129;
            return i2 <= 254 ? i2 : i2 - 254;
        }

        public byte[] b() {
            return this.a;
        }
    }

    private MinimalEncoder() {
    }

    static void e(b[][] bVarArr, b bVar) {
        int i = bVar.f4351f + bVar.f4352g;
        if (bVarArr[i][bVar.o().ordinal()] == null || bVarArr[i][bVar.o().ordinal()].i > bVar.i) {
            bVarArr[i][bVar.o().ordinal()] = bVar;
        }
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, null, -1, SymbolShapeHint.FORCE_NONE);
    }

    public static String encodeHighLevel(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint) {
        int i2;
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            i2 = 5;
            str = str.substring(7, str.length() - 2);
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            i2 = 6;
            str = str.substring(7, str.length() - 2);
        } else {
            i2 = 0;
        }
        return new String(g(str, charset, i, symbolShapeHint, i2), StandardCharsets.ISO_8859_1);
    }

    static void f(c cVar, b[][] bVarArr, int i, b bVar) {
        if (cVar.a(i)) {
            e(bVarArr, new b(cVar, Mode.ASCII, i, 1, bVar, null));
            return;
        }
        char cCharAt = cVar.charAt(i);
        char c2 = 0;
        if (bVar == null || bVar.o() != Mode.EDF) {
            if (HighLevelEncoder.d(cCharAt) && cVar.g(i, 2) && HighLevelEncoder.d(cVar.charAt(i + 1))) {
                e(bVarArr, new b(cVar, Mode.ASCII, i, 2, bVar, null));
            } else {
                e(bVarArr, new b(cVar, Mode.ASCII, i, 1, bVar, null));
            }
            Mode[] modeArr = {Mode.C40, Mode.TEXT};
            int i2 = 0;
            while (i2 < 2) {
                Mode mode = modeArr[i2];
                int[] iArr = new int[1];
                if (i(cVar, i, mode == Mode.C40, iArr) > 0) {
                    e(bVarArr, new b(cVar, mode, i, iArr[c2], bVar, null));
                }
                i2++;
                c2 = 0;
            }
            if (cVar.g(i, 3) && HighLevelEncoder.i(cVar.charAt(i)) && HighLevelEncoder.i(cVar.charAt(i + 1)) && HighLevelEncoder.i(cVar.charAt(i + 2))) {
                e(bVarArr, new b(cVar, Mode.X12, i, 3, bVar, null));
            }
            e(bVarArr, new b(cVar, Mode.B256, i, 1, bVar, null));
        }
        int i3 = 0;
        while (i3 < 3) {
            int i4 = i + i3;
            if (!cVar.g(i4, 1) || !HighLevelEncoder.g(cVar.charAt(i4))) {
                break;
            }
            i3++;
            e(bVarArr, new b(cVar, Mode.EDF, i, i3, bVar, null));
        }
        if (i3 == 3 && cVar.g(i, 4) && HighLevelEncoder.g(cVar.charAt(i + 3))) {
            e(bVarArr, new b(cVar, Mode.EDF, i, 4, bVar, null));
        }
    }

    static byte[] g(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2) {
        return h(new c(str, charset, i, symbolShapeHint, i2, null)).b();
    }

    static d h(c cVar) {
        int length = cVar.length();
        int i = 0;
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, 6);
        f(cVar, bVarArr, 0, null);
        for (int i2 = 1; i2 <= length; i2++) {
            for (int i3 = 0; i3 < 6; i3++) {
                if (bVarArr[i2][i3] != null && i2 < length) {
                    f(cVar, bVarArr, i2, bVarArr[i2][i3]);
                }
            }
            for (int i4 = 0; i4 < 6; i4++) {
                bVarArr[i2 - 1][i4] = null;
            }
        }
        int i5 = -1;
        int i6 = Integer.MAX_VALUE;
        while (i < 6) {
            if (bVarArr[length][i] != null) {
                b bVar = bVarArr[length][i];
                int i7 = (i < 1 || i > 3) ? bVar.i : bVar.i + 1;
                if (i7 < i6) {
                    i5 = i;
                    i6 = i7;
                }
            }
            i++;
        }
        if (i5 >= 0) {
            return new d(bVarArr[length][i5]);
        }
        throw new IllegalStateException("Failed to encode \"" + cVar + "\"");
    }

    static int i(c cVar, int i, boolean z, int[] iArr) {
        int i2 = 0;
        for (int i3 = i; i3 < cVar.length(); i3++) {
            if (cVar.a(i3)) {
                iArr[0] = 0;
                return 0;
            }
            char cCharAt = cVar.charAt(i3);
            if ((z && HighLevelEncoder.f(cCharAt)) || (!z && HighLevelEncoder.h(cCharAt))) {
                i2++;
            } else if (j(cCharAt, cVar.f())) {
                int i4 = cCharAt & 255;
                i2 = (i4 < 128 || (!(z && HighLevelEncoder.f((char) (i4 + (-128)))) && (z || !HighLevelEncoder.h((char) (i4 + (-128)))))) ? i2 + 4 : i2 + 3;
            } else {
                i2 += 2;
            }
            if (i2 % 3 == 0 || ((i2 - 2) % 3 == 0 && i3 + 1 == cVar.length())) {
                iArr[0] = (i3 - i) + 1;
                return (int) Math.ceil(((double) i2) / 3.0d);
            }
        }
        iArr[0] = 0;
        return 0;
    }

    static boolean j(char c2, int i) {
        return c2 != i && c2 >= 128 && c2 <= 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean k(char c2) {
        return c2 <= 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(char c2, int i) {
        for (char c3 : a) {
            if (c3 == c2) {
                return true;
            }
        }
        return c2 == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(char c2) {
        return k(c2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(char c2, int i) {
        return l(c2, i);
    }
}
