package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfz implements zzca {
    public static final Parcelable.Creator<zzfz> CREATOR = new zzfx();
    public final float zza;
    public final float zzb;

    public zzfz(@FloatRange(from = -90.0d, to = 90.0d) float f2, @FloatRange(from = -180.0d, to = 180.0d) float f3) {
        boolean z = false;
        if (f2 >= -90.0f && f2 <= 90.0f && f3 >= -180.0f && f3 <= 180.0f) {
            z = true;
        }
        zzef.zze(z, "Invalid latitude or longitude");
        this.zza = f2;
        this.zzb = f3;
    }

    /* synthetic */ zzfz(Parcel parcel, zzfy zzfyVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readFloat();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfz.class == obj.getClass()) {
            zzfz zzfzVar = (zzfz) obj;
            if (this.zza == zzfzVar.zza && this.zzb == zzfzVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Float.valueOf(this.zzb).hashCode();
    }

    public final String toString() {
        return "xyz: latitude=" + this.zza + ", longitude=" + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeFloat(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzca
    public final /* synthetic */ void zza(zzbw zzbwVar) {
    }
}
