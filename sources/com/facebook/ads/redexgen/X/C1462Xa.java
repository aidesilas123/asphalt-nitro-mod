package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.util.common.Preconditions;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1462Xa implements InterfaceC08488e {
    public static byte[] A03;
    public static final String A04;
    public final Y9 A00;
    public final InterfaceC08588p<C1083Ic> A01;
    public final InterfaceC08588p<C1083Ic> A02;

    static {
        A03();
        A04 = C1462Xa.class.getSimpleName();
    }

    public C1462Xa(Y9 y9) throws IOException {
        this.A00 = y9;
        this.A01 = new XX(C08558m.A00(A00(11, 28, 31), y9), new C1464Xc(this));
        this.A02 = new XX(C08558m.A00(A00(322, 37, 102), y9), new C1463Xb(this));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(bArrCopyOfRange);
    }

    private List<JSONObject> A01(List<JSONObject> list, byte[] bArr, int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            if (i2 == 0) {
                break;
            }
            try {
                list.add(A02(bArr, i, i2));
            } catch (JSONException e2) {
                if (this.A00.A04().A8o()) {
                    Log.e(A04, A00(85, 45, 97), e2);
                }
                A05(C08417x.A2O, e2);
            }
            i += i2;
        }
        return list;
    }

    public static JSONObject A02(byte[] bArr, int i, int i2) throws JSONException {
        return new JSONObject(new String(Arrays.copyOfRange(bArr, i, i + i2)));
    }

    public static void A03() {
        A03 = new byte[]{102, 100, 43, 34, 100, 48, 61, 52, 33, 126, 100, Ascii.CAN, 61, Ascii.FS, 47, 60, 55, 45, 10, 45, 54, 43, 56, 62, 60, Ascii.VT, 60, 58, 54, 43, 61, Ascii.GS, 56, 45, 56, 59, 56, 42, 60, 105, 72, 65, 72, 89, 72, 73, Ascii.CR, 72, 91, 72, 67, 89, Ascii.ETB, Ascii.CR, Ascii.SI, 66, 101, 109, 104, 97, 96, 36, 112, 107, 36, 103, 104, 97, 101, 118, 36, 97, 114, 97, 106, 112, 119, 36, 119, 112, 107, 118, 101, 99, 97, 97, 70, 78, 75, 66, 67, 7, 83, 72, 7, 67, 66, 84, 66, 85, 78, 70, 75, 78, 93, 66, 7, 70, 73, 7, 66, 81, 66, 73, 83, 7, 65, 85, 72, 74, 7, 67, 70, 83, 70, 69, 70, 84, 66, 7, 107, 76, 68, 65, 72, 73, Ascii.CR, 89, 66, Ascii.CR, 64, 66, 91, 72, Ascii.CR, 72, 91, 72, 67, 89, 94, Ascii.CR, 75, 95, 66, 64, Ascii.CR, 68, 67, 0, 75, 65, 68, 74, 69, 89, Ascii.CR, 94, 89, 66, 95, 76, 74, 72, Ascii.CR, 79, 76, 78, 70, Ascii.CR, 89, 66, Ascii.CR, 72, 91, 72, 67, 89, 94, Ascii.CR, 73, 76, 89, 76, 79, 76, 94, 72, 118, 81, 89, 92, 85, 84, Ascii.DLE, 68, 95, Ascii.DLE, 64, 81, 66, 67, 85, Ascii.DLE, 81, 94, Ascii.DLE, 85, 70, 85, 94, 68, Ascii.DLE, 86, 66, 95, 93, Ascii.DLE, 89, 94, Ascii.GS, 86, 92, 89, 87, 88, 68, Ascii.DLE, 67, 68, 95, 66, 81, 87, 85, 123, 92, 84, 81, 88, 89, Ascii.GS, 73, 82, Ascii.GS, 79, 88, 92, 89, Ascii.GS, 73, 85, 88, Ascii.GS, 83, 72, 80, 95, 88, 79, Ascii.GS, 82, 91, Ascii.GS, 88, 75, 88, 83, 73, 78, Ascii.GS, 91, 79, 82, 80, Ascii.GS, 89, 92, 73, 92, 95, 92, 78, 88, Ascii.FF, 43, 35, 38, 47, 46, 106, 62, 37, 106, 57, 47, 56, 35, 43, 38, 35, 48, 47, 106, 43, 46, 106, 47, 60, 47, 36, 62, 105, 78, 70, 76, 73, 71, 72, 84, Ascii.CR, 97, 68, 101, 86, 69, 78, 84, 115, 84, 79, 82, 65, 71, 69, 114, 69, 67, 79, 82, 68, 100, 65, 84, 65, 66, 65, 83, 69, 56, Ascii.SI, 9, 5, Ascii.CAN, Ascii.SO, 74, Ascii.SO, Ascii.VT, Ascii.RS, Ascii.VT, 8, Ascii.VT, Ascii.EM, Ascii.SI, 74, Ascii.FF, Ascii.VT, 3, 6, Ascii.US, Ascii.CAN, Ascii.SI, 74, 5, 9, 9, Ascii.US, Ascii.CAN, Ascii.CAN, Ascii.SI, Ascii.SO, 74, Ascii.GS, 2, Ascii.SI, 4, 74, Ascii.CAN, Ascii.SI, Ascii.VT, Ascii.SO, 3, 4, Ascii.CR, 74, Ascii.SI, Ascii.FS, Ascii.SI, 4, Ascii.RS, Ascii.EM, 68, 61, 40, 40, 57, 49, 44, 40, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.EM, 47, 34, 95, 72, 78, 66, 95, 73, 114, 73, 76, 89, 76, 79, 76, 94, 72, 65, 87, 65, 65, 91, 93, 92, 109, 91, 86, 46, 56, 46, 46, 52, 50, 51, 2, 41, 52, 48, 56, 100, 121, 125, 117, 49, 42, 46, 32, 43, 88, 85, 92, 73, Ascii.FF, Ascii.ETB, Ascii.DC2, Ascii.ETB, Ascii.SYN, Ascii.SO, Ascii.ETB};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(int i, String str) {
        C08427y c08427y = new C08427y(str);
        c08427y.A03(1);
        this.A00.A07().A9N(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, 107), i, c08427y);
    }

    private void A05(int i, Throwable th) {
        this.A00.A07().A9M(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, 107), i, new C08427y(th));
    }

    public static byte[] A07(C7S c7s, String str, C1083Ic c1083Ic) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(TypedValues.CycleType.TYPE_WAVE_PERIOD, 2, 0), str);
            jSONObject.put(A00(466, 5, 3), c1083Ic.A08());
            jSONObject.put(A00(471, 4, 106), c1083Ic.A06().toString());
            jSONObject.put(A00(462, 4, 86), LM.A02(c1083Ic.A04()));
            jSONObject.put(A00(450, 12, 27), LM.A02(c1083Ic.A03()));
            jSONObject.put(A00(440, 10, 116), c1083Ic.A07());
            jSONObject.put(A00(419, 4, 62), new JSONObject(c1083Ic.A09()));
            jSONObject.put(A00(412, 7, 26), 0);
        } catch (JSONException e2) {
            if (c7s.A04().A8o()) {
                Log.e(A04, A00(294, 28, 12), e2);
            }
        }
        return jSONObject.toString().getBytes();
    }

    public static byte[] A09(JSONObject jSONObject) {
        return jSONObject.toString().getBytes();
    }

    public final int A0A() {
        try {
            return this.A01.A7f();
        } catch (C08678y e2) {
            if (!this.A00.A04().A8o()) {
                return 0;
            }
            Log.e(A04, A00(245, 49, 123), e2);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00f0 A[Catch: 8y -> 0x0136, TryCatch #4 {8y -> 0x0136, blocks: (B:33:0x00e4, B:35:0x00f0, B:36:0x00ff, B:22:0x0088, B:24:0x008e, B:26:0x009a, B:27:0x00da, B:39:0x0108, B:40:0x010c, B:42:0x0112, B:43:0x0122, B:44:0x0126, B:46:0x012c), top: B:59:0x00e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A0B(int r13, java.util.Set<java.lang.String> r14, java.util.Set<java.lang.String> r15) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1462Xa.A0B(int, java.util.Set, java.util.Set):int");
    }

    public final List<JSONObject> A0C(int i) {
        boolean z = false;
        if (i == -1) {
            z = true;
            i = 30;
        }
        int[] iArr = new int[i];
        byte[] bArr = new byte[i * 1000];
        List<JSONObject> linkedList = new LinkedList<>();
        LinkedList linkedList2 = new LinkedList();
        try {
            InterfaceC08578o interfaceC08578oA5a = this.A01.A5a(bArr, iArr);
            linkedList2.add(interfaceC08578oA5a);
            int iA5b = interfaceC08578oA5a.A5b();
            linkedList = A01(linkedList, bArr, iArr);
            while (interfaceC08578oA5a.AA0() && (iA5b < i || z)) {
                if (z) {
                    Arrays.fill(iArr, 0);
                } else {
                    iArr = new int[i - iA5b];
                }
                interfaceC08578oA5a = this.A01.A5a(bArr, iArr);
                linkedList2.add(interfaceC08578oA5a);
                linkedList = A01(linkedList, bArr, iArr);
            }
            Iterator<JSONObject> it = linkedList.iterator();
            while (it.hasNext()) {
                this.A02.AFq(A09(it.next()));
            }
            Iterator it2 = linkedList2.iterator();
            while (it2.hasNext()) {
                ((InterfaceC08578o) it2.next()).A4y();
            }
        } catch (C08678y e2) {
            if (this.A00.A04().A8o()) {
                Log.e(A04, A00(359, 53, 44), e2);
            }
            A05(C08417x.A2L, e2);
        }
        return linkedList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08488e
    public final void A4G() {
        try {
            this.A01.clear();
            this.A02.clear();
        } catch (C08678y e2) {
            if (this.A00.A04().A8o()) {
                Log.e(A04, A00(55, 30, 66), e2);
            }
            A05(C08417x.A2I, e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08488e
    public final void AGT(final C1083Ic c1083Ic, final AbstractC08458b<String> abstractC08458b) {
        Executor executor = ExecutorC1154La.A07;
        final InterfaceC08588p<C1083Ic> interfaceC08588p = this.A01;
        final Y9 y9 = this.A00;
        LX.A00(executor, new AsyncTask<Void, Void, String>(c1083Ic, abstractC08458b, interfaceC08588p, y9) { // from class: com.facebook.ads.redexgen.X.8f
            public static byte[] A05;
            public static String[] A06 = {"eZRg0", "9V6E8W", "xj5QhV", "OA95VIvTvwhgOpg1JzD5APn5ld4Fxl09", "KVXKxw3vFVm2nsonOqXLQ2M9", "1wiEXg5TWKy6aTJl", "hr3sX5JQ1zlqribj", "Vt9t5ut5ZgjhHbMTByjzA5y3IT5Rov5"};
            public C08678y A00;
            public final C7S A01;
            public final AbstractC08458b<String> A02;
            public final InterfaceC08588p<C1083Ic> A03;
            public final C1083Ic A04;

            static {
                A02();
            }

            {
                this.A04 = c1083Ic;
                this.A03 = interfaceC08588p;
                this.A02 = abstractC08458b;
                this.A01 = y9;
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
                }
                return new String(bArrCopyOfRange);
            }

            private final String A01(Void... voidArr) throws Throwable {
                if (K0.A02(this)) {
                    return null;
                }
                String string = null;
                try {
                    try {
                        string = UUID.randomUUID().toString();
                        this.A01.A07().A8b(this.A04.A06().toString());
                    } catch (C08678y e2) {
                        this.A00 = e2;
                        this.A01.A07().A9M(A00(44, 15, 76), C08417x.A2M, new C08427y(e2));
                    }
                    if (TextUtils.isEmpty(this.A04.A08())) {
                        return null;
                    }
                    if (this.A01.A04().A8o()) {
                        String str = A00(29, 15, 118) + this.A04.A06().toString() + A00(0, 1, 13) + this.A04.A09().toString();
                    }
                    this.A03.AFq(C1462Xa.A07(this.A01, string, this.A04));
                    return string;
                } catch (Throwable th) {
                    K0.A00(th, this);
                    return null;
                }
            }

            public static void A02() {
                A05 = new byte[]{Ascii.SUB, 40, Ascii.US, Ascii.US, 2, Ascii.US, 77, 0, 8, Ascii.RS, Ascii.RS, Ascii.FF, 10, 8, 77, Ascii.SO, Ascii.FF, 3, 3, 2, Ascii.EM, 77, Ascii.SI, 8, 77, 3, Ascii.CAN, 1, 1, Ascii.CR, 46, 38, 38, 40, 47, 38, 97, 36, 55, 36, 47, 53, 123, 97, 9, Ascii.RS, Ascii.CAN, Ascii.DC4, 9, Ascii.US, 36, Ascii.US, Ascii.SUB, Ascii.SI, Ascii.SUB, Ascii.EM, Ascii.SUB, 8, Ascii.RS};
            }

            private final void A03(String str) throws Throwable {
                if (K0.A02(this)) {
                    return;
                }
                try {
                    C08678y c08678y = this.A00;
                    if (c08678y == null) {
                        this.A02.A02(str);
                    } else {
                        this.A02.A01(0, (String) Preconditions.checkNotNull(c08678y.getMessage(), A00(1, 28, 90)));
                    }
                } catch (Throwable th) {
                    K0.A00(th, this);
                    String[] strArr = A06;
                    if (strArr[5].length() != strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    A06[1] = "UcJj";
                }
            }

            @Override // android.os.AsyncTask
            public final /* bridge */ /* synthetic */ String doInBackground(Void[] voidArr) throws Throwable {
                if (K0.A02(this)) {
                    return null;
                }
                try {
                    return A01(voidArr);
                } catch (Throwable th) {
                    K0.A00(th, this);
                    if (A06[7].length() != 31) {
                        throw new RuntimeException();
                    }
                    A06[1] = "V";
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public final /* bridge */ /* synthetic */ void onPostExecute(String str) throws Throwable {
                if (K0.A02(this)) {
                    return;
                }
                try {
                    A03(str);
                } catch (Throwable th) {
                    K0.A00(th, this);
                }
            }
        }, new Void[0]);
    }
}
