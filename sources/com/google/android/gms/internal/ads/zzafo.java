package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzafo extends zzagb {
    public static final Parcelable.Creator<zzafo> CREATOR = new zzafn();
    public final byte[] zza;

    /* JADX WARN: Illegal instructions before constructor call */
    zzafo(Parcel parcel) {
        String string = parcel.readString();
        int i = zzfs.zza;
        super(string);
        this.zza = parcel.createByteArray();
    }

    public zzafo(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafo.class == obj.getClass()) {
            zzafo zzafoVar = (zzafo) obj;
            if (this.zzf.equals(zzafoVar.zzf) && Arrays.equals(this.zza, zzafoVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zzf.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Arrays.hashCode(this.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeByteArray(this.zza);
    }
}
