package lzma.sdk.lzma;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import lzma.sdk.rangecoder.BitTreeDecoder;
import lzma.sdk.rangecoder.Decoder;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private final f.a.a.a a = new f.a.a.a();
    private final Decoder b = new Decoder();
    private final short[] c = new short[PsExtractor.AUDIO_STREAM];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final short[] f10526d = new short[12];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final short[] f10527e = new short[12];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final short[] f10528f = new short[12];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final short[] f10529g = new short[12];
    private final short[] h = new short[PsExtractor.AUDIO_STREAM];
    private final BitTreeDecoder[] i = new BitTreeDecoder[4];
    private final short[] j = new short[114];
    private final BitTreeDecoder k = new BitTreeDecoder(4);
    private final C0602a l = new C0602a();
    private final C0602a m = new C0602a();
    private final b n = new b();
    private int o = -1;
    private int p = -1;
    private int q;

    /* JADX INFO: renamed from: lzma.sdk.lzma.a$a, reason: collision with other inner class name */
    class C0602a {
        final short[] a = new short[2];
        final BitTreeDecoder[] b = new BitTreeDecoder[16];
        final BitTreeDecoder[] c = new BitTreeDecoder[16];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final BitTreeDecoder f10530d = new BitTreeDecoder(8);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f10531e = 0;

        C0602a() {
        }

        public void a(int i) {
            while (true) {
                int i2 = this.f10531e;
                if (i2 >= i) {
                    return;
                }
                this.b[i2] = new BitTreeDecoder(3);
                this.c[this.f10531e] = new BitTreeDecoder(3);
                this.f10531e++;
            }
        }

        public int b(Decoder decoder, int i) throws IOException {
            if (decoder.a(this.a, 0) == 0) {
                return this.b[i].a(decoder);
            }
            return (decoder.a(this.a, 1) == 0 ? this.c[i].a(decoder) : this.f10530d.a(decoder) + 8) + 8;
        }

        public void c() {
            Decoder.initBitModels(this.a);
            for (int i = 0; i < this.f10531e; i++) {
                this.b[i].b();
                this.c[i].b();
            }
            this.f10530d.b();
        }
    }

    class b {
        C0603a[] a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f10533d;

        /* JADX INFO: renamed from: lzma.sdk.lzma.a$b$a, reason: collision with other inner class name */
        class C0603a {
            final short[] a = new short[768];

            C0603a() {
            }

            public byte a(Decoder decoder) throws IOException {
                int iA = 1;
                do {
                    iA = decoder.a(this.a, iA) | (iA << 1);
                } while (iA < 256);
                return (byte) iA;
            }

            public byte b(Decoder decoder, byte b) throws IOException {
                int iA = 1;
                while (true) {
                    int i = (b >> 7) & 1;
                    b = (byte) (b << 1);
                    int iA2 = decoder.a(this.a, ((i + 1) << 8) + iA);
                    iA = (iA << 1) | iA2;
                    if (i != iA2) {
                        while (iA < 256) {
                            iA = (iA << 1) | decoder.a(this.a, iA);
                        }
                    } else if (iA >= 256) {
                        break;
                    }
                }
                return (byte) iA;
            }

            public void c() {
                Decoder.initBitModels(this.a);
            }
        }

        b() {
        }

        public void a(int i, int i2) {
            if (this.a != null && this.b == i2 && this.c == i) {
                return;
            }
            this.c = i;
            this.f10533d = (1 << i) - 1;
            this.b = i2;
            int i3 = 1 << (i2 + i);
            this.a = new C0603a[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.a[i4] = new C0603a();
            }
        }

        C0603a b(int i, byte b) {
            C0603a[] c0603aArr = this.a;
            int i2 = i & this.f10533d;
            int i3 = this.b;
            return c0603aArr[(i2 << i3) + ((b & 255) >>> (8 - i3))];
        }

        public void c() {
            int i = 1 << (this.b + this.c);
            for (int i2 = 0; i2 < i; i2++) {
                this.a[i2].c();
            }
        }
    }

    public a() {
        for (int i = 0; i < 4; i++) {
            this.i[i] = new BitTreeDecoder(6);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0115, code lost:
    
        r17.a.c();
        r17.a.g();
        r17.b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0124, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(java.io.InputStream r18, java.io.OutputStream r19, long r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: lzma.sdk.lzma.a.a(java.io.InputStream, java.io.OutputStream, long):boolean");
    }

    void b() throws IOException {
        this.a.e(false);
        Decoder.initBitModels(this.c);
        Decoder.initBitModels(this.h);
        Decoder.initBitModels(this.f10526d);
        Decoder.initBitModels(this.f10527e);
        Decoder.initBitModels(this.f10528f);
        Decoder.initBitModels(this.f10529g);
        Decoder.initBitModels(this.j);
        this.n.c();
        for (int i = 0; i < 4; i++) {
            this.i[i].b();
        }
        this.l.c();
        this.m.c();
        this.k.b();
        this.b.c();
    }

    public boolean c(byte[] bArr) {
        if (bArr.length < 5) {
            return false;
        }
        int i = bArr[0] & 255;
        int i2 = i % 9;
        int i3 = i / 9;
        int i4 = i3 % 5;
        int i5 = i3 / 5;
        int i6 = 0;
        int i7 = 0;
        while (i6 < 4) {
            int i8 = i6 + 1;
            i7 += (bArr[i8] & 255) << (i6 * 8);
            i6 = i8;
        }
        return e(i2, i4, i5) && d(i7);
    }

    boolean d(int i) {
        if (i < 0) {
            return false;
        }
        if (this.o != i) {
            this.o = i;
            int iMax = Math.max(i, 1);
            this.p = iMax;
            this.a.b(Math.max(iMax, 4096));
        }
        return true;
    }

    boolean e(int i, int i2, int i3) {
        if (i > 8 || i2 > 4 || i3 > 4) {
            return false;
        }
        this.n.a(i2, i);
        int i4 = 1 << i3;
        this.l.a(i4);
        this.m.a(i4);
        this.q = i4 - 1;
        return true;
    }
}
