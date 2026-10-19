package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.facebook.ads.redexgen.X.BL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XA<T extends BL> implements BK<T>, B1<T> {
    public static byte[] A0D;
    public static String[] A0E = {"ANYLgz", "oJggquXjFajkvVakw", "NhfBTMehdsUwmjJG25", "fCdIhqwNOTcaInr5tUyGNlroBtV", "OEWoY1V4f4faBwRg332bHxVOSHWwx21M", "QEXYlj0kmMt4ztT6jdLWJjem", "2UI8DlmhQXrJ84vyuAUmahlNAt", "mJ2nqf9sK7no"};
    public int A00;
    public Looper A01;
    public byte[] A02;
    public final int A03;
    public final B7 A04;
    public final BR<T> A05;
    public final BV A06;
    public final HashMap<String, String> A07;
    public final List<XB<T>> A08;
    public final List<XB<T>> A09;
    public final UUID A0A;
    public final boolean A0B;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/XA<TT;>.MediaDrmHandler; */
    public volatile BA A0C;

    static {
        A03();
    }

    public static DrmInitData.SchemeData A00(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.A01);
        int i = 0;
        while (true) {
            boolean z2 = false;
            if (i >= drmInitData.A01) {
                break;
            }
            DrmInitData.SchemeData schemeDataA01 = drmInitData.A01(i);
            if (schemeDataA01.A02(uuid) || (C9E.A01.equals(uuid) && schemeDataA01.A02(C9E.A02))) {
                z2 = true;
            }
            if (z2 && (schemeDataA01.A04 != null || z)) {
                arrayList.add(schemeDataA01);
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (C9E.A05.equals(uuid)) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) arrayList.get(i2);
                int iA00 = schemeData.A01() ? CJ.A00(schemeData.A04) : -1;
                if (C1078Hx.A02 < 23 && iA00 == 0) {
                    return schemeData;
                }
                if (C1078Hx.A02 >= 23 && iA00 == 1) {
                    return schemeData;
                }
            }
        }
        return (DrmInitData.SchemeData) arrayList.get(0);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr = A0E;
            if (strArr[1].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0E[4] = "NBGjCtubpQRAXyW4McbyIV8QsblEY4y1";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{105, 72, 75, 76, 88, 65, 89, 105, 95, 64, 126, 72, 94, 94, 68, 66, 67, 96, 74, 95, 53, 3, Ascii.FS, 56, Ascii.US, Ascii.CAN, 5, 53, Ascii.DLE, 5, Ascii.DLE, 81, Ascii.RS, Ascii.US, Ascii.GS, 8, 81, Ascii.DC2, Ascii.RS, Ascii.US, 5, Ascii.DLE, Ascii.CAN, Ascii.US, 2, 81, Ascii.DC2, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.US, 81, 33, 34, 34, 57, 81, 34, Ascii.DC2, Ascii.EM, Ascii.DC4, Ascii.FS, Ascii.DC4, 53, Ascii.DLE, 5, Ascii.DLE, 95, 81, 48, 2, 2, 4, Ascii.FS, Ascii.CAN, Ascii.US, Ascii.SYN, 81, 2, 4, 1, 1, Ascii.RS, 3, 5, 81, Ascii.ETB, Ascii.RS, 3, 75, 81, Ascii.US, Ascii.RS, Ascii.US, 77, 119, 118, 119, 103, 48, 54, 61, 48, 98, 100, 111, 114};
    }

    public final void A04(Handler handler, B8 b8) {
        this.A04.A03(handler, b8);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.facebook.ads.redexgen.X.BK
    public final BJ<T> A2X(Looper looper, DrmInitData drmInitData) {
        Looper looper2 = this.A01;
        HI.A04(looper2 == null || looper2 == looper);
        if (this.A09.isEmpty()) {
            this.A01 = looper;
            if (this.A0C == null) {
                this.A0C = new BA(this, looper);
            }
        }
        DrmInitData.SchemeData schemeDataA00 = null;
        XB<T> xb = null;
        if (this.A02 == null && (schemeDataA00 = A00(drmInitData, this.A0A, false)) == null) {
            BB bb = new BB(this.A0A);
            this.A04.A04(bb);
            return new X9(new BH(bb));
        }
        if (this.A0B) {
            byte[] bArr = schemeDataA00 != null ? schemeDataA00.A04 : null;
            if (A0E[7].length() == 0) {
                throw new RuntimeException();
            }
            A0E[7] = "zebyso9QALf6mFi2tznux8P";
            Iterator<XB<T>> it = this.A09.iterator();
            while (true) {
                if (!it.hasNext()) {
                    xb = null;
                    break;
                }
                XB<T> next = it.next();
                if (next.A0M(bArr)) {
                    xb = next;
                    break;
                }
            }
        } else if (!this.A09.isEmpty()) {
            xb = this.A09.get(0);
        }
        if (xb == null) {
            xb = new XB<>(this.A0A, this.A05, this, schemeDataA00, this.A00, this.A02, this.A07, this.A06, looper, this.A04, this.A03);
            this.A09.add(xb);
        }
        xb.A0G();
        return xb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b8, code lost:
    
        if (r4.equals(r5) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
    
        if (r4.equals(r5) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
    
        return true;
     */
    @Override // com.facebook.ads.redexgen.X.BK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A46(com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData r7) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XA.A46(com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.B1
    public final void ACb() {
        for (XB<T> xb : this.A08) {
            String[] strArr = A0E;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A0E[4] = "E3b0MKGlV7Qlh8NFsi3ziriRt4u9XqXm";
            xb.A0H();
        }
        this.A08.clear();
    }

    @Override // com.facebook.ads.redexgen.X.B1
    public final void ACc(Exception exc) {
        Iterator<XB<T>> it = this.A08.iterator();
        while (it.hasNext()) {
            it.next().A0K(exc);
        }
        this.A08.clear();
    }

    @Override // com.facebook.ads.redexgen.X.B1
    public final void AE4(XB<T> xb) {
        this.A08.add(xb);
        if (this.A08.size() == 1) {
            xb.A0I();
        }
    }

    @Override // com.facebook.ads.redexgen.X.BK
    public final void AEU(BJ<T> bj) {
        if (bj instanceof X9) {
            return;
        }
        XB<T> xb = (XB) bj;
        if (xb.A0L()) {
            this.A09.remove(xb);
            if (this.A08.size() > 1 && this.A08.get(0) == xb) {
                List<XB<T>> list = this.A08;
                if (A0E[7].length() == 0) {
                    throw new RuntimeException();
                }
                String[] strArr = A0E;
                strArr[1] = "8HEKS9j6P5APhESSR";
                strArr[3] = "SFo7ZRHt72jFDiQQTk8v57UjUPr";
                list.get(1).A0I();
            }
            this.A08.remove(xb);
        }
    }
}
