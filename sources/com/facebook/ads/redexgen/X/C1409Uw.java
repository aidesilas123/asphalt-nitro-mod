package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.TreeSet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1409Uw implements H2 {
    public static boolean A06;
    public static byte[] A07;
    public static String[] A08 = {"PZs3vIZtp1syVhF", "iN5G7Jyo65HiG11v5U3JAI3rcjEJu9Fh", "jWadhCo9gqYR1xuZ5eOebDdRLwIuwzoe", "5aVgPmkb9WO9SFxkSTOlcah0CKuDVehn", "Qok3N", "7mg38N8lomez8u4EtBpwlNJo", "Crj8XVI7aaG6XCZYe", "vguL8XPuWTEOQDWRTomV5"};
    public static final HashSet<File> A09;
    public long A00;
    public boolean A01;
    public final InterfaceC1411Uy A02;
    public final HA A03;
    public final File A04;
    public final HashMap<String, ArrayList<H1>> A05;

    static {
        A06();
        A09 = new HashSet<>();
    }

    public C1409Uw(File file, InterfaceC1411Uy interfaceC1411Uy) {
        this(file, interfaceC1411Uy, null, false);
    }

    public C1409Uw(File file, InterfaceC1411Uy interfaceC1411Uy, HA ha) {
        if (!A0D(file)) {
            throw new IllegalStateException(A03(0, 46, 88) + file);
        }
        this.A04 = file;
        this.A02 = interfaceC1411Uy;
        this.A03 = ha;
        this.A05 = new HashMap<>();
        ConditionVariable conditionVariable = new ConditionVariable();
        new HF(this, A03(57, 24, 112), conditionVariable).start();
        conditionVariable.block();
    }

    public C1409Uw(File file, InterfaceC1411Uy interfaceC1411Uy, byte[] bArr, boolean z) {
        this(file, interfaceC1411Uy, new HA(file, bArr, z));
    }

    private C1408Uv A00(String str, long j) throws H0 {
        C1408Uv c1408UvA06;
        H9 h9A09 = this.A03.A09(str);
        if (h9A09 == null) {
            C1408Uv c1408UvA02 = C1408Uv.A02(str, j);
            if (A08[7].length() == 15) {
                throw new RuntimeException();
            }
            A08[3] = "R7TEvDOiyk4OKBf9PsOT39P5pIR22NMD";
            return c1408UvA02;
        }
        while (true) {
            c1408UvA06 = h9A09.A06(j);
            if (!c1408UvA06.A05 || c1408UvA06.A03.exists()) {
                break;
            }
            A05();
        }
        return c1408UvA06;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.H2
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final synchronized C1408Uv AFk(String str, long j) throws InterruptedException, H0 {
        C1408Uv c1408UvAFl;
        while (true) {
            c1408UvAFl = AFl(str, j);
            if (c1408UvAFl == null) {
                wait();
            }
        }
        return c1408UvAFl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.H2
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final synchronized C1408Uv AFl(String str, long j) throws H0 {
        HI.A04(!this.A01);
        C1408Uv c1408UvA00 = A00(str, j);
        if (c1408UvA00.A05) {
            C1408Uv c1408UvA07 = this.A03.A09(str).A07(c1408UvA00);
            A0C(c1408UvA00, c1408UvA07);
            return c1408UvA07;
        }
        H9 h9A0A = this.A03.A0A(str);
        if (h9A0A.A0D()) {
            return null;
        }
        h9A0A.A0B(true);
        return c1408UvA00;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 90);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        if (!this.A04.exists()) {
            this.A04.mkdirs();
            return;
        }
        this.A03.A0E();
        File[] fileArrListFiles = this.A04.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!file.getName().equals(A03(106, 24, 45))) {
                C1408Uv c1408UvA00 = file.length() > 0 ? C1408Uv.A00(file, this.A03) : null;
                if (c1408UvA00 != null) {
                    A0A(c1408UvA00);
                } else {
                    file.delete();
                }
            }
        }
        this.A03.A0F();
        try {
            this.A03.A0G();
        } catch (H0 e2) {
            Log.e(A03(46, 11, 57), A03(81, 25, 105), e2);
        }
    }

    private void A05() throws H0 {
        ArrayList arrayList = new ArrayList();
        Iterator<H9> it = this.A03.A0D().iterator();
        while (it.hasNext()) {
            for (C1408Uv c1408Uv : it.next().A08()) {
                if (!c1408Uv.A03.exists()) {
                    arrayList.add(c1408Uv);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            A08((H6) arrayList.get(i), false);
        }
        this.A03.A0F();
        this.A03.A0G();
    }

    public static void A06() {
        String[] strArr = A08;
        if (strArr[1].charAt(16) != strArr[2].charAt(16)) {
            throw new RuntimeException();
        }
        A08[3] = "N0vjWbyGqBS98Run3kOI6tTmnpu8bGoB";
        A07 = new byte[]{67, 108, 109, 118, 106, 103, 112, 34, 81, 107, 111, 114, 110, 103, 65, 99, 97, 106, 103, 34, 107, 108, 113, 118, 99, 108, 97, 103, 34, 119, 113, 103, 113, 34, 118, 106, 103, 34, 100, 109, 110, 102, 103, 112, 56, 34, 48, 10, Ascii.SO, 19, Ascii.SI, 6, 32, 2, 0, Ascii.VT, 6, 121, 67, 71, 90, 70, 79, 105, 75, 73, 66, 79, 4, 67, 68, 67, 94, 67, 75, 70, 67, 80, 79, 2, 3, 96, 71, 92, 65, 90, 93, 84, 19, 90, 93, 87, 86, 75, 19, 85, 90, 95, 86, 19, 85, 82, 90, 95, 86, 87, Ascii.DC4, Ascii.SYN, Ascii.DC4, Ascii.US, Ascii.DC2, 19, 40, Ascii.DC4, Ascii.CAN, Ascii.EM, 3, Ascii.DC2, Ascii.EM, 3, 40, Ascii.RS, Ascii.EM, 19, Ascii.DC2, Ascii.SI, 89, Ascii.DC2, Ascii.SI, Ascii.RS};
    }

    private void A07(H6 h6) {
        ArrayList<H1> arrayList = this.A05.get(h6.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).AD1(this, h6);
            }
        }
        this.A02.AD1(this, h6);
    }

    private void A08(H6 h6, boolean z) throws H0 {
        H9 h9A09 = this.A03.A09(h6.A04);
        if (h9A09 == null || !h9A09.A0E(h6)) {
            return;
        }
        this.A00 -= h6.A01;
        if (z) {
            try {
                this.A03.A0H(h9A09.A03);
                this.A03.A0G();
            } finally {
                A07(h6);
            }
        }
    }

    private void A0A(C1408Uv c1408Uv) {
        this.A03.A0A(c1408Uv.A04).A09(c1408Uv);
        this.A00 += c1408Uv.A01;
        A0B(c1408Uv);
    }

    private void A0B(C1408Uv c1408Uv) {
        ArrayList<H1> arrayList = this.A05.get(c1408Uv.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).AD0(this, c1408Uv);
            }
        }
        this.A02.AD0(this, c1408Uv);
    }

    private void A0C(C1408Uv c1408Uv, H6 h6) {
        ArrayList<H1> arrayList = this.A05.get(c1408Uv.A04);
        if (arrayList != null) {
            int size = arrayList.size();
            String[] strArr = A08;
            if (strArr[1].charAt(16) != strArr[2].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "YjLi8Ea68WiaTq3";
            strArr2[4] = "ACi8R";
            for (int i = size - 1; i >= 0; i--) {
                arrayList.get(i).AD2(this, c1408Uv, h6);
            }
        }
        this.A02.AD2(this, c1408Uv, h6);
    }

    public static synchronized boolean A0D(File file) {
        if (A06) {
            return true;
        }
        return A09.add(file.getAbsoluteFile());
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized void A3W(String str, HE he) throws H0 {
        HI.A04(!this.A01);
        this.A03.A0I(str, he);
        this.A03.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized void A4K(File file) throws H0 {
        HI.A04(!this.A01);
        C1408Uv c1408UvA00 = C1408Uv.A00(file, this.A03);
        HI.A04(c1408UvA00 != null);
        H9 h9A09 = this.A03.A09(c1408UvA00.A04);
        HI.A01(h9A09);
        HI.A04(h9A09.A0D());
        if (file.exists()) {
            if (file.length() == 0) {
                file.delete();
                return;
            }
            long jA00 = HD.A00(h9A09.A05());
            if (jA00 != -1) {
                HI.A04(c1408UvA00.A02 + c1408UvA00.A01 <= jA00);
            }
            A0A(c1408UvA00);
            this.A03.A0G();
            notifyAll();
        }
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized long A6A() {
        HI.A04(!this.A01);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized long A6B(String str, long j, long j2) {
        H9 h9A09;
        HI.A04(!this.A01);
        h9A09 = this.A03.A09(str);
        return h9A09 != null ? h9A09.A04(j, j2) : -j2;
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized NavigableSet<H6> A6C(String str) {
        H9 h9A09;
        HI.A04(!this.A01);
        h9A09 = this.A03.A09(str);
        return (h9A09 == null || h9A09.A0C()) ? new TreeSet() : new TreeSet((Collection) h9A09.A08());
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized long A6Q(String str) {
        return HD.A00(A6R(str));
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized HC A6R(String str) {
        HI.A04(!this.A01);
        return this.A03.A0B(str);
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized void AES(H6 h6) {
        HI.A04(!this.A01);
        H9 h9A09 = this.A03.A09(h6.A04);
        HI.A01(h9A09);
        HI.A04(h9A09.A0D());
        h9A09.A0B(false);
        this.A03.A0H(h9A09.A03);
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized void AEZ(H6 h6) throws H0 {
        HI.A04(!this.A01);
        A08(h6, true);
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized void AFD(String str, long j) throws H0 {
        HE he = new HE();
        HD.A05(he, j);
        A3W(str, he);
    }

    @Override // com.facebook.ads.redexgen.X.H2
    public final synchronized File AFi(String str, long j, long j2) throws H0 {
        H9 h9A09;
        HI.A04(!this.A01);
        h9A09 = this.A03.A09(str);
        HI.A01(h9A09);
        HI.A04(h9A09.A0D());
        if (!this.A04.exists()) {
            this.A04.mkdirs();
            A05();
        }
        this.A02.AD3(this, str, j, j2);
        return C1408Uv.A04(this.A04, h9A09.A02, j, System.currentTimeMillis());
    }
}
