package com.applovin.exoplayer2.b;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.gameloft.adsmanager.JavaUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final int[] jt = {1, 2, 3, 6};
    private static final int[] ju = {48000, 44100, 32000};
    private static final int[] jv = {24000, 22050, 16000};
    private static final int[] jw = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] jx = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, JavaUtils.Constants.BANNER_WIDTH_DP, 384, 448, 512, 576, 640};
    private static final int[] jy = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static final class a {
        public final int dL;
        public final int dM;

        @Nullable
        public final String eg;
        public final int ir;
        public final int jA;
        public final int jz;

        private a(@Nullable String str, int i, int i2, int i3, int i4, int i5) {
            this.eg = str;
            this.ir = i;
            this.dL = i2;
            this.dM = i3;
            this.jz = i4;
            this.jA = i5;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return jt[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int a(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static com.applovin.exoplayer2.v a(com.applovin.exoplayer2.l.y yVar, String str, String str2, @Nullable com.applovin.exoplayer2.d.e eVar) {
        int i = ju[(yVar.po() & PsExtractor.AUDIO_STREAM) >> 6];
        int iPo = yVar.po();
        int i2 = jw[(iPo & 56) >> 3];
        if ((iPo & 4) != 0) {
            i2++;
        }
        return new v.a().g(str).m(MimeTypes.AUDIO_AC3).N(i2).O(i).a(eVar).j(str2).bT();
    }

    public static int b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i = iPosition; i <= iLimit; i++) {
            if ((ai.b(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - iPosition;
            }
        }
        return -1;
    }

    public static com.applovin.exoplayer2.v b(com.applovin.exoplayer2.l.y yVar, String str, String str2, @Nullable com.applovin.exoplayer2.d.e eVar) {
        yVar.fz(2);
        int i = ju[(yVar.po() & PsExtractor.AUDIO_STREAM) >> 6];
        int iPo = yVar.po();
        int i2 = jw[(iPo & 14) >> 1];
        if ((iPo & 1) != 0) {
            i2++;
        }
        if (((yVar.po() & 30) >> 1) > 0 && (2 & yVar.po()) != 0) {
            i2 += 2;
        }
        return new v.a().g(str).m((yVar.pj() <= 0 || (yVar.po() & 1) == 0) ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_E_AC3_JOC).N(i2).O(i).a(eVar).j(str2).bT();
    }

    public static int c(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        return j((bArr[4] & 192) >> 6, bArr[4] & 63);
    }

    public static a c(com.applovin.exoplayer2.l.x xVar) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iBQ;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int iIl = xVar.il();
        xVar.bR(40);
        boolean z = xVar.bQ(5) > 10;
        xVar.fx(iIl);
        int i11 = -1;
        if (z) {
            xVar.bR(16);
            int iBQ2 = xVar.bQ(2);
            if (iBQ2 == 0) {
                i11 = 0;
            } else if (iBQ2 == 1) {
                i11 = 1;
            } else if (iBQ2 == 2) {
                i11 = 2;
            }
            xVar.bR(3);
            int iBQ3 = (xVar.bQ(11) + 1) * 2;
            int iBQ4 = xVar.bQ(2);
            if (iBQ4 == 3) {
                i7 = jv[xVar.bQ(2)];
                iBQ = 3;
                i6 = 6;
            } else {
                iBQ = xVar.bQ(2);
                i6 = jt[iBQ];
                i7 = ju[iBQ4];
            }
            int i12 = i6 * 256;
            int iBQ5 = xVar.bQ(3);
            boolean zIk = xVar.ik();
            int i13 = jw[iBQ5] + (zIk ? 1 : 0);
            xVar.bR(10);
            if (xVar.ik()) {
                xVar.bR(8);
            }
            if (iBQ5 == 0) {
                xVar.bR(5);
                if (xVar.ik()) {
                    xVar.bR(8);
                }
            }
            if (i11 == 1 && xVar.ik()) {
                xVar.bR(16);
            }
            if (xVar.ik()) {
                if (iBQ5 > 2) {
                    xVar.bR(2);
                }
                if ((iBQ5 & 1) == 0 || iBQ5 <= 2) {
                    i9 = 6;
                } else {
                    i9 = 6;
                    xVar.bR(6);
                }
                if ((iBQ5 & 4) != 0) {
                    xVar.bR(i9);
                }
                if (zIk && xVar.ik()) {
                    xVar.bR(5);
                }
                if (i11 == 0) {
                    if (xVar.ik()) {
                        i10 = 6;
                        xVar.bR(6);
                    } else {
                        i10 = 6;
                    }
                    if (iBQ5 == 0 && xVar.ik()) {
                        xVar.bR(i10);
                    }
                    if (xVar.ik()) {
                        xVar.bR(i10);
                    }
                    int iBQ6 = xVar.bQ(2);
                    if (iBQ6 == 1) {
                        xVar.bR(5);
                    } else if (iBQ6 == 2) {
                        xVar.bR(12);
                    } else if (iBQ6 == 3) {
                        int iBQ7 = xVar.bQ(5);
                        if (xVar.ik()) {
                            xVar.bR(5);
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                xVar.bR(4);
                            }
                            if (xVar.ik()) {
                                if (xVar.ik()) {
                                    xVar.bR(4);
                                }
                                if (xVar.ik()) {
                                    xVar.bR(4);
                                }
                            }
                        }
                        if (xVar.ik()) {
                            xVar.bR(5);
                            if (xVar.ik()) {
                                xVar.bR(7);
                                if (xVar.ik()) {
                                    xVar.bR(8);
                                }
                            }
                        }
                        xVar.bR((iBQ7 + 2) * 8);
                        xVar.pi();
                    }
                    if (iBQ5 < 2) {
                        if (xVar.ik()) {
                            xVar.bR(14);
                        }
                        if (iBQ5 == 0 && xVar.ik()) {
                            xVar.bR(14);
                        }
                    }
                    if (xVar.ik()) {
                        if (iBQ == 0) {
                            xVar.bR(5);
                        } else {
                            for (int i14 = 0; i14 < i6; i14++) {
                                if (xVar.ik()) {
                                    xVar.bR(5);
                                }
                            }
                        }
                    }
                }
            }
            if (xVar.ik()) {
                xVar.bR(5);
                if (iBQ5 == 2) {
                    xVar.bR(4);
                }
                if (iBQ5 >= 6) {
                    xVar.bR(2);
                }
                if (xVar.ik()) {
                    xVar.bR(8);
                }
                if (iBQ5 == 0 && xVar.ik()) {
                    xVar.bR(8);
                }
                if (iBQ4 < 3) {
                    xVar.ph();
                }
            }
            if (i11 == 0 && iBQ != 3) {
                xVar.ph();
            }
            if (i11 == 2 && (iBQ == 3 || xVar.ik())) {
                i8 = 6;
                xVar.bR(6);
            } else {
                i8 = 6;
            }
            str = (xVar.ik() && xVar.bQ(i8) == 1 && xVar.bQ(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i4 = i11;
            i5 = i12;
            i = iBQ3;
            i2 = i7;
            i3 = i13;
        } else {
            xVar.bR(32);
            int iBQ8 = xVar.bQ(2);
            String str2 = iBQ8 == 3 ? null : MimeTypes.AUDIO_AC3;
            int iJ = j(iBQ8, xVar.bQ(6));
            xVar.bR(8);
            int iBQ9 = xVar.bQ(3);
            if ((iBQ9 & 1) != 0 && iBQ9 != 1) {
                xVar.bR(2);
            }
            if ((iBQ9 & 4) != 0) {
                xVar.bR(2);
            }
            if (iBQ9 == 2) {
                xVar.bR(2);
            }
            int[] iArr = ju;
            str = str2;
            i = iJ;
            i2 = iBQ8 < iArr.length ? iArr[iBQ8] : -1;
            i3 = jw[iBQ9] + (xVar.ik() ? 1 : 0);
            i4 = -1;
            i5 = 1536;
        }
        return new a(str, i4, i3, i2, i, i5);
    }

    public static int d(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            return 40 << ((bArr[(bArr[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
        }
        return 0;
    }

    private static int j(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = ju;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = jy;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = jx[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }
}
