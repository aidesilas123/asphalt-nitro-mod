package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f extends com.applovin.exoplayer2.g.g.b {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.applovin.exoplayer2.g.g.f.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dH, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i) {
            return new f[i];
        }
    };
    public final List<b> KI;

    public static final class a {
        public final int KF;
        public final long KJ;

        private a(int i, long j) {
            this.KF = i;
            this.KJ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(Parcel parcel) {
            parcel.writeInt(this.KF);
            parcel.writeLong(this.KJ);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a F(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }
    }

    public static final class b {
        public final boolean KA;
        public final long KB;
        public final int KC;
        public final int KD;
        public final int KE;
        public final long KJ;
        public final long Ks;
        public final boolean Kt;
        public final boolean Ku;
        public final boolean Kv;
        public final List<a> Kz;

        private b(long j, boolean z, boolean z2, boolean z3, List<a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.Ks = j;
            this.Kt = z;
            this.Ku = z2;
            this.Kv = z3;
            this.Kz = Collections.unmodifiableList(list);
            this.KJ = j2;
            this.KA = z4;
            this.KB = j3;
            this.KC = i;
            this.KD = i2;
            this.KE = i3;
        }

        private b(Parcel parcel) {
            this.Ks = parcel.readLong();
            this.Kt = parcel.readByte() == 1;
            this.Ku = parcel.readByte() == 1;
            this.Kv = parcel.readByte() == 1;
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(a.F(parcel));
            }
            this.Kz = Collections.unmodifiableList(arrayList);
            this.KJ = parcel.readLong();
            this.KA = parcel.readByte() == 1;
            this.KB = parcel.readLong();
            this.KC = parcel.readInt();
            this.KD = parcel.readInt();
            this.KE = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(Parcel parcel) {
            parcel.writeLong(this.Ks);
            parcel.writeByte(this.Kt ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.Ku ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.Kv ? (byte) 1 : (byte) 0);
            int size = this.Kz.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.Kz.get(i).B(parcel);
            }
            parcel.writeLong(this.KJ);
            parcel.writeByte(this.KA ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.KB);
            parcel.writeInt(this.KC);
            parcel.writeInt(this.KD);
            parcel.writeInt(this.KE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b H(Parcel parcel) {
            return new b(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b Z(y yVar) {
            ArrayList arrayList;
            boolean z;
            long j;
            boolean z2;
            long j2;
            int i;
            int i2;
            int iPo;
            boolean z3;
            boolean z4;
            long jPv;
            long jPv2 = yVar.pv();
            boolean z5 = (yVar.po() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z5) {
                arrayList = arrayList2;
                z = false;
                j = C.TIME_UNSET;
                z2 = false;
                j2 = C.TIME_UNSET;
                i = 0;
                i2 = 0;
                iPo = 0;
                z3 = false;
            } else {
                int iPo2 = yVar.po();
                boolean z6 = (iPo2 & 128) != 0;
                boolean z7 = (iPo2 & 64) != 0;
                boolean z8 = (iPo2 & 32) != 0;
                long jPv3 = z7 ? yVar.pv() : C.TIME_UNSET;
                if (!z7) {
                    int iPo3 = yVar.po();
                    ArrayList arrayList3 = new ArrayList(iPo3);
                    for (int i3 = 0; i3 < iPo3; i3++) {
                        arrayList3.add(new a(yVar.po(), yVar.pv()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long jPo = yVar.po();
                    boolean z9 = (128 & jPo) != 0;
                    jPv = ((((jPo & 1) << 32) | yVar.pv()) * 1000) / 90;
                    z4 = z9;
                } else {
                    z4 = false;
                    jPv = C.TIME_UNSET;
                }
                int iPp = yVar.pp();
                int iPo4 = yVar.po();
                z3 = z7;
                iPo = yVar.po();
                j2 = jPv;
                arrayList = arrayList2;
                long j3 = jPv3;
                i = iPp;
                i2 = iPo4;
                j = j3;
                boolean z10 = z6;
                z2 = z4;
                z = z10;
            }
            return new b(jPv2, z5, z, z3, arrayList, j, z2, j2, i, i2, iPo);
        }
    }

    private f(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(b.H(parcel));
        }
        this.KI = Collections.unmodifiableList(arrayList);
    }

    private f(List<b> list) {
        this.KI = Collections.unmodifiableList(list);
    }

    static f Y(y yVar) {
        int iPo = yVar.po();
        ArrayList arrayList = new ArrayList(iPo);
        for (int i = 0; i < iPo; i++) {
            arrayList.add(b.Z(yVar));
        }
        return new f(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.KI.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.KI.get(i2).B(parcel);
        }
    }
}
