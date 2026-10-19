package com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends h {
    public static final Parcelable.Creator<d> CREATOR = new a();
    public final String b;
    public final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f2492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h[] f2493f;

    public class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d[] newArray(int i) {
            return new d[i];
        }
    }

    public d(Parcel parcel) {
        super(ChapterTocFrame.ID);
        this.b = parcel.readString();
        this.c = parcel.readByte() != 0;
        this.f2491d = parcel.readByte() != 0;
        this.f2492e = parcel.createStringArray();
        int i = parcel.readInt();
        this.f2493f = new h[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f2493f[i2] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public d(String str, boolean z, boolean z2, String[] strArr, h[] hVarArr) {
        super(ChapterTocFrame.ID);
        this.b = str;
        this.c = z;
        this.f2491d = z2;
        this.f2492e = strArr;
        this.f2493f = hVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.c == dVar.c && this.f2491d == dVar.f2491d && u.a(this.b, dVar.b) && Arrays.equals(this.f2492e, dVar.f2492e) && Arrays.equals(this.f2493f, dVar.f2493f);
    }

    public int hashCode() {
        int i = ((((this.c ? 1 : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + (this.f2491d ? 1 : 0)) * 31;
        String str = this.b;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2491d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f2492e);
        parcel.writeInt(this.f2493f.length);
        int i2 = 0;
        while (true) {
            h[] hVarArr = this.f2493f;
            if (i2 >= hVarArr.length) {
                return;
            }
            parcel.writeParcelable(hVarArr[i2], 0);
            i2++;
        }
    }
}
