package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a extends h {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.e.a.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dm, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }
    };
    public final int Jt;
    public final byte[] Jw;
    public final String eg;

    @Nullable
    public final String oc;

    a(Parcel parcel) {
        super(ApicFrame.ID);
        this.eg = (String) ai.R(parcel.readString());
        this.oc = parcel.readString();
        this.Jt = parcel.readInt();
        this.Jw = (byte[]) ai.R(parcel.createByteArray());
    }

    public a(String str, @Nullable String str2, int i, byte[] bArr) {
        super(ApicFrame.ID);
        this.eg = str;
        this.oc = str2;
        this.Jt = i;
        this.Jw = bArr;
    }

    @Override // com.applovin.exoplayer2.g.e.h, com.applovin.exoplayer2.g.a.InterfaceC0038a
    public void F(ac.a aVar) {
        aVar.a(this.Jw, this.Jt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.Jt == aVar.Jt && ai.r(this.eg, aVar.eg) && ai.r(this.oc, aVar.oc) && Arrays.equals(this.Jw, aVar.Jw);
    }

    public int hashCode() {
        int i = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.Jt) * 31;
        String str = this.eg;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.oc;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.Jw);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f1do + ": mimeType=" + this.eg + ", description=" + this.oc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.eg);
        parcel.writeString(this.oc);
        parcel.writeInt(this.Jt);
        parcel.writeByteArray(this.Jw);
    }
}
