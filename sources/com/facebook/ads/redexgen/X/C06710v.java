package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06710v {
    public static C06710v A08;
    public static byte[] A09;
    public static String[] A0A = {"TOlR5WIHpQxnCrBDCJGIvboS5c1GP2eb", "1A072KPTjzB", "BhIKZU0mEosMUOfZes2VT64q11XJ2Uhn", "3eQHzZddeWPmYl0bNsvnb2WjxREMTE8a", "x", "3ukMDhdDleVgfGP2GHVzNRiRwZbG92ZS", "tXOxwX9vQ8QECIpzr41AiGeD6LbiHgO3", "feL0RS1gsJrC9VyxtC"};
    public static final String A0B;
    public boolean A01;
    public final C7S A03;
    public final String A04;
    public final Executor A07;
    public final CountDownLatch A05 = new CountDownLatch(1);
    public final CountDownLatch A06 = new CountDownLatch(1);
    public final C06700u A02 = new C06700u();
    public String A00 = null;

    static {
        A09();
        A0B = C06710v.class.getSimpleName();
    }

    public C06710v(C7S c7s, boolean z, Executor executor, String str) {
        this.A03 = c7s.A01();
        this.A04 = str;
        this.A07 = executor;
        if (z) {
            A0A();
        }
    }

    public static synchronized C06710v A01(C7S c7s) {
        if (A08 == null) {
            A08 = new C06710v(c7s, true, ExecutorC1154La.A06, A03(0, 0, 103));
        }
        return A08;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 69);
        }
        return new String(bArrCopyOfRange);
    }

    private String A04(String str) {
        String strA03 = A03(0, 0, 103);
        try {
            synchronized (this) {
                File file = new File(this.A03.getFilesDir(), str);
                if (file.exists() && file.length() > 0) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[(int) file.length()];
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                    strA03 = new String(bArr, A03(0, 5, 98));
                }
            }
        } catch (FileNotFoundException e2) {
            this.A03.A07().A9M(A03(36, 17, 6), C08417x.A17, new C08427y(e2));
        } catch (IOException e3) {
            this.A03.A07().A9M(A03(36, 17, 6), C08417x.A19, new C08427y(e3));
        }
        return strA03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        String strA03 = A03(36, 17, 6);
        try {
            this.A02.A08(A04(this.A04 + A03(23, 13, 39)));
            this.A02.A0A(A04(A03(5, 18, 101)));
        } catch (C08427y e2) {
            A0M();
            this.A03.A07().A9M(strA03, C08417x.A18, e2);
        } catch (JSONException e3) {
            A0M();
            this.A03.A07().A9M(strA03, C08417x.A1A, new C08427y(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        String string;
        synchronized (this.A02) {
            string = this.A02.A05().toString();
        }
        A0G(A0K(), string);
    }

    public static void A09() {
        byte[] bArr = {114, 115, 97, 10, Ascii.US, 65, 68, 83, 99, 65, 80, 80, 73, 78, 71, 105, 78, 70, 79, Ascii.SO, 84, 88, 84, 1, 3, Ascii.DC2, Ascii.DC2, 7, 6, 35, 6, 17, 76, Ascii.SYN, Ascii.SUB, Ascii.SYN, 37, 49, 38, 50, 54, 38, 45, 32, 58, Ascii.FS, 32, 34, 51, 51, 42, 45, 36};
        if (A0A[0].charAt(25) == 's') {
            throw new RuntimeException();
        }
        A0A[6] = "ekiMbk44dvQ4iEpOly1MsU0Tkyq5eij5";
        A09 = bArr;
    }

    private final void A0A() {
        this.A07.execute(new C1593at(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A0E(C1Q c1q, String str, boolean z) {
        c1q.A07(z);
        if (c1q.A08() || c1q.A09()) {
            this.A02.A07(str);
        } else {
            this.A02.A09(str);
        }
    }

    private void A0F(String str) {
        File file = new File(this.A03.getFilesDir(), str);
        if (file.exists()) {
            file.delete();
        }
    }

    private final synchronized void A0G(String str, String str2) {
        A0H(this.A04 + A03(23, 13, 39), str.getBytes());
        A0H(A03(5, 18, 101), str2.getBytes());
    }

    private void A0H(String str, byte[] bArr) {
        try {
            synchronized (this) {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.A03.getFilesDir(), str));
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            }
        } catch (FileNotFoundException e2) {
            this.A03.A07().A9M(A03(36, 17, 6), C08417x.A17, new C08427y(e2));
        } catch (IOException e3) {
            this.A03.A07().A9M(A03(36, 17, 6), C08417x.A19, new C08427y(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0J(String str) {
        boolean z = false;
        try {
            synchronized (this.A02) {
                z = this.A02.A05().get(str) instanceof C1Q;
            }
        } catch (JSONException e2) {
            this.A03.A07().A9M(A03(36, 17, 6), C08417x.A1A, new C08427y(e2));
        }
        return z;
    }

    public final String A0K() {
        return this.A02.A04();
    }

    public final void A0L() {
        if (!this.A01 || this.A00 == null) {
            return;
        }
        this.A07.execute(new C1590aq(this, this.A00));
    }

    public final synchronized void A0M() {
        A0F(this.A04 + A03(5, 18, 101));
        A0F(this.A04 + A03(23, 13, 39));
    }

    public final void A0N(String str) {
        if (this.A01) {
            this.A00 = str;
            this.A07.execute(new C1591ar(this, str));
        }
    }

    public final void A0O(JSONObject jSONObject) {
        boolean zA14 = IP.A14(this.A03);
        this.A01 = zA14;
        if (zA14) {
            this.A07.execute(new C1592as(this, jSONObject));
        }
    }
}
