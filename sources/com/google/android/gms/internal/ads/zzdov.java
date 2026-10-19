package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdov implements zzbkd {

    @Nullable
    private final zzbhm zza;
    private final zzdpj zzb;
    private final zzhdj zzc;

    public zzdov(zzdkv zzdkvVar, zzdkk zzdkkVar, zzdpj zzdpjVar, zzhdj zzhdjVar) {
        this.zza = zzdkvVar.zzc(zzdkkVar.zzA());
        this.zzb = zzdpjVar;
        this.zzc = zzhdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.zza.zze((zzbhc) this.zzc.zzb(), str);
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to call onCustomClick for asset " + str + ".", e2);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzi("/nativeAdCustomClick", this);
    }
}
