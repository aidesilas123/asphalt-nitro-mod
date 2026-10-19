package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcfl extends zzcfh {
    public zzcfl(zzcdw zzcdwVar) {
        super(zzcdwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final boolean zzt(String str) {
        String strZze = zzcbg.zze(str);
        zzcdw zzcdwVar = (zzcdw) this.zzc.get();
        if (zzcdwVar != null && strZze != null) {
            zzcdwVar.zzt(strZze, this);
        }
        zzcbn.zzj("VideoStreamNoopCache is doing nothing.");
        zzg(str, strZze, "noop", "Noop cache is a noop.");
        return false;
    }
}
