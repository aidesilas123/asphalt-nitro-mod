package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class Dc {
    public static String[] A0B = {"WSNeg6N0n7AIShfXSzX5HQmTc8kFkZEc", "6rZRvoV62oNyzf", "F27AMpNiqyccCa5EB6sKY7eKfEMSqhrd", "FVKbL9f5FAHwz7hiZMN0u1v1YdCbdeYK", "vVfLkZocD1NxPHhP9fXAXrt0GsgaX4xN", "cFmUa63iy9OAJJOa0jT7jB1cdvdJ4hQa", "2QFrNOOxadMtahUuhILPt16xKsmCtJsL", "J"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final List<C0958Db> A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;

    public Dc(long j, boolean z, boolean z2, boolean z3, List<C0958Db> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
        this.A04 = j;
        this.A0A = z;
        this.A08 = z2;
        this.A09 = z3;
        this.A06 = Collections.unmodifiableList(list);
        this.A05 = j2;
        this.A07 = z4;
        this.A03 = j3;
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    public Dc(Parcel parcel) {
        this.A04 = parcel.readLong();
        this.A0A = parcel.readByte() == 1;
        this.A08 = parcel.readByte() == 1;
        this.A09 = parcel.readByte() == 1;
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(C0958Db.A00(parcel));
        }
        this.A06 = Collections.unmodifiableList(arrayList);
        this.A05 = parcel.readLong();
        this.A07 = parcel.readByte() == 1;
        this.A03 = parcel.readLong();
        this.A02 = parcel.readInt();
        this.A00 = parcel.readInt();
        this.A01 = parcel.readInt();
    }

    public static Dc A00(Parcel parcel) {
        return new Dc(parcel);
    }

    public static Dc A02(C1062Hh c1062Hh) {
        long jA0M = c1062Hh.A0M();
        boolean z = (c1062Hh.A0E() & 128) != 0;
        boolean z2 = false;
        boolean z3 = false;
        long jA0M2 = C.TIME_UNSET;
        ArrayList arrayList = new ArrayList();
        int iA0I = 0;
        int iA0E = 0;
        int iA0E2 = 0;
        boolean z4 = false;
        long jA0M3 = C.TIME_UNSET;
        if (!z) {
            int iA0E3 = c1062Hh.A0E();
            z2 = (iA0E3 & 128) != 0;
            z3 = (iA0E3 & 64) != 0;
            if (A0B[7].length() != 1) {
                throw new RuntimeException();
            }
            A0B[1] = "02B3CRg7kTq01s";
            boolean z5 = (iA0E3 & 32) != 0;
            if (z3) {
                jA0M2 = c1062Hh.A0M();
            }
            if (z3) {
                String[] strArr = A0B;
                if (strArr[0].charAt(5) == strArr[5].charAt(5)) {
                    A0B[1] = "Wfp3iGqyia9VmI";
                }
            } else {
                int iA0E4 = c1062Hh.A0E();
                arrayList = new ArrayList(iA0E4);
                for (int i = 0; i < iA0E4; i++) {
                    arrayList.add(new C0958Db(c1062Hh.A0E(), c1062Hh.A0M(), null));
                }
            }
            if (z5) {
                long jA0E = c1062Hh.A0E();
                z4 = (128 & jA0E) != 0;
                jA0M3 = (1000 * (((1 & jA0E) << 32) | c1062Hh.A0M())) / 90;
            }
            iA0I = c1062Hh.A0I();
            iA0E = c1062Hh.A0E();
            iA0E2 = c1062Hh.A0E();
        }
        return new Dc(jA0M, z, z2, z3, arrayList, jA0M2, z4, jA0M3, iA0I, iA0E, iA0E2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(Parcel parcel) {
        parcel.writeLong(this.A04);
        parcel.writeByte(this.A0A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A08 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A09 ? (byte) 1 : (byte) 0);
        int size = this.A06.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; i++) {
            this.A06.get(i).A02(parcel);
        }
        parcel.writeLong(this.A05);
        byte b = this.A07 ? (byte) 1 : (byte) 0;
        if (A0B[1].length() != 14) {
            throw new RuntimeException();
        }
        A0B[1] = "FoD8YYsiaA11j5";
        parcel.writeByte(b);
        parcel.writeLong(this.A03);
        parcel.writeInt(this.A02);
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
    }
}
