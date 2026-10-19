package com.applovin.exoplayer2.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements a.InterfaceC0038a {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.c.a.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: di, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }
    };
    public final int Jt;
    public final int Ju;
    public final int Jv;
    public final byte[] Jw;
    public final int dE;
    public final String eg;
    public final int height;
    public final String oc;

    public a(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.Jt = i;
        this.eg = str;
        this.oc = str2;
        this.dE = i2;
        this.height = i3;
        this.Ju = i4;
        this.Jv = i5;
        this.Jw = bArr;
    }

    a(Parcel parcel) {
        this.Jt = parcel.readInt();
        this.eg = (String) ai.R(parcel.readString());
        this.oc = (String) ai.R(parcel.readString());
        this.dE = parcel.readInt();
        this.height = parcel.readInt();
        this.Ju = parcel.readInt();
        this.Jv = parcel.readInt();
        this.Jw = (byte[]) ai.R(parcel.createByteArray());
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public void F(ac.a aVar) {
        aVar.a(this.Jw, this.Jt);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.Jt == aVar.Jt && this.eg.equals(aVar.eg) && this.oc.equals(aVar.oc) && this.dE == aVar.dE && this.height == aVar.height && this.Ju == aVar.Ju && this.Jv == aVar.Jv && Arrays.equals(this.Jw, aVar.Jw);
    }

    public int hashCode() {
        return ((((((((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.Jt) * 31) + this.eg.hashCode()) * 31) + this.oc.hashCode()) * 31) + this.dE) * 31) + this.height) * 31) + this.Ju) * 31) + this.Jv) * 31) + Arrays.hashCode(this.Jw);
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ v kE() {
        return h.b(this);
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ byte[] kF() {
        return h.c(this);
    }

    public String toString() {
        return "Picture: mimeType=" + this.eg + ", description=" + this.oc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Jt);
        parcel.writeString(this.eg);
        parcel.writeString(this.oc);
        parcel.writeInt(this.dE);
        parcel.writeInt(this.height);
        parcel.writeInt(this.Ju);
        parcel.writeInt(this.Jv);
        parcel.writeByteArray(this.Jw);
    }
}
