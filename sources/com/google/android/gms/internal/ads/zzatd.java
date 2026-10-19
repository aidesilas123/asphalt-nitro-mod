package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzatd implements zzfps {
    private final zzfnv zza;
    private final zzfom zzb;
    private final zzatq zzc;
    private final zzatc zzd;
    private final zzasm zze;
    private final zzats zzf;
    private final zzatk zzg;
    private final zzatb zzh;

    zzatd(@NonNull zzfnv zzfnvVar, @NonNull zzfom zzfomVar, @NonNull zzatq zzatqVar, @NonNull zzatc zzatcVar, @Nullable zzasm zzasmVar, @Nullable zzats zzatsVar, @Nullable zzatk zzatkVar, @Nullable zzatb zzatbVar) {
        this.zza = zzfnvVar;
        this.zzb = zzfomVar;
        this.zzc = zzatqVar;
        this.zzd = zzatcVar;
        this.zze = zzasmVar;
        this.zzf = zzatsVar;
        this.zzg = zzatkVar;
        this.zzh = zzatbVar;
    }

    private final Map zze() {
        HashMap map = new HashMap();
        zzfnv zzfnvVar = this.zza;
        zzaqd zzaqdVarZzb = this.zzb.zzb();
        map.put("v", zzfnvVar.zzb());
        map.put("gms", Boolean.valueOf(this.zza.zzc()));
        map.put("int", zzaqdVarZzb.zzh());
        map.put("up", Boolean.valueOf(this.zzd.zza()));
        map.put("t", new Throwable());
        zzatk zzatkVar = this.zzg;
        if (zzatkVar != null) {
            map.put("tcq", Long.valueOf(zzatkVar.zzc()));
            map.put("tpq", Long.valueOf(this.zzg.zzg()));
            map.put("tcv", Long.valueOf(this.zzg.zzd()));
            map.put("tpv", Long.valueOf(this.zzg.zzh()));
            map.put("tchv", Long.valueOf(this.zzg.zzb()));
            map.put("tphv", Long.valueOf(this.zzg.zzf()));
            map.put("tcc", Long.valueOf(this.zzg.zza()));
            map.put("tpc", Long.valueOf(this.zzg.zze()));
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public final Map zza() {
        zzatq zzatqVar = this.zzc;
        Map mapZze = zze();
        mapZze.put("lts", Long.valueOf(zzatqVar.zza()));
        return mapZze;
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public final Map zzb() {
        Map mapZze = zze();
        zzaqd zzaqdVarZza = this.zzb.zza();
        mapZze.put("gai", Boolean.valueOf(this.zza.zzd()));
        mapZze.put("did", zzaqdVarZza.zzg());
        mapZze.put("dst", Integer.valueOf(zzaqdVarZza.zzal() - 1));
        mapZze.put("doo", Boolean.valueOf(zzaqdVarZza.zzai()));
        zzasm zzasmVar = this.zze;
        if (zzasmVar != null) {
            mapZze.put("nt", Long.valueOf(zzasmVar.zza()));
        }
        zzats zzatsVar = this.zzf;
        if (zzatsVar != null) {
            mapZze.put("vs", Long.valueOf(zzatsVar.zzc()));
            mapZze.put("vf", Long.valueOf(this.zzf.zzb()));
        }
        return mapZze;
    }

    @Override // com.google.android.gms.internal.ads.zzfps
    public final Map zzc() {
        zzatb zzatbVar = this.zzh;
        Map mapZze = zze();
        if (zzatbVar != null) {
            mapZze.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_VST, zzatbVar.zza());
        }
        return mapZze;
    }

    final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
