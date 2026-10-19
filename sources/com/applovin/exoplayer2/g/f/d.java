package com.applovin.exoplayer2.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.h;
import com.applovin.exoplayer2.v;
import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class d implements a.InterfaceC0038a {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.f.d.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dD, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }
    };
    public final float Km;
    public final int Kn;

    public d(float f2, int i) {
        this.Km = f2;
        this.Kn = i;
    }

    private d(Parcel parcel) {
        this.Km = parcel.readFloat();
        this.Kn = parcel.readInt();
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ void F(ac.a aVar) {
        h.a(this, aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.Km == dVar.Km && this.Kn == dVar.Kn;
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + com.applovin.exoplayer2.common.b.b.n(this.Km)) * 31) + this.Kn;
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
        return "smta: captureFrameRate=" + this.Km + ", svcTemporalLayerCount=" + this.Kn;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.Km);
        parcel.writeInt(this.Kn);
    }
}
