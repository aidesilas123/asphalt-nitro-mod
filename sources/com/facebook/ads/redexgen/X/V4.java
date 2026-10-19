package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V4 implements InterfaceC1033Gc {
    public static byte[] A07;
    public static String[] A08 = {"CpiOlZ", "ukFexlYSIMwQqH0UvFPWGqG0YthdqpHq", "2yw2Gs2GC2jxZI0Hgcr1UjVZgWf7BNvx", "7SwPVGS0jIrCQlvIcpAA6U9bhm4jPR5r", "7pQ8HXcSNS6Xqd33VYljkiTEbCcLAkDq", "kKrkJSZnynA87WgMdnYScFfJH7qszUrQ", "lo5", "kH5jcAc5XMYXCXQVRoC"};
    public long A00;
    public AssetFileDescriptor A01;
    public Uri A02;
    public InputStream A03;
    public boolean A04;
    public final Resources A05;
    public final InterfaceC1053Gy<? super V4> A06;

    static {
        A01();
    }

    public V4(Context context, InterfaceC1053Gy<? super V4> interfaceC1053Gy) {
        this.A05 = context.getResources();
        this.A06 = interfaceC1053Gy;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-9, 10, Ascii.CAN, Ascii.DC4, Ascii.SUB, Ascii.ETB, 8, 10, -59, Ascii.SO, 9, 10, 19, Ascii.EM, Ascii.SO, Ascii.VT, Ascii.SO, 10, Ascii.ETB, -59, Ascii.DC2, Ascii.SUB, Ascii.CAN, Ascii.EM, -59, 7, 10, -59, 6, 19, -59, Ascii.SO, 19, Ascii.EM, 10, Ascii.FF, 10, Ascii.ETB, -45, 5, 2, -7, -48, Ascii.GS, 37, 35, 36, -48, 37, 35, Ascii.NAK, -48, 35, 19, Ascii.CAN, Ascii.NAK, Ascii.GS, Ascii.NAK, -48, 34, 17, 39, 34, Ascii.NAK, 35, Ascii.US, 37, 34, 19, Ascii.NAK, 36, 19, 41, 36, Ascii.ETB, 37, 33, 39, 36, Ascii.NAK, Ascii.ETB};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws C1052Gx {
        try {
            Uri uri = c1037Gg.A04;
            this.A02 = uri;
            if (!TextUtils.equals(A00(70, 11, 107), uri.getScheme())) {
                throw new C1052Gx(A00(39, 31, 105));
            }
            try {
                this.A01 = this.A05.openRawResourceFd(Integer.parseInt(this.A02.getLastPathSegment()));
                FileInputStream fileInputStream = new FileInputStream(this.A01.getFileDescriptor());
                this.A03 = fileInputStream;
                fileInputStream.skip(this.A01.getStartOffset());
                if (this.A03.skip(c1037Gg.A03) < c1037Gg.A03) {
                    throw new EOFException();
                }
                if (c1037Gg.A02 != -1) {
                    this.A00 = c1037Gg.A02;
                } else {
                    long length = this.A01.getLength();
                    if (A08[7].length() != 19) {
                        throw new RuntimeException();
                    }
                    A08[0] = "nEQCtk";
                    this.A00 = length != -1 ? length - c1037Gg.A03 : -1L;
                }
                this.A04 = true;
                InterfaceC1053Gy<? super V4> interfaceC1053Gy = this.A06;
                if (interfaceC1053Gy != null) {
                    interfaceC1053Gy.ADF(this, c1037Gg);
                }
                return this.A00;
            } catch (NumberFormatException unused) {
                throw new C1052Gx(A00(0, 39, 94));
            }
        } catch (IOException e2) {
            throw new C1052Gx(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws C1052Gx {
        this.A02 = null;
        try {
            try {
                InputStream inputStream = this.A03;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.A03 = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.A01;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e2) {
                        throw new C1052Gx(e2);
                    }
                } finally {
                    this.A01 = null;
                    if (this.A04) {
                        this.A04 = false;
                        InterfaceC1053Gy<? super V4> interfaceC1053Gy = this.A06;
                        if (interfaceC1053Gy != null) {
                            interfaceC1053Gy.ADE(this);
                        }
                    }
                }
            } catch (Throwable th) {
                this.A03 = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor2 = this.A01;
                        if (assetFileDescriptor2 != null) {
                            assetFileDescriptor2.close();
                        }
                        this.A01 = null;
                        if (this.A04) {
                            this.A04 = false;
                            InterfaceC1053Gy<? super V4> interfaceC1053Gy2 = this.A06;
                            if (interfaceC1053Gy2 != null) {
                                interfaceC1053Gy2.ADE(this);
                            }
                        }
                        throw th;
                    } finally {
                        this.A01 = null;
                        if (this.A04) {
                            this.A04 = false;
                            InterfaceC1053Gy<? super V4> interfaceC1053Gy3 = this.A06;
                            if (interfaceC1053Gy3 != null) {
                                interfaceC1053Gy3.ADE(this);
                            }
                        }
                    }
                } catch (IOException e3) {
                    throw new C1052Gx(e3);
                }
            }
        } catch (IOException e4) {
            throw new C1052Gx(e4);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws C1052Gx {
        if (i2 == 0) {
            return 0;
        }
        long j = this.A00;
        if (A08[3].charAt(24) == 'w') {
            throw new RuntimeException();
        }
        A08[0] = "oumASG";
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new C1052Gx(e2);
            }
        }
        int i3 = this.A03.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.A00 == -1) {
                return -1;
            }
            throw new C1052Gx(new EOFException());
        }
        long j2 = this.A00;
        if (j2 != -1) {
            this.A00 = j2 - ((long) i3);
        }
        InterfaceC1053Gy<? super V4> interfaceC1053Gy = this.A06;
        if (interfaceC1053Gy != null) {
            interfaceC1053Gy.AAm(this, i3);
        }
        return i3;
    }
}
