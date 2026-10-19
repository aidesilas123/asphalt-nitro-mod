package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.h0;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzayj implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzayb zza;
    final /* synthetic */ zzccf zzb;
    final /* synthetic */ zzayl zzc;

    zzayj(zzayl zzaylVar, zzayb zzaybVar, zzccf zzccfVar) {
        this.zzc = zzaylVar;
        this.zza = zzaybVar;
        this.zzb = zzccfVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        synchronized (this.zzc.zzd) {
            zzayl zzaylVar = this.zzc;
            if (zzaylVar.zzb) {
                return;
            }
            zzaylVar.zzb = true;
            final zzaya zzayaVar = this.zzc.zza;
            if (zzayaVar == null) {
                return;
            }
            zzgbl zzgblVar = zzcca.zza;
            final zzayb zzaybVar = this.zza;
            final zzccf zzccfVar = this.zzb;
            final h0 h0VarZza = zzgblVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzayg
                @Override // java.lang.Runnable
                public final void run() {
                    zzayj zzayjVar = this.zza;
                    zzaya zzayaVar2 = zzayaVar;
                    zzccf zzccfVar2 = zzccfVar;
                    try {
                        zzayd zzaydVarZzq = zzayaVar2.zzq();
                        boolean zZzp = zzayaVar2.zzp();
                        zzayb zzaybVar2 = zzaybVar;
                        zzaxy zzaxyVarZzg = zZzp ? zzaydVarZzq.zzg(zzaybVar2) : zzaydVarZzq.zzf(zzaybVar2);
                        if (!zzaxyVarZzg.zze()) {
                            zzccfVar2.zzd(new RuntimeException("No entry contents."));
                            zzayl.zze(zzayjVar.zzc);
                            return;
                        }
                        zzayi zzayiVar = new zzayi(zzayjVar, zzaxyVarZzg.zzc(), 1);
                        int i = zzayiVar.read();
                        if (i == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzayiVar.unread(i);
                        zzccfVar2.zzc(zzayn.zzb(zzayiVar, zzaxyVarZzg.zzd(), zzaxyVarZzg.zzg(), zzaxyVarZzg.zza(), zzaxyVarZzg.zzf()));
                    } catch (RemoteException | IOException e2) {
                        zzcbn.zzh("Unable to obtain a cache service instance.", e2);
                        zzccfVar2.zzd(e2);
                        zzayl.zze(zzayjVar.zzc);
                    }
                }
            });
            final zzccf zzccfVar2 = this.zzb;
            zzccfVar2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzayh
                @Override // java.lang.Runnable
                public final void run() {
                    if (zzccfVar2.isCancelled()) {
                        h0VarZza.cancel(true);
                    }
                }
            }, zzcca.zzf);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
