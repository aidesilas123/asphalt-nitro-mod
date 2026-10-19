package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c extends h {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.applovin.exoplayer2.g.e.c.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public c[] newArray(int i) {
            return new c[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }
    };
    public final String JF;
    public final int JG;
    public final int JH;
    public final long JI;
    private final h[] JJ;
    public final long wE;

    c(Parcel parcel) {
        super(ChapterFrame.ID);
        this.JF = (String) ai.R(parcel.readString());
        this.JG = parcel.readInt();
        this.JH = parcel.readInt();
        this.wE = parcel.readLong();
        this.JI = parcel.readLong();
        int i = parcel.readInt();
        this.JJ = new h[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.JJ[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public c(String str, int i, int i2, long j, long j2, h[] hVarArr) {
        super(ChapterFrame.ID);
        this.JF = str;
        this.JG = i;
        this.JH = i2;
        this.wE = j;
        this.JI = j2;
        this.JJ = hVarArr;
    }

    @Override // com.applovin.exoplayer2.g.e.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.JG == cVar.JG && this.JH == cVar.JH && this.wE == cVar.wE && this.JI == cVar.JI && ai.r(this.JF, cVar.JF) && Arrays.equals(this.JJ, cVar.JJ);
    }

    public int hashCode() {
        int i = (((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.JG) * 31) + this.JH) * 31) + ((int) this.wE)) * 31) + ((int) this.JI)) * 31;
        String str = this.JF;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.JF);
        parcel.writeInt(this.JG);
        parcel.writeInt(this.JH);
        parcel.writeLong(this.wE);
        parcel.writeLong(this.JI);
        parcel.writeInt(this.JJ.length);
        for (h hVar : this.JJ) {
            parcel.writeParcelable(hVar, 0);
        }
    }
}
