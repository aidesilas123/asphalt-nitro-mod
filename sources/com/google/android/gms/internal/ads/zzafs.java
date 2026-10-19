package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzafs extends zzagb {
    public static final Parcelable.Creator<zzafs> CREATOR = new zzafr();
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzagb[] zze;

    zzafs(Parcel parcel) {
        super(ChapterTocFrame.ID);
        String string = parcel.readString();
        int i = zzfs.zza;
        this.zza = string;
        this.zzb = parcel.readByte() != 0;
        this.zzc = parcel.readByte() != 0;
        this.zzd = parcel.createStringArray();
        int i2 = parcel.readInt();
        this.zze = new zzagb[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.zze[i3] = (zzagb) parcel.readParcelable(zzagb.class.getClassLoader());
        }
    }

    public zzafs(String str, boolean z, boolean z2, String[] strArr, zzagb[] zzagbVarArr) {
        super(ChapterTocFrame.ID);
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = strArr;
        this.zze = zzagbVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafs.class == obj.getClass()) {
            zzafs zzafsVar = (zzafs) obj;
            if (this.zzb == zzafsVar.zzb && this.zzc == zzafsVar.zzc && zzfs.zzF(this.zza, zzafsVar.zza) && Arrays.equals(this.zzd, zzafsVar.zzd) && Arrays.equals(this.zze, zzafsVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        return (((((this.zzb ? 1 : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + (this.zzc ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByte(this.zzb ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.zzc ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.zzd);
        parcel.writeInt(this.zze.length);
        for (zzagb zzagbVar : this.zze) {
            parcel.writeParcelable(zzagbVar, 0);
        }
    }
}
