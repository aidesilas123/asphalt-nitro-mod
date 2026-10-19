package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "GassResponseParcelCreator")
public final class zzfpd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfpd> CREATOR = new zzfpe();

    @SafeParcelable.VersionField(id = 1)
    public final int zza;

    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private zzaqd zzb = null;
    private byte[] zzc;

    @SafeParcelable.Constructor
    zzfpd(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzaqd zzaqdVar = this.zzb;
        if (zzaqdVar != null || this.zzc == null) {
            if (zzaqdVar == null || this.zzc != null) {
                if (zzaqdVar != null && this.zzc != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (zzaqdVar != null || this.zzc != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        byte[] bArrZzax = this.zzc;
        if (bArrZzax == null) {
            bArrZzax = this.zzb.zzax();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArrZzax, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzaqd zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzaqd.zze(this.zzc, zzgvy.zza());
                this.zzc = null;
            } catch (zzgwy | NullPointerException e2) {
                throw new IllegalStateException(e2);
            }
        }
        zzb();
        return this.zzb;
    }
}
