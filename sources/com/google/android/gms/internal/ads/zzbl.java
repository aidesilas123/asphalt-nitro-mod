package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbl {
    public final Uri zzb;
    public final List zzf;
    public final zzfwu zzh;

    @Deprecated
    public final List zzi;

    @Nullable
    public final Object zzj;
    public final long zzk;
    private static final String zzl = Integer.toString(0, 36);
    private static final String zzm = Integer.toString(1, 36);
    private static final String zzn = Integer.toString(2, 36);
    private static final String zzo = Integer.toString(3, 36);
    private static final String zzp = Integer.toString(4, 36);
    private static final String zzq = Integer.toString(5, 36);
    private static final String zzr = Integer.toString(6, 36);
    private static final String zzs = Integer.toString(7, 36);
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzbj
    };

    @Nullable
    public final String zzc = null;

    @Nullable
    public final zzbe zzd = null;

    @Nullable
    public final zzat zze = null;

    @Nullable
    public final String zzg = null;

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ zzbl(Uri uri, String str, zzbe zzbeVar, zzat zzatVar, List list, String str2, zzfwu zzfwuVar, Object obj, long j, zzbk zzbkVar) {
        this.zzb = uri;
        this.zzf = list;
        this.zzh = zzfwuVar;
        zzfwr zzfwrVar = new zzfwr();
        if (zzfwuVar.size() > 0) {
            throw null;
        }
        this.zzi = zzfwrVar.zzi();
        this.zzj = null;
        this.zzk = C.TIME_UNSET;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbl)) {
            return false;
        }
        zzbl zzblVar = (zzbl) obj;
        if (this.zzb.equals(zzblVar.zzb) && zzfs.zzF(null, null) && zzfs.zzF(null, null) && zzfs.zzF(null, null) && this.zzf.equals(zzblVar.zzf) && zzfs.zzF(null, null) && this.zzh.equals(zzblVar.zzh) && zzfs.zzF(null, null)) {
            Long lValueOf = Long.valueOf(C.TIME_UNSET);
            if (zzfs.zzF(lValueOf, lValueOf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) ((((long) (((((this.zzb.hashCode() * 923521) + this.zzf.hashCode()) * 961) + this.zzh.hashCode()) * 31)) * 31) + C.TIME_UNSET);
    }
}
