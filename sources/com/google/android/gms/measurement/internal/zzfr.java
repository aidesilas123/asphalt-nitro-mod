package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfr {
    private final zza zza;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzfr(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.zza = zzaVar;
    }

    @MainThread
    public final void zza(Context context, Intent intent) {
        zzgi zzgiVarZzp = zzgi.zzp(context, null, null);
        zzey zzeyVarZzaz = zzgiVarZzp.zzaz();
        if (intent == null) {
            zzeyVarZzaz.zzk().zza("Receiver called with null intent");
            return;
        }
        zzgiVarZzp.zzax();
        String action = intent.getAction();
        zzeyVarZzaz.zzj().zzb("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                zzeyVarZzaz.zzk().zza("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzeyVarZzaz.zzj().zza("Starting wakeful intent.");
            this.zza.doStartService(context, className);
        }
    }
}
