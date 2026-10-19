package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfg extends BroadcastReceiver {

    @VisibleForTesting
    static final String zza = zzfg.class.getName();
    private final zzli zzb;
    private boolean zzc;
    private boolean zzd;

    zzfg(zzli zzliVar) {
        Preconditions.checkNotNull(zzliVar);
        this.zzb = zzliVar;
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        this.zzb.zzB();
        String action = intent.getAction();
        this.zzb.zzaz().zzj().zzb("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.zzb.zzaz().zzk().zzb("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zZza = this.zzb.zzl().zza();
        if (this.zzd != zZza) {
            this.zzd = zZza;
            this.zzb.zzaA().zzp(new zzff(this, zZza));
        }
    }

    @WorkerThread
    public final void zzb() {
        this.zzb.zzB();
        this.zzb.zzaA().zzg();
        if (this.zzc) {
            return;
        }
        this.zzb.zzav().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzd = this.zzb.zzl().zza();
        this.zzb.zzaz().zzj().zzb("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzd));
        this.zzc = true;
    }

    @WorkerThread
    public final void zzc() {
        this.zzb.zzB();
        this.zzb.zzaA().zzg();
        this.zzb.zzaA().zzg();
        if (this.zzc) {
            this.zzb.zzaz().zzj().zza("Unregistering connectivity change receiver");
            this.zzc = false;
            this.zzd = false;
            try {
                this.zzb.zzav().unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                this.zzb.zzaz().zzd().zzb("Failed to unregister the network broadcast receiver", e2);
            }
        }
    }
}
