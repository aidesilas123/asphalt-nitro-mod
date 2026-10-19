package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzau {

    @Nullable
    private String zza;

    @Nullable
    private Uri zzb;
    private final zzaw zzc = new zzaw();
    private final zzbd zzd = new zzbd(null);
    private final List zze = Collections.emptyList();
    private final zzfwu zzf = zzfwu.zzl();
    private final zzbg zzg = new zzbg();
    private final zzbo zzh = zzbo.zza;

    public final zzau zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzau zzb(@Nullable Uri uri) {
        this.zzb = uri;
        return this;
    }

    public final zzbs zzc() {
        zzbl zzblVar;
        Uri uri = this.zzb;
        if (uri != null) {
            zzblVar = new zzbl(uri, null, null, null, this.zze, null, this.zzf, null, C.TIME_UNSET, null);
        } else {
            zzblVar = null;
        }
        String str = this.zza;
        if (str == null) {
            str = "";
        }
        return new zzbs(str, new zzba(this.zzc, null), zzblVar, new zzbi(this.zzg), zzby.zza, this.zzh, null);
    }
}
