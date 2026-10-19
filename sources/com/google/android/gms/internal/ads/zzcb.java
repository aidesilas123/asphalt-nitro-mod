package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcb implements Parcelable {
    public static final Parcelable.Creator<zzcb> CREATOR = new zzbz();
    public final long zza;
    private final zzca[] zzb;

    public zzcb(long j, zzca... zzcaVarArr) {
        this.zza = j;
        this.zzb = zzcaVarArr;
    }

    zzcb(Parcel parcel) {
        this.zzb = new zzca[parcel.readInt()];
        int i = 0;
        while (true) {
            zzca[] zzcaVarArr = this.zzb;
            if (i >= zzcaVarArr.length) {
                this.zza = parcel.readLong();
                return;
            } else {
                zzcaVarArr[i] = (zzca) parcel.readParcelable(zzca.class.getClassLoader());
                i++;
            }
        }
    }

    public zzcb(List list) {
        this(C.TIME_UNSET, (zzca[]) list.toArray(new zzca[0]));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcb.class == obj.getClass()) {
            zzcb zzcbVar = (zzcb) obj;
            if (Arrays.equals(this.zzb, zzcbVar.zzb) && this.zza == zzcbVar.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.zzb) * 31;
        long j = this.zza;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        String str;
        long j = this.zza;
        String string = Arrays.toString(this.zzb);
        if (j == C.TIME_UNSET) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        return "entries=" + string + str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzb.length);
        for (zzca zzcaVar : this.zzb) {
            parcel.writeParcelable(zzcaVar, 0);
        }
        parcel.writeLong(this.zza);
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final zzca zzb(int i) {
        return this.zzb[i];
    }

    public final zzcb zzc(zzca... zzcaVarArr) {
        int length = zzcaVarArr.length;
        if (length == 0) {
            return this;
        }
        long j = this.zza;
        zzca[] zzcaVarArr2 = this.zzb;
        int i = zzfs.zza;
        int length2 = zzcaVarArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(zzcaVarArr2, length2 + length);
        System.arraycopy(zzcaVarArr, 0, objArrCopyOf, length2, length);
        return new zzcb(j, (zzca[]) objArrCopyOf);
    }

    public final zzcb zzd(@Nullable zzcb zzcbVar) {
        return zzcbVar == null ? this : zzc(zzcbVar.zzb);
    }
}
