package com.fyber.inneractive.sdk.player.exoplayer2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();
    public int A;
    public final String a;
    public final int b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.metadata.a f2474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2477g;
    public final List<byte[]> h;
    public final com.fyber.inneractive.sdk.player.exoplayer2.drm.a i;
    public final int j;
    public final int k;
    public final float l;
    public final int m;
    public final float n;
    public final int o;
    public final byte[] p;
    public final com.fyber.inneractive.sdk.player.exoplayer2.video.b q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final int v;
    public final long w;
    public final int x;
    public final String y;
    public final int z;

    public class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public i[] newArray(int i) {
            return new i[i];
        }
    }

    public i(Parcel parcel) {
        this.a = parcel.readString();
        this.f2475e = parcel.readString();
        this.f2476f = parcel.readString();
        this.c = parcel.readString();
        this.b = parcel.readInt();
        this.f2477g = parcel.readInt();
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        this.l = parcel.readFloat();
        this.m = parcel.readInt();
        this.n = parcel.readFloat();
        this.p = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.o = parcel.readInt();
        this.q = (com.fyber.inneractive.sdk.player.exoplayer2.video.b) parcel.readParcelable(com.fyber.inneractive.sdk.player.exoplayer2.video.b.class.getClassLoader());
        this.r = parcel.readInt();
        this.s = parcel.readInt();
        this.t = parcel.readInt();
        this.u = parcel.readInt();
        this.v = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readString();
        this.z = parcel.readInt();
        this.w = parcel.readLong();
        int i = parcel.readInt();
        this.h = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.h.add(parcel.createByteArray());
        }
        this.i = (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) parcel.readParcelable(com.fyber.inneractive.sdk.player.exoplayer2.drm.a.class.getClassLoader());
        this.f2474d = (com.fyber.inneractive.sdk.player.exoplayer2.metadata.a) parcel.readParcelable(com.fyber.inneractive.sdk.player.exoplayer2.metadata.a.class.getClassLoader());
    }

    public i(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f2, int i5, float f3, byte[] bArr, int i6, com.fyber.inneractive.sdk.player.exoplayer2.video.b bVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar, com.fyber.inneractive.sdk.player.exoplayer2.metadata.a aVar2) {
        this.a = str;
        this.f2475e = str2;
        this.f2476f = str3;
        this.c = str4;
        this.b = i;
        this.f2477g = i2;
        this.j = i3;
        this.k = i4;
        this.l = f2;
        this.m = i5;
        this.n = f3;
        this.p = bArr;
        this.o = i6;
        this.q = bVar;
        this.r = i7;
        this.s = i8;
        this.t = i9;
        this.u = i10;
        this.v = i11;
        this.x = i12;
        this.y = str5;
        this.z = i13;
        this.w = j;
        this.h = list == null ? Collections.emptyList() : list;
        this.i = aVar;
        this.f2474d = aVar2;
    }

    public static i a(String str, String str2, long j) {
        return new i(null, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, j, null, null, null);
    }

    public static i a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f2, List<byte[]> list, int i5, float f3, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar) {
        return a(str, str2, (String) null, i, i2, i3, i4, f2, list, i5, f3, (byte[]) null, -1, (com.fyber.inneractive.sdk.player.exoplayer2.video.b) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null);
    }

    public static i a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f2, List<byte[]> list, int i5, float f3, byte[] bArr, int i6, com.fyber.inneractive.sdk.player.exoplayer2.video.b bVar, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar) {
        return new i(str, null, str2, str3, i, i2, i3, i4, f2, i5, f3, bArr, i6, bVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, aVar, null);
    }

    public static i a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar, int i8, String str4, com.fyber.inneractive.sdk.player.exoplayer2.metadata.a aVar2) {
        return new i(str, null, str2, str3, i, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, i8, str4, -1, Long.MAX_VALUE, list, aVar, aVar2);
    }

    public static i a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar, int i6, String str4) {
        return a(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, aVar, i6, str4, (com.fyber.inneractive.sdk.player.exoplayer2.metadata.a) null);
    }

    public static i a(String str, String str2, String str3, int i, int i2, String str4, int i3, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar, long j, List<byte[]> list) {
        return new i(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, i3, j, list, aVar, null);
    }

    public static i a(String str, String str2, String str3, int i, int i2, String str4, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar) {
        return a(str, str2, null, i, i2, str4, -1, aVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static i a(String str, String str2, String str3, int i, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar) {
        return new i(str, null, str2, null, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, aVar, null);
    }

    public static i a(String str, String str2, String str3, int i, List<byte[]> list, String str4, com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar) {
        return new i(str, null, str2, null, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, aVar, null);
    }

    public static i a(String str, String str2, String str3, String str4, int i, int i2, String str5, int i3) {
        return new i(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str5, i3, Long.MAX_VALUE, null, null, null);
    }

    @TargetApi(16)
    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat a() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f2476f);
        String str = this.y;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        a(mediaFormat, "max-input-size", this.f2477g);
        a(mediaFormat, "width", this.j);
        a(mediaFormat, "height", this.k);
        float f2 = this.l;
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        a(mediaFormat, "rotation-degrees", this.m);
        a(mediaFormat, "channel-count", this.r);
        a(mediaFormat, "sample-rate", this.s);
        a(mediaFormat, "encoder-delay", this.u);
        a(mediaFormat, "encoder-padding", this.v);
        for (int i = 0; i < this.h.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap(this.h.get(i)));
        }
        com.fyber.inneractive.sdk.player.exoplayer2.video.b bVar = this.q;
        if (bVar != null) {
            a(mediaFormat, "color-transfer", bVar.c);
            a(mediaFormat, "color-standard", bVar.a);
            a(mediaFormat, "color-range", bVar.b);
            byte[] bArr = bVar.f2624d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public i a(long j) {
        return new i(this.a, this.f2475e, this.f2476f, this.c, this.b, this.f2477g, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.v, this.x, this.y, this.z, j, this.h, this.i, this.f2474d);
    }

    public int b() {
        int i;
        int i2 = this.j;
        if (i2 == -1 || (i = this.k) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && i.class == obj.getClass()) {
            i iVar = (i) obj;
            if (this.b == iVar.b && this.f2477g == iVar.f2477g && this.j == iVar.j && this.k == iVar.k && this.l == iVar.l && this.m == iVar.m && this.n == iVar.n && this.o == iVar.o && this.r == iVar.r && this.s == iVar.s && this.t == iVar.t && this.u == iVar.u && this.v == iVar.v && this.w == iVar.w && this.x == iVar.x && u.a(this.a, iVar.a) && u.a(this.y, iVar.y) && this.z == iVar.z && u.a(this.f2475e, iVar.f2475e) && u.a(this.f2476f, iVar.f2476f) && u.a(this.c, iVar.c) && u.a(this.i, iVar.i) && u.a(this.f2474d, iVar.f2474d) && u.a(this.q, iVar.q) && Arrays.equals(this.p, iVar.p) && this.h.size() == iVar.h.size()) {
                for (int i = 0; i < this.h.size(); i++) {
                    if (!Arrays.equals(this.h.get(i), iVar.h.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.A == 0) {
            String str = this.a;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
            String str2 = this.f2475e;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f2476f;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.c;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.b) * 31) + this.j) * 31) + this.k) * 31) + this.r) * 31) + this.s) * 31;
            String str5 = this.y;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.z) * 31;
            com.fyber.inneractive.sdk.player.exoplayer2.drm.a aVar = this.i;
            int iHashCode6 = (iHashCode5 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            com.fyber.inneractive.sdk.player.exoplayer2.metadata.a aVar2 = this.f2474d;
            this.A = iHashCode6 + (aVar2 != null ? Arrays.hashCode(aVar2.a) : 0);
        }
        return this.A;
    }

    public String toString() {
        return "Format(" + this.a + ", " + this.f2475e + ", " + this.f2476f + ", " + this.b + ", " + this.y + ", [" + this.j + ", " + this.k + ", " + this.l + "], [" + this.r + ", " + this.s + "])";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.f2475e);
        parcel.writeString(this.f2476f);
        parcel.writeString(this.c);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f2477g);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeFloat(this.l);
        parcel.writeInt(this.m);
        parcel.writeFloat(this.n);
        parcel.writeInt(this.p != null ? 1 : 0);
        byte[] bArr = this.p;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.o);
        parcel.writeParcelable(this.q, i);
        parcel.writeInt(this.r);
        parcel.writeInt(this.s);
        parcel.writeInt(this.t);
        parcel.writeInt(this.u);
        parcel.writeInt(this.v);
        parcel.writeInt(this.x);
        parcel.writeString(this.y);
        parcel.writeInt(this.z);
        parcel.writeLong(this.w);
        int size = this.h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.h.get(i2));
        }
        parcel.writeParcelable(this.i, 0);
        parcel.writeParcelable(this.f2474d, 0);
    }
}
