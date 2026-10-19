package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzafq extends zzagb {
    public static final Parcelable.Creator<zzafq> CREATOR = new zzafp();
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzagb[] zzg;

    zzafq(Parcel parcel) {
        super(ChapterFrame.ID);
        String string = parcel.readString();
        int i = zzfs.zza;
        this.zza = string;
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
        int i2 = parcel.readInt();
        this.zzg = new zzagb[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.zzg[i3] = (zzagb) parcel.readParcelable(zzagb.class.getClassLoader());
        }
    }

    public zzafq(String str, int i, int i2, long j, long j2, zzagb[] zzagbVarArr) {
        super(ChapterFrame.ID);
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = j2;
        this.zzg = zzagbVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzagb, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafq.class == obj.getClass()) {
            zzafq zzafqVar = (zzafq) obj;
            if (this.zzb == zzafqVar.zzb && this.zzc == zzafqVar.zzc && this.zzd == zzafqVar.zzd && this.zze == zzafqVar.zze && zzfs.zzF(this.zza, zzafqVar.zza) && Arrays.equals(this.zzg, zzafqVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        return ((((((((this.zzb + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + ((int) this.zze)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeLong(this.zze);
        parcel.writeInt(this.zzg.length);
        for (zzagb zzagbVar : this.zzg) {
            parcel.writeParcelable(zzagbVar, 0);
        }
    }
}
