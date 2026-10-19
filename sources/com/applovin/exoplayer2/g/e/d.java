package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class d extends h {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.e.d.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dp, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }
    };
    private final h[] JJ;
    public final String JK;
    public final boolean JL;
    public final String[] JM;
    public final boolean vd;

    d(Parcel parcel) {
        super(ChapterTocFrame.ID);
        this.JK = (String) ai.R(parcel.readString());
        this.JL = parcel.readByte() != 0;
        this.vd = parcel.readByte() != 0;
        this.JM = (String[]) ai.R(parcel.createStringArray());
        int i = parcel.readInt();
        this.JJ = new h[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.JJ[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public d(String str, boolean z, boolean z2, String[] strArr, h[] hVarArr) {
        super(ChapterTocFrame.ID);
        this.JK = str;
        this.JL = z;
        this.vd = z2;
        this.JM = strArr;
        this.JJ = hVarArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.JL == dVar.JL && this.vd == dVar.vd && ai.r(this.JK, dVar.JK) && Arrays.equals(this.JM, dVar.JM) && Arrays.equals(this.JJ, dVar.JJ);
    }

    public int hashCode() {
        int i = (((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (this.JL ? 1 : 0)) * 31) + (this.vd ? 1 : 0)) * 31;
        String str = this.JK;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.JK);
        parcel.writeByte(this.JL ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.vd ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.JM);
        parcel.writeInt(this.JJ.length);
        for (h hVar : this.JJ) {
            parcel.writeParcelable(hVar, 0);
        }
    }
}
