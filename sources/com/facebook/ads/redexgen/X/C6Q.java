package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6Q, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C6Q {
    public static AnonymousClass00 A0A;
    public static List<String> A0B;
    public static byte[] A0C;
    public static String[] A0D = {"8gkZjHnxCvZyg7TzwjjGeSdvls9L7Gam", "fcbSC3ja3K2jNylkxCBC51G6bXitMdQ0", "2foOCT", "ocB0m3", "KfMQJM794wt5IuG", "feDb68pnVWWOEqV45c", "KnEa0S3Tnigt4irEXno07XBXpnYxFsFq", "aK1UKkDbG3zR1xh0x3umKxUvmkPLseuR"};
    public static final String A0E;
    public static final Map<String, AnonymousClass06> A0F;
    public static final Map<String, C6S> A0G;
    public long A00;
    public C1094In A01;
    public final C6R A03;
    public final C7S A04;
    public final boolean A08;
    public final boolean A09;
    public final Map<String, Bitmap> A07 = Collections.synchronizedMap(new HashMap());
    public final Handler A02 = new Handler(Looper.getMainLooper());
    public final List<Callable<Boolean>> A05 = new ArrayList();
    public final List<Callable<Boolean>> A06 = new ArrayList();

    static {
        A0F();
        A0E = C6Q.class.getSimpleName();
        A0F = Collections.synchronizedMap(new HashMap());
        A0G = Collections.synchronizedMap(new HashMap());
    }

    public C6Q(C7S c7s) {
        this.A04 = c7s;
        this.A03 = C6R.A06(c7s.A01());
        this.A08 = IP.A2E(c7s);
        this.A09 = IP.A2M(c7s, QJ.A03());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.07] */
    public static synchronized AnonymousClass00 A03(Y9 y9) {
        if (A0A == null) {
            A0A = AnonymousClass01.A00(y9, new Object() { // from class: com.facebook.ads.redexgen.X.07
                public int A00;
                public int A01;
                public boolean A02;
                public boolean A03;
                public boolean A04;

                public final AnonymousClass07 A00(int i) {
                    this.A00 = i;
                    return this;
                }

                public final AnonymousClass07 A01(int i) {
                    this.A01 = i;
                    return this;
                }

                public final AnonymousClass07 A02(boolean z) {
                    this.A02 = z;
                    return this;
                }

                public final AnonymousClass07 A03(boolean z) {
                    this.A03 = z;
                    return this;
                }

                public final AnonymousClass07 A04(boolean z) {
                    this.A04 = z;
                    return this;
                }

                public final AnonymousClass08 A05() {
                    return new AnonymousClass08(this.A00, this.A02, this.A01, this.A03, this.A04);
                }
            }.A00(IP.A05(y9)).A02(y9.A04().A8o()).A01(-1).A03(IP.A0m(y9)).A04(IP.A2L(y9)).A05(), A05(y9));
        }
        return A0A;
    }

    public static AnonymousClass06 A04(C7S c7s, String str) {
        AnonymousClass06 anonymousClass06 = A0F.get(str);
        return (!C6T.A06(c7s) || anonymousClass06 == null) ? new AnonymousClass06(str) : new AnonymousClass06(anonymousClass06);
    }

    public static YE A05(Y9 y9) {
        return new YE(y9);
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static synchronized List<String> A09(C7S c7s) {
        if (A0B == null) {
            ArrayList arrayList = new ArrayList();
            A0B = arrayList;
            A0J(arrayList, c7s);
        }
        return A0B;
    }

    public static AtomicBoolean A0D(ArrayList<Callable<Boolean>> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<Callable<Boolean>> it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A0D;
            if (strArr[3].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0D[5] = "";
            if (!zHasNext) {
                AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                try {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        Boolean bool = (Boolean) ((Future) it2.next()).get();
                        atomicBoolean.set(atomicBoolean.get() && bool != null && bool.booleanValue());
                    }
                } catch (InterruptedException | ExecutionException e2) {
                    Log.e(A0E, A08(78, 42, 23), e2);
                    atomicBoolean.set(false);
                }
                return atomicBoolean;
            }
            arrayList2.add(ExecutorC1154La.A02().submit(it.next()));
        }
    }

    public static void A0F() {
        A0C = new byte[]{123, -82, -85, -82, 124, -80, 123, -81, 107, -103, -103, 107, -105, -104, 107, 107, 96, 126, -128, -123, -126, 61, -112, -111, 126, -113, -111, -126, -127, 75, -119, -89, -87, -82, -81, -76, -83, 102, -87, -75, -77, -74, -78, -85, -70, -85, -113, -83, -81, -76, -75, -70, -77, 108, -78, -83, -75, -72, -79, -80, Ascii.DEL, -99, -97, -92, -91, -86, -93, 92, -81, -80, -99, -82, -80, -95, -96, 106, 106, 106, 102, -103, -124, -122, -111, -107, -118, -112, -113, 65, -104, -119, -118, -115, -122, 65, -122, -103, -122, -124, -106, -107, -118, -113, -120, 65, -124, -126, -124, -119, -122, 65, -123, -112, -104, -113, -115, -112, -126, -123, -108, 79, -86, 122, Ascii.DEL, -87, Ascii.DEL, Ascii.DEL, -79, -81, -79, -74, -77, -111, -67, -69, -66, -70, -77, -62, -73, -67, -68, -106, -67, -67, -71, 120, 118, 120, 125, 122, 91, 118, 126, -127, -118, -121, 122, 93, -124, -124, -128, -120, -101, -120, -122, -104, -105, -120, -24, -21, -35, -32, -27, -24, -38, -35, -40, -19, -30, -26, -34, -40, -26, -20, -96, -107, -100, -92};
    }

    public static void A0H(C7S c7s, String str) {
        C6S c6s;
        if (!C6T.A06(c7s) || TextUtils.isEmpty(str) || (c6s = A0G.get(str)) == null) {
            return;
        }
        c6s.A00 = A08(184, 4, 35);
        Y9 y9A01 = c7s.A01();
        QN qnA05 = QN.A05(y9A01);
        String strA08 = QN.A08(y9A01, C1132Kc.A00(str));
        if (strA08 == null) {
            strA08 = str;
        }
        C6T.A04(c7s, c6s, qnA05.A0H(strA08));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(EnumC1093Im enumC1093Im) {
        if (this.A01 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A08(172, 12, 111), LM.A04(this.A00));
        this.A01.A04(enumC1093Im, map);
    }

    public static void A0J(List<String> list, C7S c7s) {
        A0K(list, C1610bA.A01(c7s));
        A0K(list, C6R.A07(c7s));
    }

    public static void A0K(List<String> list, File file) {
        String path;
        if (file == null || (path = file.getPath()) == null) {
            return;
        }
        String[] strArr = A0D;
        if (strArr[3].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[3] = "Vghlgc";
        strArr2[2] = "qwUey9";
        if (path != A08(0, 0, 127)) {
            list.add(path.toLowerCase(Locale.getDefault()));
        }
    }

    public final Bitmap A0M(String str) {
        return this.A07.get(str);
    }

    public final Bitmap A0N(String str, int i, int i2) {
        if (!this.A08) {
            return this.A03.A0E(this.A04, str, i, i2, A08(168, 4, 114));
        }
        AnonymousClass06 anonymousClass06A04 = A04(this.A04, str);
        anonymousClass06A04.A03 = A08(184, 4, 35);
        anonymousClass06A04.A01 = i2;
        anonymousClass06A04.A00 = i;
        return A03(this.A04.A01()).AEh(anonymousClass06A04, true).A00();
    }

    public final File A0O(String str) {
        AnonymousClass06 anonymousClass06A04 = A04(this.A04, str);
        anonymousClass06A04.A03 = A08(184, 4, 35);
        return A03(this.A04.A01()).AEi(anonymousClass06A04);
    }

    public final File A0P(String str) {
        return this.A08 ? A0O(str) : this.A03.A0F(str);
    }

    public final String A0Q(String str) {
        return this.A08 ? A0R(str) : this.A03.A0G(str);
    }

    public final String A0R(String str) {
        AnonymousClass06 anonymousClass06A04 = A04(this.A04, str);
        anonymousClass06A04.A03 = A08(184, 4, 35);
        String strAEk = A03(this.A04.A01()).AEk(anonymousClass06A04);
        return strAEk != null ? strAEk : str;
    }

    public final String A0S(String str) {
        if (!this.A09) {
            return A0R(str);
        }
        A0H(this.A04, str);
        return str;
    }

    public final void A0T() {
        JU.A05(A08(126, 19, 68), A08(30, 16, 60), A08(0, 8, 64));
    }

    public final void A0U() {
        JU.A05(A08(145, 16, 11), A08(46, 14, 66), A08(120, 6, 61));
    }

    public final void A0V() {
        this.A07.clear();
    }

    public final void A0W(C6I c6i, C6J c6j) {
        JU.A05(A08(161, 7, 25), A08(60, 18, 50), A08(8, 8, 44));
        this.A00 = System.currentTimeMillis();
        C6T.A02(this.A04, c6j, C6T.A07, A08(16, 14, 19), -1L);
        ExecutorC1154La.A03().execute(new YF(this, new ArrayList(this.A05), c6j, c6i, new ArrayList(this.A06)));
        this.A05.clear();
        this.A06.clear();
    }

    public final void A0X(C6M c6m) {
        this.A05.add(new C6N(this, c6m));
    }

    public final void A0Y(C6M c6m) {
        c6m.A05 = true;
        this.A06.add(new C6N(this, c6m));
    }

    public final void A0Z(C6M c6m) {
        c6m.A05 = true;
        if (this.A09) {
            this.A06.add(new C6L(this, c6m));
        } else {
            this.A06.add(new C6N(this, c6m));
        }
    }

    public final void A0a(C6M c6m) {
        if (this.A09) {
            this.A05.add(new C6L(this, c6m));
        } else {
            this.A05.add(new C6N(this, c6m));
        }
    }

    public final void A0b(final C6O c6o) {
        Callable<Boolean> callable = new Callable<Boolean>(c6o) { // from class: com.facebook.ads.redexgen.X.6P
            public static byte[] A02;
            public static String[] A03 = {"jwTNBF52XqMGgcVEiQTwvXvSBsl43Bcu", "zl9XISU", "9LwyCiCzMXmNgkxTRjX8XUqiNT4UlidW", "Jar4Zz8ck96tLH67JFbLbWmYESMeU49V", "Yd8bjyjazIom6Oxe2tnjIAJyfdSlHwWG", "VgUZ5KaBAYbzt3oMIew8EQ4BA2c", "hXTgBapwd4emagenALPcDOSBW5zmdf3H", "17k"};
            public final C6O A00;

            static {
                A02();
            }

            {
                this.A00 = c6o;
            }

            private final Boolean A00() throws Throwable {
                if (K0.A02(this)) {
                    return null;
                }
                try {
                    TrafficStats.setThreadStatsTag(61453);
                    AnonymousClass06 anonymousClass06 = new AnonymousClass06(this.A00.A07, this.A00.A06, this.A00.A05, A01(0, 5, 83), this.A00.A01, this.A00.A02);
                    anonymousClass06.A01 = this.A00.A04;
                    anonymousClass06.A00 = this.A00.A03;
                    if (C6T.A06(this.A01.A04)) {
                        C6Q.A0F.put(this.A00.A07, anonymousClass06);
                    }
                    boolean z = this.A01.A08;
                    boolean zA01 = false;
                    if (A03[3].length() == 5) {
                        throw new RuntimeException();
                    }
                    A03[4] = "CZcPy1KhLDdCOlGcBT5xxsnRB32IUDMD";
                    if (z) {
                        zA01 = C6Q.A03(this.A01.A04.A01()).AEh(anonymousClass06, false).A01();
                    } else if (this.A01.A03.A0D(this.A00) != null) {
                        zA01 = true;
                    }
                    C6W c6w = this.A00.A00;
                    if (c6w != null && c6w.A02()) {
                        int iA00 = c6w.A00();
                        int iA01 = c6w.A01();
                        if (iA00 <= 0 || iA01 <= 0) {
                            if (this.A01.A08) {
                                A04(this.A00.A07, anonymousClass06);
                            } else {
                                A03(this.A00.A03, this.A00.A04);
                            }
                        } else if (this.A01.A08) {
                            anonymousClass06.A00 = iA00;
                            anonymousClass06.A01 = iA01;
                            A04(this.A00.A07, anonymousClass06);
                        } else {
                            A03(iA00, iA01);
                        }
                    }
                    return Boolean.valueOf(zA01);
                } catch (Throwable th) {
                    K0.A00(th, this);
                    return null;
                }
            }

            public static String A01(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                int i4 = 0;
                while (true) {
                    int length = bArrCopyOfRange.length;
                    if (A03[1].length() == 32) {
                        throw new RuntimeException();
                    }
                    A03[3] = "";
                    if (i4 >= length) {
                        return new String(bArrCopyOfRange);
                    }
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
                    i4++;
                }
            }

            public static void A02() {
                A02 = new byte[]{-20, -16, -28, -22, -24};
            }

            private void A03(int i, int i2) {
                Bitmap bitmapA0E = this.A01.A03.A0E(this.A01.A04, this.A00.A07, i, i2, this.A00.A01);
                if (bitmapA0E != null) {
                    this.A01.A07.put(this.A00.A07, bitmapA0E);
                }
            }

            private void A04(String str, AnonymousClass06 anonymousClass06) {
                Bitmap bitmapA00 = C6Q.A03(this.A01.A04.A01()).AEh(anonymousClass06, true).A00();
                if (bitmapA00 != null) {
                    this.A01.A07.put(str, bitmapA00);
                }
            }

            @Override // java.util.concurrent.Callable
            public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
                if (K0.A02(this)) {
                    return null;
                }
                try {
                    return A00();
                } catch (Throwable th) {
                    K0.A00(th, this);
                    return null;
                }
            }
        };
        if (c6o.A02) {
            this.A06.add(callable);
        } else {
            this.A05.add(callable);
        }
    }

    public final void A0c(C6O c6o) {
        c6o.A02 = true;
        A0b(c6o);
    }

    public final void A0d(C1094In c1094In) {
        this.A01 = c1094In;
    }
}
