package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.i;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {
    public static final byte[] Z = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] a0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    public static final UUID b0 = new UUID(72057594037932032L, -9223371306706625679L);
    public com.fyber.inneractive.sdk.player.exoplayer2.util.f B;
    public com.fyber.inneractive.sdk.player.exoplayer2.util.f C;
    public boolean D;
    public int E;
    public long F;
    public long G;
    public int H;
    public int I;
    public int[] J;
    public int K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public byte S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public boolean X;
    public h Y;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.b a;
    public final f b;
    public final SparseArray<c> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k f2302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k f2303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k f2304g;
    public final k h;
    public final k i;
    public final k j;
    public final k k;
    public final k l;
    public final k m;
    public ByteBuffer n;
    public long o;
    public c t;
    public boolean u;
    public int v;
    public long w;
    public boolean x;
    public long p = -1;
    public long q = C.TIME_UNSET;
    public long r = C.TIME_UNSET;
    public long s = C.TIME_UNSET;
    public long y = -1;
    public long z = -1;
    public long A = C.TIME_UNSET;

    public class a implements i {
    }

    public final class b implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.c {
        public b() {
        }

        public /* synthetic */ b(d dVar, a aVar) {
            this();
        }

        public void a(int i, double d2) throws l {
            d dVar = d.this;
            dVar.getClass();
            if (i == 181) {
                dVar.t.I = (int) d2;
            }
            if (i == 17545) {
                dVar.r = (long) d2;
                return;
            }
            switch (i) {
                case 21969:
                    dVar.t.w = (float) d2;
                    break;
                case 21970:
                    dVar.t.x = (float) d2;
                    break;
                case 21971:
                    dVar.t.y = (float) d2;
                    break;
                case 21972:
                    dVar.t.z = (float) d2;
                    break;
                case 21973:
                    dVar.t.A = (float) d2;
                    break;
                case 21974:
                    dVar.t.B = (float) d2;
                    break;
                case 21975:
                    dVar.t.C = (float) d2;
                    break;
                case 21976:
                    dVar.t.D = (float) d2;
                    break;
                case 21977:
                    dVar.t.E = (float) d2;
                    break;
                case 21978:
                    dVar.t.F = (float) d2;
                    break;
            }
        }

        public void a(int i, int i2, g gVar) throws InterruptedException, IOException {
            int i3;
            int i4;
            int[] iArr;
            d dVar = d.this;
            dVar.getClass();
            int i5 = 0;
            if (i != 161 && i != 163) {
                if (i == 16981) {
                    c cVar = dVar.t;
                    byte[] bArr = new byte[i2];
                    cVar.f2307f = bArr;
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr, 0, i2, false);
                    return;
                }
                if (i == 18402) {
                    c cVar2 = dVar.t;
                    byte[] bArr2 = new byte[i2];
                    cVar2.f2308g = bArr2;
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr2, 0, i2, false);
                    return;
                }
                if (i == 21419) {
                    Arrays.fill(dVar.i.a, (byte) 0);
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(dVar.i.a, 4 - i2, i2, false);
                    dVar.i.e(0);
                    dVar.v = (int) dVar.i.m();
                    return;
                }
                if (i == 25506) {
                    c cVar3 = dVar.t;
                    byte[] bArr3 = new byte[i2];
                    cVar3.h = bArr3;
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr3, 0, i2, false);
                    return;
                }
                if (i != 30322) {
                    throw new l("Unexpected id: " + i);
                }
                c cVar4 = dVar.t;
                byte[] bArr4 = new byte[i2];
                cVar4.o = bArr4;
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr4, 0, i2, false);
                return;
            }
            int i6 = 8;
            int i7 = 1;
            if (dVar.E == 0) {
                dVar.K = (int) dVar.b.a(gVar, false, true, 8);
                dVar.L = dVar.b.c;
                dVar.G = C.TIME_UNSET;
                dVar.E = 1;
                dVar.f2304g.r();
            }
            c cVar5 = dVar.c.get(dVar.K);
            if (cVar5 == null) {
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c(i2 - dVar.L);
                dVar.E = 0;
                return;
            }
            if (dVar.E == 1) {
                dVar.a(gVar, 3);
                int i8 = (dVar.f2304g.a[2] & 6) >> 1;
                if (i8 == 0) {
                    dVar.I = 1;
                    int[] iArrA = d.a(dVar.J, 1);
                    dVar.J = iArrA;
                    iArrA[0] = (i2 - dVar.L) - 3;
                } else {
                    if (i != 163) {
                        throw new l("Lacing only supported in SimpleBlocks.");
                    }
                    int i9 = 4;
                    dVar.a(gVar, 4);
                    int i10 = (dVar.f2304g.a[3] & 255) + 1;
                    dVar.I = i10;
                    int[] iArrA2 = d.a(dVar.J, i10);
                    dVar.J = iArrA2;
                    if (i8 == 2) {
                        int i11 = (i2 - dVar.L) - 4;
                        int i12 = dVar.I;
                        Arrays.fill(iArrA2, 0, i12, i11 / i12);
                    } else {
                        if (i8 != 1) {
                            if (i8 != 3) {
                                throw new l("Unexpected lacing value: " + i8);
                            }
                            int i13 = 0;
                            int i14 = 0;
                            while (true) {
                                int i15 = dVar.I - i7;
                                if (i13 >= i15) {
                                    dVar.J[i15] = ((i2 - dVar.L) - i9) - i14;
                                    break;
                                }
                                dVar.J[i13] = i5;
                                i9++;
                                dVar.a(gVar, i9);
                                int i16 = i9 - 1;
                                if (dVar.f2304g.a[i16] == 0) {
                                    throw new l("No valid varint length mask found");
                                }
                                long j = 0;
                                int i17 = 0;
                                while (true) {
                                    if (i17 >= i6) {
                                        break;
                                    }
                                    int i18 = i7 << (7 - i17);
                                    if ((dVar.f2304g.a[i16] & i18) != 0) {
                                        i9 += i17;
                                        dVar.a(gVar, i9);
                                        j = dVar.f2304g.a[i16] & 255 & (~i18);
                                        for (int i19 = i16 + 1; i19 < i9; i19++) {
                                            j = (j << 8) | ((long) (dVar.f2304g.a[i19] & 255));
                                        }
                                        if (i13 > 0) {
                                            j -= (1 << ((i17 * 7) + 6)) - 1;
                                        }
                                    } else {
                                        i17++;
                                        i6 = 8;
                                        i7 = 1;
                                    }
                                }
                                long j2 = j;
                                if (j2 < -2147483648L || j2 > 2147483647L) {
                                    break;
                                }
                                int i20 = (int) j2;
                                int[] iArr2 = dVar.J;
                                if (i13 != 0) {
                                    i20 += iArr2[i13 - 1];
                                }
                                iArr2[i13] = i20;
                                i14 += iArr2[i13];
                                i13++;
                                i5 = 0;
                                i6 = 8;
                                i7 = 1;
                            }
                            throw new l("EBML lacing sample size out of range.");
                        }
                        int i21 = 0;
                        int i22 = 0;
                        while (true) {
                            i3 = dVar.I - 1;
                            if (i21 >= i3) {
                                break;
                            }
                            dVar.J[i21] = 0;
                            do {
                                i9++;
                                dVar.a(gVar, i9);
                                i4 = dVar.f2304g.a[i9 - 1] & 255;
                                iArr = dVar.J;
                                iArr[i21] = iArr[i21] + i4;
                            } while (i4 == 255);
                            i22 += iArr[i21];
                            i21++;
                        }
                        dVar.J[i3] = ((i2 - dVar.L) - i9) - i22;
                    }
                }
                byte[] bArr5 = dVar.f2304g.a;
                dVar.F = dVar.A + dVar.a((bArr5[1] & 255) | (bArr5[0] << 8));
                byte[] bArr6 = dVar.f2304g.a;
                dVar.M = ((cVar5.c == 2 || (i == 163 && (bArr6[2] & 128) == 128)) ? 1 : 0) | ((bArr6[2] & 8) == 8 ? Integer.MIN_VALUE : 0);
                dVar.E = 2;
                dVar.H = 0;
            }
            if (i != 163) {
                dVar.a(gVar, cVar5, dVar.J[0]);
                return;
            }
            while (true) {
                int i23 = dVar.H;
                if (i23 >= dVar.I) {
                    dVar.E = 0;
                    return;
                } else {
                    dVar.a(gVar, cVar5, dVar.J[i23]);
                    dVar.a(cVar5, dVar.F + ((long) ((dVar.H * cVar5.f2305d) / 1000)));
                    dVar.H++;
                }
            }
        }

        public void a(int i, long j) throws l {
            d dVar = d.this;
            dVar.getClass();
            if (i == 20529) {
                if (j == 0) {
                    return;
                }
                throw new l("ContentEncodingOrder " + j + " not supported");
            }
            if (i == 20530) {
                if (j == 1) {
                    return;
                }
                throw new l("ContentEncodingScope " + j + " not supported");
            }
            switch (i) {
                case 131:
                    dVar.t.c = (int) j;
                    return;
                case 136:
                    dVar.t.L = j == 1;
                    return;
                case 155:
                    dVar.G = dVar.a(j);
                    return;
                case 159:
                    dVar.t.G = (int) j;
                    return;
                case 176:
                    dVar.t.j = (int) j;
                    return;
                case 179:
                    dVar.B.a(dVar.a(j));
                    return;
                case 186:
                    dVar.t.k = (int) j;
                    return;
                case 215:
                    dVar.t.b = (int) j;
                    return;
                case 231:
                    dVar.A = dVar.a(j);
                    return;
                case 241:
                    if (dVar.D) {
                        return;
                    }
                    dVar.C.a(j);
                    dVar.D = true;
                    return;
                case 251:
                    dVar.X = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    throw new l("ContentCompAlgo " + j + " not supported");
                case 17029:
                    if (j < 1 || j > 2) {
                        throw new l("DocTypeReadVersion " + j + " not supported");
                    }
                    return;
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    throw new l("EBMLReadVersion " + j + " not supported");
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    throw new l("ContentEncAlgo " + j + " not supported");
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    throw new l("AESSettingsCipherMode " + j + " not supported");
                case 21420:
                    dVar.w = j + dVar.p;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        dVar.t.p = 0;
                        return;
                    }
                    if (i2 == 1) {
                        dVar.t.p = 2;
                        return;
                    } else if (i2 == 3) {
                        dVar.t.p = 1;
                        return;
                    } else {
                        if (i2 != 15) {
                            return;
                        }
                        dVar.t.p = 3;
                        return;
                    }
                case 21680:
                    dVar.t.l = (int) j;
                    return;
                case 21682:
                    dVar.t.n = (int) j;
                    return;
                case 21690:
                    dVar.t.m = (int) j;
                    return;
                case 21930:
                    dVar.t.M = j == 1;
                    return;
                case 22186:
                    dVar.t.J = j;
                    return;
                case 22203:
                    dVar.t.K = j;
                    return;
                case 25188:
                    dVar.t.H = (int) j;
                    return;
                case 2352003:
                    dVar.t.f2305d = (int) j;
                    return;
                case 2807729:
                    dVar.q = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                dVar.t.t = 2;
                                return;
                            } else {
                                if (i3 != 2) {
                                    return;
                                }
                                dVar.t.t = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    dVar.t.s = 6;
                                    return;
                                } else if (i4 == 18) {
                                    dVar.t.s = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            dVar.t.s = 3;
                            return;
                        case 21947:
                            c cVar = dVar.t;
                            cVar.q = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                cVar.r = 1;
                                return;
                            }
                            if (i5 == 9) {
                                cVar.r = 6;
                                return;
                            } else {
                                if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                    cVar.r = 2;
                                    return;
                                }
                                return;
                            }
                        case 21948:
                            dVar.t.u = (int) j;
                            return;
                        case 21949:
                            dVar.t.v = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }

        public void a(int i, long j, long j2) throws l {
            d dVar = d.this;
            dVar.getClass();
            if (i == 160) {
                dVar.X = false;
                return;
            }
            if (i == 174) {
                dVar.t = new c();
                return;
            }
            if (i == 187) {
                dVar.D = false;
                return;
            }
            if (i == 19899) {
                dVar.v = -1;
                dVar.w = -1L;
                return;
            }
            if (i == 20533) {
                dVar.t.f2306e = true;
                return;
            }
            if (i == 21968) {
                dVar.t.q = true;
                return;
            }
            if (i == 408125543) {
                long j3 = dVar.p;
                if (j3 != -1 && j3 != j) {
                    throw new l("Multiple Segment elements not supported");
                }
                dVar.p = j;
                dVar.o = j2;
                return;
            }
            if (i == 475249515) {
                dVar.B = new com.fyber.inneractive.sdk.player.exoplayer2.util.f(32);
                dVar.C = new com.fyber.inneractive.sdk.player.exoplayer2.util.f(32);
            } else if (i == 524531317 && !dVar.u) {
                if (dVar.f2301d && dVar.y != -1) {
                    dVar.x = true;
                } else {
                    dVar.Y.a(new m.a(dVar.s));
                    dVar.u = true;
                }
            }
        }

        public void a(int i, String str) throws l {
            d dVar = d.this;
            dVar.getClass();
            if (i == 134) {
                dVar.t.a = str;
                return;
            }
            if (i != 17026) {
                if (i != 2274716) {
                    return;
                }
                dVar.t.N = str;
            } else {
                if ("webm".equals(str) || "matroska".equals(str)) {
                    return;
                }
                throw new l("DocType " + str + " not supported");
            }
        }

        public boolean a(int i) {
            d.this.getClass();
            return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
        }
    }

    public static final class c {
        public boolean L;
        public n O;
        public int P;
        public String a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2305d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2306e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte[] f2307f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f2308g;
        public byte[] h;
        public com.fyber.inneractive.sdk.player.exoplayer2.drm.a i;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = 0;
        public byte[] o = null;
        public int p = -1;
        public boolean q = false;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = 1000;
        public int v = 200;
        public float w = -1.0f;
        public float x = -1.0f;
        public float y = -1.0f;
        public float z = -1.0f;
        public float A = -1.0f;
        public float B = -1.0f;
        public float C = -1.0f;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public int G = 1;
        public int H = -1;
        public int I = 8000;
        public long J = 0;
        public long K = 0;
        public boolean M = true;
        public String N = "eng";
    }

    public d(com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.b bVar, int i) {
        this.a = bVar;
        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a) bVar).a(new b(this, null));
        this.f2301d = (i & 1) == 0;
        this.b = new f();
        this.c = new SparseArray<>();
        this.f2304g = new k(4);
        this.h = new k(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new k(4);
        this.f2302e = new k(com.fyber.inneractive.sdk.player.exoplayer2.util.i.a);
        this.f2303f = new k(4);
        this.j = new k();
        this.k = new k();
        this.l = new k(8);
        this.m = new k();
    }

    public static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0005 A[SYNTHETIC] */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r9, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l r10) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r8.W = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3d
            boolean r3 = r8.W
            if (r3 != 0) goto L3d
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.b r2 = r8.a
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a r2 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a) r2
            boolean r2 = r2.a(r9)
            if (r2 == 0) goto L5
            r3 = r9
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b r3 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) r3
            long r3 = r3.c
            boolean r5 = r8.x
            if (r5 == 0) goto L28
            r8.z = r3
            long r3 = r8.y
            r10.a = r3
            r8.x = r0
        L26:
            r3 = 1
            goto L3a
        L28:
            boolean r3 = r8.u
            if (r3 == 0) goto L39
            long r3 = r8.z
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L39
            r10.a = r3
            r8.z = r5
            goto L26
        L39:
            r3 = 0
        L3a:
            if (r3 == 0) goto L5
            return r1
        L3d:
            if (r2 == 0) goto L40
            goto L41
        L40:
            r0 = -1
        L41:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.d.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l):int");
    }

    public final int a(g gVar, n nVar, int i) throws InterruptedException, IOException {
        int iA;
        int iA2 = this.j.a();
        if (iA2 > 0) {
            iA = Math.min(i, iA2);
            nVar.a(this.j, iA);
        } else {
            iA = nVar.a(gVar, i, false);
        }
        this.N += iA;
        this.V += iA;
        return iA;
    }

    public final long a(long j) throws l {
        long j2 = this.q;
        if (j2 != C.TIME_UNSET) {
            return u.a(j, j2, 1000L);
        }
        throw new l("Can't scale timecode prior to timecodeScale being set.");
    }

    public final void a() {
        this.N = 0;
        this.V = 0;
        this.U = 0;
        this.O = false;
        this.P = false;
        this.R = false;
        this.T = 0;
        this.S = (byte) 0;
        this.Q = false;
        this.j.r();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.A = C.TIME_UNSET;
        this.E = 0;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a aVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a) this.a;
        aVar.f2298e = 0;
        aVar.b.clear();
        f fVar = aVar.c;
        fVar.b = 0;
        fVar.c = 0;
        f fVar2 = this.b;
        fVar2.b = 0;
        fVar2.c = 0;
        a();
    }

    public final void a(g gVar, int i) throws InterruptedException, IOException {
        k kVar = this.f2304g;
        if (kVar.c >= i) {
            return;
        }
        if (kVar.b() < i) {
            k kVar2 = this.f2304g;
            byte[] bArr = kVar2.a;
            kVar2.a(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i)), this.f2304g.c);
        }
        k kVar3 = this.f2304g;
        byte[] bArr2 = kVar3.a;
        int i2 = kVar3.c;
        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr2, i2, i - i2, false);
        this.f2304g.d(i);
    }

    public final void a(g gVar, c cVar, int i) throws InterruptedException, IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(cVar.a)) {
            byte[] bArr = Z;
            int length = bArr.length + i;
            if (this.k.b() < length) {
                this.k.a = Arrays.copyOf(bArr, length + i);
            }
            ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.k.a, bArr.length, i, false);
            this.k.e(0);
            this.k.d(length);
            return;
        }
        n nVar = cVar.O;
        if (!this.O) {
            if (cVar.f2306e) {
                this.M &= -1073741825;
                if (!this.P) {
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.f2304g.a, 0, 1, false);
                    this.N++;
                    byte[] bArr2 = this.f2304g.a;
                    if ((bArr2[0] & 128) == 128) {
                        throw new l("Extension bit is set in signal byte");
                    }
                    this.S = bArr2[0];
                    this.P = true;
                }
                byte b2 = this.S;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.M |= 1073741824;
                    if (!this.Q) {
                        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.l.a, 0, 8, false);
                        this.N += 8;
                        this.Q = true;
                        k kVar = this.f2304g;
                        kVar.a[0] = (byte) ((z ? 128 : 0) | 8);
                        kVar.e(0);
                        nVar.a(this.f2304g, 1);
                        this.V++;
                        this.l.e(0);
                        nVar.a(this.l, 8);
                        this.V += 8;
                    }
                    if (z) {
                        if (!this.R) {
                            ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.f2304g.a, 0, 1, false);
                            this.N++;
                            this.f2304g.e(0);
                            this.T = this.f2304g.l();
                            this.R = true;
                        }
                        int i3 = this.T * 4;
                        this.f2304g.c(i3);
                        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.f2304g.a, 0, i3, false);
                        this.N += i3;
                        short s = (short) ((this.T / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.n;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.n = ByteBuffer.allocate(i4);
                        }
                        this.n.position(0);
                        this.n.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.T;
                            if (i5 >= i2) {
                                break;
                            }
                            int iO = this.f2304g.o();
                            if (i5 % 2 == 0) {
                                this.n.putShort((short) (iO - i6));
                            } else {
                                this.n.putInt(iO - i6);
                            }
                            i5++;
                            i6 = iO;
                        }
                        int i7 = (i - this.N) - i6;
                        if (i2 % 2 == 1) {
                            this.n.putInt(i7);
                        } else {
                            this.n.putShort((short) i7);
                            this.n.putInt(0);
                        }
                        this.m.a(this.n.array(), i4);
                        nVar.a(this.m, i4);
                        this.V += i4;
                    }
                }
            } else {
                byte[] bArr3 = cVar.f2307f;
                if (bArr3 != null) {
                    k kVar2 = this.j;
                    int length2 = bArr3.length;
                    kVar2.a = bArr3;
                    kVar2.c = length2;
                    kVar2.b = 0;
                }
            }
            this.O = true;
        }
        int i8 = i + this.j.c;
        if (!"V_MPEG4/ISO/AVC".equals(cVar.a) && !"V_MPEGH/ISO/HEVC".equals(cVar.a)) {
            while (true) {
                int i9 = this.N;
                if (i9 >= i8) {
                    break;
                } else {
                    a(gVar, nVar, i8 - i9);
                }
            }
        } else {
            byte[] bArr4 = this.f2303f.a;
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            int i10 = cVar.P;
            int i11 = 4 - i10;
            while (this.N < i8) {
                int i12 = this.U;
                if (i12 == 0) {
                    int iMin = Math.min(i10, this.j.a());
                    ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr4, i11 + iMin, i10 - iMin, false);
                    if (iMin > 0) {
                        k kVar3 = this.j;
                        System.arraycopy(kVar3.a, kVar3.b, bArr4, i11, iMin);
                        kVar3.b += iMin;
                    }
                    this.N += i10;
                    this.f2303f.e(0);
                    this.U = this.f2303f.o();
                    this.f2302e.e(0);
                    nVar.a(this.f2302e, 4);
                    this.V += 4;
                } else {
                    this.U = i12 - a(gVar, nVar, i12);
                }
            }
        }
        if ("A_VORBIS".equals(cVar.a)) {
            this.h.e(0);
            nVar.a(this.h, 4);
            this.V += 4;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(h hVar) {
        this.Y = hVar;
    }

    public final void a(c cVar, long j) {
        byte[] bytes;
        if ("S_TEXT/UTF8".equals(cVar.a)) {
            byte[] bArr = this.k.a;
            long j2 = this.G;
            if (j2 == C.TIME_UNSET) {
                bytes = a0;
            } else {
                int i = (int) (j2 / 3600000000L);
                long j3 = j2 - (((long) i) * 3600000000L);
                int i2 = (int) (j3 / 60000000);
                long j4 = j3 - ((long) (60000000 * i2));
                int i3 = (int) (j4 / 1000000);
                String str = String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - ((long) (o2.w * i3))) / 1000)));
                int i4 = u.a;
                bytes = str.getBytes(Charset.defaultCharset());
            }
            System.arraycopy(bytes, 0, bArr, 19, 12);
            n nVar = cVar.O;
            k kVar = this.k;
            nVar.a(kVar, kVar.c);
            this.V += this.k.c;
        }
        cVar.O.a(j, this.M, this.V, 0, cVar.f2308g);
        this.W = true;
        a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(g gVar) throws InterruptedException, IOException {
        e eVar = new e();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        long j = bVar.b;
        long j2 = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        if (j != -1 && j <= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            j2 = j;
        }
        int i = (int) j2;
        bVar.a(eVar.a.a, 0, 4, false);
        eVar.b = 4;
        for (long jM = eVar.a.m(); jM != 440786851; jM = ((jM << 8) & (-256)) | ((long) (eVar.a.a[0] & 255))) {
            int i2 = eVar.b + 1;
            eVar.b = i2;
            if (i2 == i) {
                return false;
            }
            bVar.a(eVar.a.a, 0, 1, false);
        }
        long jA = eVar.a(gVar);
        long j3 = eVar.b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (j != -1 && j3 + jA >= j) {
            return false;
        }
        while (true) {
            long j4 = eVar.b;
            long j5 = j3 + jA;
            if (j4 >= j5) {
                return j4 == j5;
            }
            if (eVar.a(gVar) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = eVar.a(gVar);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                bVar.a((int) jA2, false);
                eVar.b = (int) (((long) eVar.b) + jA2);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
