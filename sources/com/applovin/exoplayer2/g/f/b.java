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
public final class b implements a.InterfaceC0038a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.f.b.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dA, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }
    };
    public final long Ke;
    public final long Kf;
    public final long Kg;
    public final long Kh;
    public final long wy;

    public b(long j, long j2, long j3, long j4, long j5) {
        this.Ke = j;
        this.Kf = j2;
        this.wy = j3;
        this.Kg = j4;
        this.Kh = j5;
    }

    private b(Parcel parcel) {
        this.Ke = parcel.readLong();
        this.Kf = parcel.readLong();
        this.wy = parcel.readLong();
        this.Kg = parcel.readLong();
        this.Kh = parcel.readLong();
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
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.Ke == bVar.Ke && this.Kf == bVar.Kf && this.wy == bVar.wy && this.Kg == bVar.Kg && this.Kh == bVar.Kh;
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + com.applovin.exoplayer2.common.b.d.ae(this.Ke)) * 31) + com.applovin.exoplayer2.common.b.d.ae(this.Kf)) * 31) + com.applovin.exoplayer2.common.b.d.ae(this.wy)) * 31) + com.applovin.exoplayer2.common.b.d.ae(this.Kg)) * 31) + com.applovin.exoplayer2.common.b.d.ae(this.Kh);
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
        return "Motion photo metadata: photoStartPosition=" + this.Ke + ", photoSize=" + this.Kf + ", photoPresentationTimestampUs=" + this.wy + ", videoStartPosition=" + this.Kg + ", videoSize=" + this.Kh;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.Ke);
        parcel.writeLong(this.Kf);
        parcel.writeLong(this.wy);
        parcel.writeLong(this.Kg);
        parcel.writeLong(this.Kh);
    }
}
