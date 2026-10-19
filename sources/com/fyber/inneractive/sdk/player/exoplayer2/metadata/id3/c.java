package com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends h {
    public static final Parcelable.Creator<c> CREATOR = new a();
    public final String b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2489f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h[] f2490g;

    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public c[] newArray(int i) {
            return new c[i];
        }
    }

    public c(Parcel parcel) {
        super(ChapterFrame.ID);
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.f2487d = parcel.readInt();
        this.f2488e = parcel.readLong();
        this.f2489f = parcel.readLong();
        int i = parcel.readInt();
        this.f2490g = new h[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f2490g[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public c(String str, int i, int i2, long j, long j2, h[] hVarArr) {
        super(ChapterFrame.ID);
        this.b = str;
        this.c = i;
        this.f2487d = i2;
        this.f2488e = j;
        this.f2489f = j2;
        this.f2490g = hVarArr;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.c == cVar.c && this.f2487d == cVar.f2487d && this.f2488e == cVar.f2488e && this.f2489f == cVar.f2489f && u.a(this.b, cVar.b) && Arrays.equals(this.f2490g, cVar.f2490g);
    }

    public int hashCode() {
        int i = (((((((this.c + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.f2487d) * 31) + ((int) this.f2488e)) * 31) + ((int) this.f2489f)) * 31;
        String str = this.b;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.f2487d);
        parcel.writeLong(this.f2488e);
        parcel.writeLong(this.f2489f);
        parcel.writeInt(this.f2490g.length);
        for (h hVar : this.f2490g) {
            parcel.writeParcelable(hVar, 0);
        }
    }
}
