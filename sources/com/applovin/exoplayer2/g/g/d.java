package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.g.d.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dF, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }
    };
    public final boolean KA;
    public final long KB;
    public final int KC;
    public final int KD;
    public final int KE;
    public final long Ks;
    public final boolean Kt;
    public final boolean Ku;
    public final boolean Kv;
    public final boolean Kw;
    public final long Kx;
    public final long Ky;
    public final List<a> Kz;

    public static final class a {
        public final int KF;
        public final long KG;
        public final long KH;

        private a(int i, long j, long j2) {
            this.KF = i;
            this.KG = j;
            this.KH = j2;
        }

        public static a C(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void B(Parcel parcel) {
            parcel.writeInt(this.KF);
            parcel.writeLong(this.KG);
            parcel.writeLong(this.KH);
        }
    }

    private d(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<a> list, boolean z5, long j4, int i, int i2, int i3) {
        this.Ks = j;
        this.Kt = z;
        this.Ku = z2;
        this.Kv = z3;
        this.Kw = z4;
        this.Kx = j2;
        this.Ky = j3;
        this.Kz = Collections.unmodifiableList(list);
        this.KA = z5;
        this.KB = j4;
        this.KC = i;
        this.KD = i2;
        this.KE = i3;
    }

    private d(Parcel parcel) {
        this.Ks = parcel.readLong();
        this.Kt = parcel.readByte() == 1;
        this.Ku = parcel.readByte() == 1;
        this.Kv = parcel.readByte() == 1;
        this.Kw = parcel.readByte() == 1;
        this.Kx = parcel.readLong();
        this.Ky = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(a.C(parcel));
        }
        this.Kz = Collections.unmodifiableList(arrayList);
        this.KA = parcel.readByte() == 1;
        this.KB = parcel.readLong();
        this.KC = parcel.readInt();
        this.KD = parcel.readInt();
        this.KE = parcel.readInt();
    }

    static d a(y yVar, long j, ag agVar) {
        List list;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        int iPp;
        int iPo;
        int iPo2;
        boolean z4;
        boolean z5;
        long jPv;
        long jPv2 = yVar.pv();
        boolean z6 = (yVar.po() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z6) {
            list = listEmptyList;
            z = false;
            z2 = false;
            j2 = C.TIME_UNSET;
            z3 = false;
            j3 = C.TIME_UNSET;
            iPp = 0;
            iPo = 0;
            iPo2 = 0;
            z4 = false;
        } else {
            int iPo3 = yVar.po();
            boolean z7 = (iPo3 & 128) != 0;
            boolean z8 = (iPo3 & 64) != 0;
            boolean z9 = (iPo3 & 32) != 0;
            boolean z10 = (iPo3 & 16) != 0;
            long jE = (!z8 || z10) ? C.TIME_UNSET : g.e(yVar, j);
            if (!z8) {
                int iPo4 = yVar.po();
                ArrayList arrayList = new ArrayList(iPo4);
                for (int i = 0; i < iPo4; i++) {
                    int iPo5 = yVar.po();
                    long jE2 = !z10 ? g.e(yVar, j) : C.TIME_UNSET;
                    arrayList.add(new a(iPo5, jE2, agVar.br(jE2)));
                }
                listEmptyList = arrayList;
            }
            if (z9) {
                long jPo = yVar.po();
                boolean z11 = (128 & jPo) != 0;
                jPv = ((((jPo & 1) << 32) | yVar.pv()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
                jPv = C.TIME_UNSET;
            }
            iPp = yVar.pp();
            z4 = z8;
            iPo = yVar.po();
            iPo2 = yVar.po();
            list = listEmptyList;
            long j4 = jE;
            z3 = z5;
            j3 = jPv;
            z2 = z10;
            z = z7;
            j2 = j4;
        }
        return new d(jPv2, z6, z, z4, z2, j2, agVar.br(j2), list, z3, j3, iPp, iPo, iPo2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.Ks);
        parcel.writeByte(this.Kt ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.Ku ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.Kv ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.Kw ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.Kx);
        parcel.writeLong(this.Ky);
        int size = this.Kz.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.Kz.get(i2).B(parcel);
        }
        parcel.writeByte(this.KA ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.KB);
        parcel.writeInt(this.KC);
        parcel.writeInt(this.KD);
        parcel.writeInt(this.KE);
    }
}
