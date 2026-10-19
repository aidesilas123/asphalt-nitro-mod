package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.GeobFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class f extends h {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.applovin.exoplayer2.g.e.f.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dr, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i) {
            return new f[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }
    };
    public final String JO;
    public final String eg;
    public final String oc;
    public final byte[] tf;

    f(Parcel parcel) {
        super(GeobFrame.ID);
        this.eg = (String) ai.R(parcel.readString());
        this.JO = (String) ai.R(parcel.readString());
        this.oc = (String) ai.R(parcel.readString());
        this.tf = (byte[]) ai.R(parcel.createByteArray());
    }

    public f(String str, String str2, String str3, byte[] bArr) {
        super(GeobFrame.ID);
        this.eg = str;
        this.JO = str2;
        this.oc = str3;
        this.tf = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return ai.r(this.eg, fVar.eg) && ai.r(this.JO, fVar.JO) && ai.r(this.oc, fVar.oc) && Arrays.equals(this.tf, fVar.tf);
    }

    public int hashCode() {
        String str = this.eg;
        int iHashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.JO;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.oc;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.tf);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f1do + ": mimeType=" + this.eg + ", filename=" + this.JO + ", description=" + this.oc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.eg);
        parcel.writeString(this.JO);
        parcel.writeString(this.oc);
        parcel.writeByteArray(this.tf);
    }
}
