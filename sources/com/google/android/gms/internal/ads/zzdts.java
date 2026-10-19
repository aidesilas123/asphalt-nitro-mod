package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdts implements zzfiv {
    private final zzdtk zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdts(zzdtk zzdtkVar, Set set, Clock clock) {
        this.zzb = zzdtkVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdtr zzdtrVar = (zzdtr) it.next();
            this.zzd.put(zzdtrVar.zzc, zzdtrVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfio zzfioVar, boolean z) {
        zzfio zzfioVar2 = ((zzdtr) this.zzd.get(zzfioVar)).zzb;
        if (this.zza.containsKey(zzfioVar2)) {
            String str = true != z ? "f." : "s.";
            long jElapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfioVar2)).longValue();
            this.zzb.zza().put("label.".concat(((zzdtr) this.zzd.get(zzfioVar)).zza), str.concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfiv
    public final void zzbH(zzfio zzfioVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfiv
    public final void zzbI(zzfio zzfioVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfioVar)) {
            long jElapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfioVar)).longValue();
            zzdtk zzdtkVar = this.zzb;
            String strValueOf = String.valueOf(str);
            zzdtkVar.zza().put("task.".concat(strValueOf), "f.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.zzd.containsKey(zzfioVar)) {
            zze(zzfioVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfiv
    public final void zzbJ(zzfio zzfioVar, String str) {
        this.zza.put(zzfioVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfiv
    public final void zzd(zzfio zzfioVar, String str) {
        if (this.zza.containsKey(zzfioVar)) {
            long jElapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfioVar)).longValue();
            zzdtk zzdtkVar = this.zzb;
            String strValueOf = String.valueOf(str);
            zzdtkVar.zza().put("task.".concat(strValueOf), "s.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.zzd.containsKey(zzfioVar)) {
            zze(zzfioVar, true);
        }
    }
}
