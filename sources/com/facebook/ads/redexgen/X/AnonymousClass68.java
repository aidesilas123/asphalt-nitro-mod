package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.applovin.exoplayer2.common.base.Ascii;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.68, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass68 {
    public static String A00;
    public static byte[] A01;
    public static String[] A02 = {"o8zuart55Bmx3Pw0EGryupigSLJoPiZx", "bq35BXrVyo2MmN2pvK0AAoIbsBJXmHFn", "Ag4UQwTEuL9TJhKNxG6", "PmxOul6ExA7xevKGmIJ7", "bJjslG0QPgIDYXjJzGe0RXJuWF5PAt6I", "GLZoSVJacutm5kJ9CSmVpuybEaBnhneX", "dIwLXajRtHFv7I4e8IdUhcaSFtkhp8vw", "TtnuuoV6cihzxwpt43jVepBLS"};
    public static final String A03;

    static {
        A05();
        A03 = AnonymousClass60.class.getSimpleName();
        A00 = A04(173, 52, 75);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.AnonymousClass60 A00(com.facebook.ads.redexgen.X.C7S r5) {
        /*
            android.os.Looper r1 = android.os.Looper.myLooper()
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            if (r1 == r0) goto L4b
            com.facebook.ads.redexgen.X.60 r4 = A01(r5)
            if (r4 == 0) goto L36
            java.lang.String r0 = r4.A03()
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass68.A02
            r0 = 0
            r1 = r1[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            r0 = 76
            if (r1 == r0) goto L2d
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass68.A02
            java.lang.String r1 = "uy9l7RLQ2P1HyKRuXc5qKTdvpqbxTZwF"
            r0 = 4
            r2[r0] = r1
            if (r3 == 0) goto L3a
        L36:
            com.facebook.ads.redexgen.X.60 r4 = A02(r5)
        L3a:
            if (r4 == 0) goto L46
            java.lang.String r0 = r4.A03()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L4a
        L46:
            com.facebook.ads.redexgen.X.60 r4 = A03(r5)
        L4a:
            return r4
        L4b:
            r2 = 0
            r1 = 43
            r0 = 9
            java.lang.String r1 = A04(r2, r1, r0)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass68.A00(com.facebook.ads.redexgen.X.7S):com.facebook.ads.redexgen.X.60");
    }

    public static AnonymousClass60 A01(C7S c7s) {
        C7W c7wA7h = c7s.A04().A7h();
        if (c7wA7h != null) {
            return new AnonymousClass60(c7wA7h.getId(), c7wA7h.A8w(), EnumC08025z.A03);
        }
        return null;
    }

    public static AnonymousClass60 A02(C7S c7s) {
        Object objA00;
        Method methodA02;
        Object objA002;
        Method methodA022 = AnonymousClass69.A02(A00, A04(257, 29, 114), Context.class);
        if (methodA022 == null || (objA00 = AnonymousClass69.A00(null, methodA022, c7s)) == null || ((Integer) objA00).intValue() != 0 || (methodA02 = AnonymousClass69.A02(A04(65, 57, 11), A04(232, 20, 55), Context.class)) == null || (objA002 = AnonymousClass69.A00(null, methodA02, c7s)) == null) {
            return null;
        }
        Method methodA01 = AnonymousClass69.A01(objA002.getClass(), A04(252, 5, 38), new Class[0]);
        Method methodA012 = AnonymousClass69.A01(objA002.getClass(), A04(286, 24, 120), new Class[0]);
        if (methodA01 == null || methodA012 == null) {
            return null;
        }
        String str = (String) AnonymousClass69.A00(objA002, methodA01, new Object[0]);
        Boolean bool = (Boolean) AnonymousClass69.A00(objA002, methodA012, new Object[0]);
        if (str != null) {
            return new AnonymousClass60(str, bool != null && bool.booleanValue(), EnumC08025z.A07);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo] */
    public static AnonymousClass60 A03(C7S c7s) {
        AnonymousClass67 anonymousClass67 = new AnonymousClass67();
        Intent intent = new Intent(A04(122, 51, 52));
        intent.setPackage(A04(43, 22, 2));
        if (c7s.bindService(intent, anonymousClass67, 1)) {
            try {
                final IBinder iBinderA02 = anonymousClass67.A02();
                ?? r0 = new IInterface(iBinderA02) { // from class: com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo
                    public static byte[] A01;
                    public static String[] A02 = {"", "dlCQJjSx2v0yIAE7uR5", "YVJONne7N3U8xm", "", "eKTK4BSI8P33PVYq98zfXeBzSnXDY", "", "Oc9p6kWmaRe51UGQv0AehnzsYEIJ", "vamZVSY5oxMc9Fm9XA4FwhL"};
                    public IBinder A00;

                    static {
                        A01();
                    }

                    {
                        this.A00 = iBinderA02;
                    }

                    public static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                        int i4 = 0;
                        while (true) {
                            int length = bArrCopyOfRange.length;
                            String[] strArr = A02;
                            if (strArr[5].length() != strArr[0].length()) {
                                throw new RuntimeException();
                            }
                            A02[3] = "";
                            if (i4 >= length) {
                                return new String(bArrCopyOfRange);
                            }
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
                            i4++;
                        }
                    }

                    public static void A01() {
                        A01 = new byte[]{42, 54, 52, -11, 46, 54, 54, 46, 51, 44, -11, 40, 53, 43, 57, 54, 48, 43, -11, 46, 52, 58, -11, 40, 43, 58, -11, 48, 43, 44, 53, 59, 48, 45, 48, 44, 57, -11, 48, 53, 59, 44, 57, 53, 40, 51, -11, Ascii.DLE, 8, 43, 61, 44, 57, 59, 48, 58, 48, 53, 46, Ascii.DLE, 43, Ascii.SUB, 44, 57, 61, 48, 42, 44};
                    }

                    public final String A02() throws RemoteException {
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken(A00(0, 68, 119));
                            this.A00.transact(1, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            String string = parcelObtain2.readString();
                            return string != null ? string : A00(0, 0, 88);
                        } finally {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    }

                    public final boolean A03() throws RemoteException {
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken(A00(0, 68, 119));
                            boolean z = true;
                            parcelObtain.writeInt(1);
                            this.A00.transact(2, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            if (parcelObtain2.readInt() == 0) {
                                z = false;
                            }
                            return z;
                        } finally {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    }

                    @Override // android.os.IInterface
                    public final IBinder asBinder() {
                        return this.A00;
                    }
                };
                return new AnonymousClass60(r0.A02(), r0.A03(), EnumC08025z.A08);
            } catch (Throwable th) {
                try {
                    c7s.A07().A9M(A04(225, 7, 30), C08417x.A1Q, new C08427y(th));
                } finally {
                    c7s.unbindService(anonymousClass67);
                }
            }
        }
        return null;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        byte[] bArr = {112, 82, 93, 93, 92, 71, 19, 84, 86, 71, 19, 82, 87, 69, 86, 65, 71, 90, 64, 90, 93, 84, 19, 90, 93, 85, 92, 19, 92, 93, 19, 94, 82, 90, 93, 19, 71, 91, 65, 86, 82, 87, Ascii.GS, 91, 87, 85, Ascii.SYN, 95, 87, 87, 95, 84, 93, Ascii.SYN, 89, 86, 92, 74, 87, 81, 92, Ascii.SYN, 95, 85, 75, 82, 94, 92, Ascii.US, 86, 94, 94, 86, 93, 84, Ascii.US, 80, 95, 85, 67, 94, 88, 85, Ascii.US, 86, 92, 66, Ascii.US, 80, 85, 66, Ascii.US, 88, 85, 84, 95, 69, 88, 87, 88, 84, 67, Ascii.US, 112, 85, 71, 84, 67, 69, 88, 66, 88, 95, 86, 120, 85, 114, 93, 88, 84, 95, 69, 109, 97, 99, 32, 105, 97, 97, 105, 98, 107, 32, 111, 96, 106, 124, 97, 103, 106, 32, 105, 99, 125, 32, 111, 106, 125, 32, 103, 106, 107, 96, 122, 103, 104, 103, 107, 124, 32, 125, 107, 124, 120, 103, 109, 107, 32, 93, 90, 79, 92, 90, Ascii.DC2, Ascii.RS, Ascii.FS, 95, Ascii.SYN, Ascii.RS, Ascii.RS, Ascii.SYN, Ascii.GS, Ascii.DC4, 95, Ascii.DLE, Ascii.US, Ascii.NAK, 3, Ascii.RS, Ascii.CAN, Ascii.NAK, 95, Ascii.SYN, Ascii.FS, 2, 95, Ascii.DC2, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.US, 95, 54, Ascii.RS, Ascii.RS, Ascii.SYN, Ascii.GS, Ascii.DC4, 33, Ascii.GS, Ascii.DLE, 8, 34, Ascii.DC4, 3, 7, Ascii.CAN, Ascii.DC2, Ascii.DC4, 2, 36, 5, Ascii.CAN, Ascii.GS, 67, 65, 74, 65, 86, 77, 71, 106, 104, 121, 76, 105, 123, 104, Ascii.DEL, 121, 100, 126, 100, 99, 106, 68, 105, 68, 99, 107, 98, 123, 121, 104, 85, 120, 33, 59, Ascii.SI, 39, 39, 47, 36, 45, Ascii.CAN, 36, 41, 49, Ascii.ESC, 45, 58, 62, 33, 43, 45, 59, 9, 62, 41, 33, 36, 41, 42, 36, 45, 43, 49, Ascii.SO, 43, 47, 43, 54, 3, 38, Ascii.SYN, 48, 35, 33, 41, 43, 44, 37, 7, 44, 35, 32, 46, 39, 38};
        if (A02[0].charAt(25) != 'L') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "5c2qL4dH8BvO0Uzn9h0t1hzuT";
        strArr[3] = "iopOujFX2mYmGwDZvEry";
        A01 = bArr;
    }
}
