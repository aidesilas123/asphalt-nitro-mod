package com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends h {
    public static final Parcelable.Creator<a> CREATOR = new C0188a();
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f2486e;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.a$a, reason: collision with other inner class name */
    public class C0188a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    public a(Parcel parcel) {
        super(ApicFrame.ID);
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.f2485d = parcel.readInt();
        this.f2486e = parcel.createByteArray();
    }

    public a(String str, String str2, int i, byte[] bArr) {
        super(ApicFrame.ID);
        this.b = str;
        this.c = str2;
        this.f2485d = i;
        this.f2486e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2485d == aVar.f2485d && u.a(this.b, aVar.b) && u.a(this.c, aVar.c) && Arrays.equals(this.f2486e, aVar.f2486e);
    }

    public int hashCode() {
        int i = (this.f2485d + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str = this.b;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f2486e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.f2485d);
        parcel.writeByteArray(this.f2486e);
    }
}
