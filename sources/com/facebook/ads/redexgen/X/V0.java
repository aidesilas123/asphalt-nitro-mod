package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V0 implements InterfaceC1033Gc {
    public static byte[] A0L;
    public static String[] A0M = {"BZiYu5nwNf87X3b9kN", "UgTeeMN2jxyMd9Kylf", "PJ", "CPqLt3pCFfCSwfi", "XN4Dvc1", "tWEaaCCiJhgiXtacO5se5vgeqa", "S002dfR", "J7ycXdK5d"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public Uri A06;
    public InterfaceC1033Gc A07;
    public H6 A08;
    public String A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final InterfaceC1033Gc A0D;
    public final InterfaceC1033Gc A0E;
    public final InterfaceC1033Gc A0F;
    public final H2 A0G;
    public final H4 A0H;
    public final boolean A0I;
    public final boolean A0J;
    public final boolean A0K;

    static {
        A06();
    }

    public V0(H2 h2, InterfaceC1033Gc interfaceC1033Gc, InterfaceC1033Gc interfaceC1033Gc2, InterfaceC1031Ga interfaceC1031Ga, int i, H4 h4) {
        this.A0G = h2;
        this.A0D = interfaceC1033Gc2;
        this.A0I = (i & 1) != 0;
        this.A0K = (i & 2) != 0;
        this.A0J = (i & 4) != 0;
        this.A0F = interfaceC1033Gc;
        if (interfaceC1031Ga != null) {
            this.A0E = new V3(interfaceC1033Gc, interfaceC1031Ga);
        } else {
            this.A0E = null;
        }
        this.A0H = h4;
    }

    private int A00(C1037Gg c1037Gg) {
        if (this.A0K) {
            boolean z = this.A0C;
            String[] strArr = A0M;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[3] = "r97zDVaaptRGknr";
            strArr2[6] = "AimjfMN";
            if (z) {
                if (A0M[7].length() != 14) {
                    A0M[7] = "lgdHkpCnxjAeRqVRog4eGXXV3TVVS";
                    return 0;
                }
                A0M[4] = "GvTYan8nqvP";
                return 0;
            }
        }
        return (this.A0J && c1037Gg.A02 == -1) ? 1 : -1;
    }

    public static Uri A01(H2 h2, String str, Uri uri) {
        Uri uriA01 = HD.A01(h2.A6R(str));
        return uriA01 == null ? uri : uriA01;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 35);
        }
        return new String(bArrCopyOfRange);
    }

    private void A03() throws IOException {
        InterfaceC1033Gc interfaceC1033Gc = this.A07;
        if (interfaceC1033Gc == null) {
            return;
        }
        try {
            interfaceC1033Gc.close();
            this.A07 = null;
            this.A0A = false;
            H6 h6 = this.A08;
            if (A0M[5].length() != 26) {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[3] = "f78PdfdQFRIsoy9";
            strArr[6] = "Xl8bArW";
            if (h6 != null) {
                this.A0G.AES(h6);
                this.A08 = null;
            }
        } catch (Throwable th) {
            this.A07 = null;
            this.A0A = false;
            H6 h62 = this.A08;
            if (h62 != null) {
                this.A0G.AES(h62);
                this.A08 = null;
            }
            throw th;
        }
    }

    private void A04() {
        if (this.A0H == null || this.A04 <= 0) {
            return;
        }
        this.A0G.A6A();
        throw new NullPointerException(A02(0, 17, 18));
    }

    private void A05() throws IOException {
        this.A01 = 0L;
        if (A0C()) {
            this.A0G.AFD(this.A09, this.A03);
        }
    }

    public static void A06() {
        A0L = new byte[]{-92, -93, 120, -106, -104, -99, -102, -103, 119, -82, -87, -102, -88, -121, -102, -106, -103};
    }

    private void A07(IOException iOException) {
        if (A0A() || (iOException instanceof H0)) {
            this.A0C = true;
        }
    }

    private void A08(boolean z) throws IOException {
        H6 h6AFk;
        long jMin;
        C1037Gg c1037Gg;
        InterfaceC1033Gc interfaceC1033Gc;
        if (this.A0B) {
            h6AFk = null;
        } else if (this.A0I) {
            try {
                h6AFk = this.A0G.AFk(this.A09, this.A03);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            h6AFk = this.A0G.AFl(this.A09, this.A03);
        }
        if (h6AFk == null) {
            interfaceC1033Gc = this.A0F;
            c1037Gg = new C1037Gg(this.A06, this.A03, this.A01, this.A09, this.A00);
        } else if (h6AFk.A05) {
            Uri uriFromFile = Uri.fromFile(h6AFk.A03);
            long j = this.A03 - h6AFk.A02;
            long jMin2 = h6AFk.A01 - j;
            long j2 = this.A01;
            if (j2 != -1) {
                jMin2 = Math.min(jMin2, j2);
            }
            c1037Gg = new C1037Gg(uriFromFile, this.A03, j, jMin2, this.A09, this.A00);
            interfaceC1033Gc = this.A0D;
        } else {
            if (h6AFk.A02()) {
                jMin = this.A01;
            } else {
                jMin = h6AFk.A01;
                long j3 = this.A01;
                if (j3 != -1) {
                    jMin = Math.min(jMin, j3);
                }
            }
            c1037Gg = new C1037Gg(this.A06, this.A03, jMin, this.A09, this.A00);
            if (this.A0E != null) {
                interfaceC1033Gc = this.A0E;
            } else {
                interfaceC1033Gc = this.A0F;
                this.A0G.AES(h6AFk);
                h6AFk = null;
            }
        }
        this.A02 = (this.A0B || interfaceC1033Gc != this.A0F) ? Long.MAX_VALUE : this.A03 + 102400;
        if (z) {
            HI.A04(A09());
            if (interfaceC1033Gc == this.A0F) {
                return;
            }
            try {
                A03();
            } catch (Throwable th) {
                if (h6AFk.A01()) {
                    this.A0G.AES(h6AFk);
                }
                throw th;
            }
        }
        if (h6AFk != null && h6AFk.A01()) {
            this.A08 = h6AFk;
        }
        this.A07 = interfaceC1033Gc;
        this.A0A = c1037Gg.A02 == -1;
        long jADb = interfaceC1033Gc.ADb(c1037Gg);
        HE he = new HE();
        if (this.A0A) {
            if (A0M[2].length() != 2) {
                throw new RuntimeException();
            }
            A0M[7] = "GQ8HbidAJ3";
            if (jADb != -1) {
                this.A01 = jADb;
                HD.A05(he, this.A03 + jADb);
            }
        }
        if (A0B()) {
            Uri uriA85 = this.A07.A85();
            this.A05 = uriA85;
            if (true ^ this.A06.equals(uriA85)) {
                Uri uri = this.A05;
                if (A0M[5].length() != 26) {
                    HD.A06(he, uri);
                } else {
                    A0M[4] = "mDcPGOd9V6d2O";
                    HD.A06(he, uri);
                }
            } else {
                HD.A04(he);
            }
        }
        if (A0C()) {
            this.A0G.A3W(this.A09, he);
        }
    }

    private boolean A09() {
        return this.A07 == this.A0F;
    }

    private boolean A0A() {
        return this.A07 == this.A0D;
    }

    private boolean A0B() {
        return !A0A();
    }

    private boolean A0C() {
        return this.A07 == this.A0E;
    }

    public static boolean A0D(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof C1034Gd) && ((C1034Gd) cause).A00 == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        try {
            this.A09 = H8.A02(c1037Gg);
            Uri uri = c1037Gg.A04;
            this.A06 = uri;
            this.A05 = A01(this.A0G, this.A09, uri);
            this.A00 = c1037Gg.A00;
            this.A03 = c1037Gg.A03;
            this.A0B = A00(c1037Gg) != -1;
            if (c1037Gg.A02 != -1 || this.A0B) {
                this.A01 = c1037Gg.A02;
            } else {
                long jA6Q = this.A0G.A6Q(this.A09);
                this.A01 = jA6Q;
                if (jA6Q != -1) {
                    long j = jA6Q - c1037Gg.A03;
                    this.A01 = j;
                    if (j <= 0) {
                        throw new C1034Gd(0);
                    }
                }
            }
            A08(false);
            return this.A01;
        } catch (IOException e2) {
            A07(e2);
            throw e2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
        this.A06 = null;
        this.A05 = null;
        A04();
        try {
            A03();
        } catch (IOException e2) {
            A07(e2);
            throw e2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.A01 == 0) {
            return -1;
        }
        try {
            if (this.A03 >= this.A02) {
                A08(true);
            }
            int i3 = this.A07.read(bArr, i, i2);
            if (i3 != -1) {
                if (A0A()) {
                    this.A04 += (long) i3;
                }
                this.A03 += (long) i3;
                long j = this.A01;
                if (j != -1) {
                    this.A01 = j - ((long) i3);
                }
            } else {
                if (!this.A0A) {
                    long j2 = this.A01;
                    if (j2 <= 0) {
                        if (j2 == -1) {
                        }
                    }
                    A03();
                    A08(false);
                    return read(bArr, i, i2);
                }
                A05();
            }
            return i3;
        } catch (IOException e2) {
            if (this.A0A && A0D(e2)) {
                A05();
                return -1;
            }
            A07(e2);
            throw e2;
        }
    }
}
