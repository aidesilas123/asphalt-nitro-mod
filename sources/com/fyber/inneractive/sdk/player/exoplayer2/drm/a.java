package com.fyber.inneractive.sdk.player.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Comparator<b>, Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0176a();
    public final b[] a;
    public int b;
    public final int c;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.drm.a$a, reason: collision with other inner class name */
    public class C0176a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new C0177a();
        public int a;
        public final UUID b;
        public final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f2225d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f2226e;

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.drm.a$b$a, reason: collision with other inner class name */
        public class C0177a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public b[] newArray(int i) {
                return new b[i];
            }
        }

        public b(Parcel parcel) {
            this.b = new UUID(parcel.readLong(), parcel.readLong());
            this.c = parcel.readString();
            this.f2225d = parcel.createByteArray();
            this.f2226e = parcel.readByte() != 0;
        }

        public b(UUID uuid, String str, byte[] bArr, boolean z) {
            this.b = (UUID) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(uuid);
            this.c = (String) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(str);
            this.f2225d = (byte[]) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(bArr);
            this.f2226e = z;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            return this.c.equals(bVar.c) && u.a(this.b, bVar.b) && Arrays.equals(this.f2225d, bVar.f2225d);
        }

        public int hashCode() {
            if (this.a == 0) {
                this.a = (((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + Arrays.hashCode(this.f2225d);
            }
            return this.a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.b.getMostSignificantBits());
            parcel.writeLong(this.b.getLeastSignificantBits());
            parcel.writeString(this.c);
            parcel.writeByteArray(this.f2225d);
            parcel.writeByte(this.f2226e ? (byte) 1 : (byte) 0);
        }
    }

    public a(Parcel parcel) {
        b[] bVarArr = (b[]) parcel.createTypedArray(b.CREATOR);
        this.a = bVarArr;
        this.c = bVarArr.length;
    }

    public a(boolean z, b... bVarArr) {
        bVarArr = z ? (b[]) bVarArr.clone() : bVarArr;
        Arrays.sort(bVarArr, this);
        for (int i = 1; i < bVarArr.length; i++) {
            if (bVarArr[i - 1].b.equals(bVarArr[i].b)) {
                throw new IllegalArgumentException("Duplicate data for uuid: " + bVarArr[i].b);
            }
        }
        this.a = bVarArr;
        this.c = bVarArr.length;
    }

    @Override // java.util.Comparator
    public int compare(b bVar, b bVar2) {
        b bVar3 = bVar;
        b bVar4 = bVar2;
        UUID uuid = com.fyber.inneractive.sdk.player.exoplayer2.b.b;
        return uuid.equals(bVar3.b) ? uuid.equals(bVar4.b) ? 0 : 1 : bVar3.b.compareTo(bVar4.b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.a, ((a) obj).a);
    }

    public int hashCode() {
        if (this.b == 0) {
            this.b = Arrays.hashCode(this.a);
        }
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.a, 0);
    }
}
