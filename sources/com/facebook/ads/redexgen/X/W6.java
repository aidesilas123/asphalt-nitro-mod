package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class W6 implements InterfaceC0947Co {
    public static String[] A05 = {"ZoOhGYHP8SNfCMTpI8hB8esJvCxQNk4a", "iCY0vtQk2BMTn8YKksXnllwhxYcEMWPa", "FRJmrfeKqiG8dvU06WzW6", "wyGcQq4l", "", "l2", "ODNaIWitniiqKmZchEPotBtPtmPon6SS", "r1S7VBlY5d2QYAsiLWImTDUS2fBhu4wR"};
    public final int A00;
    public final /* synthetic */ W5 A04;
    public final C1061Hg A03 = new C1061Hg(new byte[5]);
    public final SparseArray<InterfaceC0953Cv> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();

    public W6(W5 w5, int i) {
        this.A04 = w5;
        this.A00 = i;
    }

    private C0950Cs A00(C1062Hh c1062Hh, int i) {
        int iA06 = c1062Hh.A06();
        int i2 = iA06 + i;
        int i3 = -1;
        String strTrim = null;
        ArrayList arrayList = null;
        while (c1062Hh.A06() < i2) {
            int iA0E = c1062Hh.A0E();
            int iA062 = c1062Hh.A06() + c1062Hh.A0E();
            if (iA0E == 5) {
                long jA0M = c1062Hh.A0M();
                if (jA0M == W5.A0F) {
                    i3 = 129;
                } else {
                    long j = W5.A0G;
                    if (A05[0].charAt(13) == 'l') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A05;
                    strArr[5] = "OX";
                    strArr[4] = "";
                    if (jA0M == j) {
                        i3 = 135;
                    } else if (jA0M == W5.A0H) {
                        i3 = 36;
                    }
                }
            } else if (iA0E == 106) {
                i3 = 129;
            } else if (iA0E == 122) {
                i3 = 135;
            } else if (iA0E == 123) {
                i3 = 138;
            } else if (iA0E == 10) {
                strTrim = c1062Hh.A0S(3).trim();
            } else if (iA0E == 89) {
                i3 = 89;
                arrayList = new ArrayList();
                while (c1062Hh.A06() < iA062) {
                    String strTrim2 = c1062Hh.A0S(3).trim();
                    int iA0E2 = c1062Hh.A0E();
                    byte[] bArr = new byte[4];
                    c1062Hh.A0c(bArr, 0, 4);
                    arrayList.add(new C0949Cr(strTrim2, iA0E2, bArr));
                }
            }
            c1062Hh.A0Z(iA062 - c1062Hh.A06());
        }
        c1062Hh.A0Y(i2);
        return new C0950Cs(i3, strTrim, arrayList, Arrays.copyOfRange(c1062Hh.A00, iA06, i2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A4O(C1062Hh c1062Hh) {
        C1074Ht c1074Ht;
        InterfaceC0953Cv interfaceC0953CvA4f;
        if (c1062Hh.A0E() != 2) {
            return;
        }
        if (this.A04.A05 == 1 || this.A04.A05 == 2 || this.A04.A01 == 1) {
            c1074Ht = (C1074Ht) this.A04.A0B.get(0);
        } else {
            c1074Ht = new C1074Ht(((C1074Ht) this.A04.A0B.get(0)).A03());
            this.A04.A0B.add(c1074Ht);
        }
        c1062Hh.A0Z(2);
        int iA0I = c1062Hh.A0I();
        int i = 5;
        c1062Hh.A0Z(5);
        c1062Hh.A0a(this.A03, 2);
        int i2 = 4;
        this.A03.A08(4);
        int i3 = 12;
        c1062Hh.A0Z(this.A03.A04(12));
        int i4 = 21;
        if (this.A04.A05 == 2 && this.A04.A03 == null) {
            C0950Cs c0950Cs = new C0950Cs(21, null, null, new byte[0]);
            W5 w5 = this.A04;
            w5.A03 = w5.A09.A4f(21, c0950Cs);
            this.A04.A03.A8g(c1074Ht, this.A04.A02, new C0952Cu(iA0I, 21, 8192));
        }
        this.A01.clear();
        this.A02.clear();
        int iA04 = c1062Hh.A04();
        while (true) {
            if (iA04 <= 0) {
                int size = this.A02.size();
                for (int i5 = 0; i5 < size; i5++) {
                    int iKeyAt = this.A02.keyAt(i5);
                    this.A04.A07.put(iKeyAt, true);
                    InterfaceC0953Cv interfaceC0953CvValueAt = this.A01.valueAt(i5);
                    if (interfaceC0953CvValueAt != null) {
                        W5 w52 = this.A04;
                        String[] strArr = A05;
                        if (strArr[5].length() != strArr[4].length()) {
                            A05[0] = "prZScD3eoAfWT6wNb9RUJeZXyBQ1ma5M";
                            if (interfaceC0953CvValueAt != w52.A03) {
                                interfaceC0953CvValueAt.A8g(c1074Ht, this.A04.A02, new C0952Cu(iA0I, iKeyAt, 8192));
                            }
                            this.A04.A06.put(this.A02.valueAt(i5), interfaceC0953CvValueAt);
                        }
                    }
                }
                if (this.A04.A05 == 2) {
                    if (this.A04.A04) {
                        return;
                    }
                    this.A04.A02.A5T();
                    this.A04.A01 = 0;
                    this.A04.A04 = true;
                    return;
                }
                this.A04.A06.remove(this.A00);
                W5 w53 = this.A04;
                w53.A01 = w53.A05 != 1 ? this.A04.A01 - 1 : 0;
                if (this.A04.A01 == 0) {
                    this.A04.A02.A5T();
                    this.A04.A04 = true;
                    return;
                }
                return;
            }
            c1062Hh.A0a(this.A03, i);
            int iA042 = this.A03.A04(8);
            this.A03.A08(3);
            int iA043 = this.A03.A04(13);
            this.A03.A08(i2);
            int iA044 = this.A03.A04(i3);
            C0950Cs c0950CsA00 = A00(c1062Hh, iA044);
            if (iA042 == 6) {
                iA042 = c0950CsA00.A00;
            }
            iA04 -= iA044 + 5;
            int i6 = this.A04.A05 == 2 ? iA042 : iA043;
            if (!this.A04.A07.get(i6)) {
                if (this.A04.A05 == 2 && iA042 == i4) {
                    W5 w54 = this.A04;
                    String[] strArr2 = A05;
                    if (strArr2[2].length() == strArr2[3].length()) {
                        break;
                    }
                    A05[0] = "McoDKrxcl9g055s4tJZatQwjzcY0TxoH";
                    interfaceC0953CvA4f = w54.A03;
                } else {
                    interfaceC0953CvA4f = this.A04.A09.A4f(iA042, c0950CsA00);
                }
                if (this.A04.A05 != 2 || iA043 < this.A02.get(i6, 8192)) {
                    this.A02.put(i6, iA043);
                    this.A01.put(i6, interfaceC0953CvA4f);
                }
            }
            i = 5;
            i2 = 4;
            i3 = 12;
            i4 = 21;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A8g(C1074Ht c1074Ht, InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
    }
}
