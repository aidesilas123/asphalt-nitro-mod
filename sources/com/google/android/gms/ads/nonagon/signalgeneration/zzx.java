package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbue;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzgax;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzx implements zzgax {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzaa zzc;

    zzx(zzaa zzaaVar, zzbue zzbueVar, boolean z) {
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
        ArrayList<Uri> arrayList = (ArrayList) obj;
        try {
            this.zza.zzf(arrayList);
            if (this.zzc.zzt || this.zzb) {
                for (Uri uri : arrayList) {
                    if (this.zzc.zzR(uri)) {
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
