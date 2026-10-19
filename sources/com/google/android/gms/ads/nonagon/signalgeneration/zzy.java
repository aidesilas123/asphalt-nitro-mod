package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbue;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzgax;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzy implements zzgax {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzaa zzc;

    zzy(zzaa zzaaVar, zzbue zzbueVar, boolean z) {
        this.zzc = zzaaVar;
        this.zza = zzbueVar;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        try {
            this.zza.zze("Internal error: " + th.getMessage());
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List<Uri> list = (List) obj;
        try {
            zzaa.zzH(this.zzc, list);
            this.zza.zzf(list);
            if (this.zzc.zzu || this.zzb) {
                for (Uri uri : list) {
                    if (this.zzc.zzQ(uri)) {
                        this.zzc.zzs.zzc(zzaa.zzab(uri, this.zzc.zzC, "1").toString(), null);
                    } else {
                        if (((Boolean) zzba.zzc().zza(zzbdc.zzhx)).booleanValue()) {
                            this.zzc.zzs.zzc(uri.toString(), null);
                        }
                    }
                }
            }
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }
}
