package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzafg implements zzca {
    public static final Parcelable.Creator<zzafg> CREATOR = new zzaff();
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzafg(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    zzafg(Parcel parcel) {
        this.zza = parcel.readInt();
        String string = parcel.readString();
        int i = zzfs.zza;
        this.zzb = string;
        this.zzc = parcel.readString();
        this.zzd = parcel.readInt();
        this.zze = parcel.readInt();
        this.zzf = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzh = parcel.createByteArray();
    }

    public static zzafg zzb(zzfj zzfjVar) {
        int iZzf = zzfjVar.zzf();
        String strZzy = zzfjVar.zzy(zzfjVar.zzf(), zzftl.zza);
        String strZzy2 = zzfjVar.zzy(zzfjVar.zzf(), zzftl.zzc);
        int iZzf2 = zzfjVar.zzf();
        int iZzf3 = zzfjVar.zzf();
        int iZzf4 = zzfjVar.zzf();
        int iZzf5 = zzfjVar.zzf();
        int iZzf6 = zzfjVar.zzf();
        byte[] bArr = new byte[iZzf6];
        zzfjVar.zzC(bArr, 0, iZzf6);
        return new zzafg(iZzf, strZzy, strZzy2, iZzf2, iZzf3, iZzf4, iZzf5, bArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafg.class == obj.getClass()) {
            zzafg zzafgVar = (zzafg) obj;
            if (this.zza == zzafgVar.zza && this.zzb.equals(zzafgVar.zzb) && this.zzc.equals(zzafgVar.zzc) && this.zzd == zzafgVar.zzd && this.zze == zzafgVar.zze && this.zzf == zzafgVar.zzf && this.zzg == zzafgVar.zzg && Arrays.equals(this.zzh, zzafgVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.zza + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + this.zzd) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31) + Arrays.hashCode(this.zzh);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.zzb + ", description=" + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeInt(this.zzd);
        parcel.writeInt(this.zze);
        parcel.writeInt(this.zzf);
        parcel.writeInt(this.zzg);
        parcel.writeByteArray(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzca
    public final void zza(zzbw zzbwVar) {
        zzbwVar.zza(this.zzh, this.zza);
    }
}
