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
import com.json.o2;

/* JADX INFO: loaded from: classes.dex */
public final class b implements a.InterfaceC0038a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.c.b.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dj, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }
    };
    public final String Jn;
    public final String Jx;

    b(Parcel parcel) {
        this.Jx = (String) ai.R(parcel.readString());
        this.Jn = (String) ai.R(parcel.readString());
    }

    public b(String str, String str2) {
        this.Jx = str;
        this.Jn = str2;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public void F(ac.a aVar) {
        String str = this.Jx;
        str.hashCode();
        switch (str) {
            case "ALBUM":
                aVar.c(this.Jn);
                break;
            case "TITLE":
                aVar.a(this.Jn);
                break;
            case "DESCRIPTION":
                aVar.g(this.Jn);
                break;
            case "ALBUMARTIST":
                aVar.d(this.Jn);
                break;
            case "ARTIST":
                aVar.b(this.Jn);
                break;
        }
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
        return this.Jx.equals(bVar.Jx) && this.Jn.equals(bVar.Jn);
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.Jx.hashCode()) * 31) + this.Jn.hashCode();
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
        return "VC: " + this.Jx + o2.i.b + this.Jn;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.Jx);
        parcel.writeString(this.Jn);
    }
}
