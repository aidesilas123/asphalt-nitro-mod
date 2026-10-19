package com.applovin.exoplayer2.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.h;
import com.applovin.exoplayer2.v;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c implements a.InterfaceC0038a {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.applovin.exoplayer2.g.d.c.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dl, reason: merged with bridge method [inline-methods] */
        public c[] newArray(int i) {
            return new c[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }
    };
    public final byte[] JE;

    @Nullable
    public final String Jj;

    @Nullable
    public final String title;

    c(Parcel parcel) {
        this.JE = (byte[]) com.applovin.exoplayer2.l.a.checkNotNull(parcel.createByteArray());
        this.title = parcel.readString();
        this.Jj = parcel.readString();
    }

    public c(byte[] bArr, @Nullable String str, @Nullable String str2) {
        this.JE = bArr;
        this.title = str;
        this.Jj = str2;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public void F(ac.a aVar) {
        String str = this.title;
        if (str != null) {
            aVar.a(str);
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
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.JE, ((c) obj).JE);
    }

    public int hashCode() {
        return Arrays.hashCode(this.JE);
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
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.title, this.Jj, Integer.valueOf(this.JE.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.JE);
        parcel.writeString(this.title);
        parcel.writeString(this.Jj);
    }
}
