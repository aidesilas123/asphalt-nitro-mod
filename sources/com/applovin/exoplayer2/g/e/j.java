package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class j extends h {
    public static final Parcelable.Creator<j> CREATOR = new Parcelable.Creator<j>() { // from class: com.applovin.exoplayer2.g.e.j.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dv, reason: merged with bridge method [inline-methods] */
        public j[] newArray(int i) {
            return new j[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }
    };
    public final int JV;
    public final int JW;
    public final int JX;
    public final int[] JY;
    public final int[] JZ;

    public j(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.JV = i;
        this.JW = i2;
        this.JX = i3;
        this.JY = iArr;
        this.JZ = iArr2;
    }

    j(Parcel parcel) {
        super("MLLT");
        this.JV = parcel.readInt();
        this.JW = parcel.readInt();
        this.JX = parcel.readInt();
        this.JY = (int[]) ai.R(parcel.createIntArray());
        this.JZ = (int[]) ai.R(parcel.createIntArray());
    }

    @Override // com.applovin.exoplayer2.g.e.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.JV == jVar.JV && this.JW == jVar.JW && this.JX == jVar.JX && Arrays.equals(this.JY, jVar.JY) && Arrays.equals(this.JZ, jVar.JZ);
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.JV) * 31) + this.JW) * 31) + this.JX) * 31) + Arrays.hashCode(this.JY)) * 31) + Arrays.hashCode(this.JZ);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.JV);
        parcel.writeInt(this.JW);
        parcel.writeInt(this.JX);
        parcel.writeIntArray(this.JY);
        parcel.writeIntArray(this.JZ);
    }
}
