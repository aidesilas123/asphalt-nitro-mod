package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzki {
    private final Context zza;

    public zzki(Context context) {
        Preconditions.checkNotNull(context);
        this.zza = context;
    }

    private final zzey zzk() {
        return zzgi.zzp(this.zza, null, null).zzaz();
    }

    @MainThread
    public final int zza(final Intent intent, int i, final int i2) {
        zzgi zzgiVarZzp = zzgi.zzp(this.zza, null, null);
        final zzey zzeyVarZzaz = zzgiVarZzp.zzaz();
        if (intent == null) {
            zzeyVarZzaz.zzk().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzgiVarZzp.zzax();
        zzeyVarZzaz.zzj().zzc("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzh(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzke
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzc(i2, zzeyVarZzaz, intent);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final IBinder zzb(Intent intent) {
        if (intent == null) {
            zzk().zzd().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzha(zzli.zzt(this.zza), null);
        }
        zzk().zzk().zzb("onBind received unknown action", action);
        return null;
    }

    final /* synthetic */ void zzc(int i, zzey zzeyVar, Intent intent) {
        if (((zzkh) this.zza).zzc(i)) {
            zzeyVar.zzj().zzb("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzk().zzj().zza("Completed wakeful intent.");
            ((zzkh) this.zza).zza(intent);
        }
    }

    final /* synthetic */ void zzd(zzey zzeyVar, JobParameters jobParameters) {
        zzeyVar.zzj().zza("AppMeasurementJobService processed last upload request.");
        ((zzkh) this.zza).zzb(jobParameters, false);
    }

    @MainThread
    public final void zze() {
        zzgi zzgiVarZzp = zzgi.zzp(this.zza, null, null);
        zzey zzeyVarZzaz = zzgiVarZzp.zzaz();
        zzgiVarZzp.zzax();
        zzeyVarZzaz.zzj().zza("Local AppMeasurementService is starting up");
    }

    @MainThread
    public final void zzf() {
        zzgi zzgiVarZzp = zzgi.zzp(this.zza, null, null);
        zzey zzeyVarZzaz = zzgiVarZzp.zzaz();
        zzgiVarZzp.zzax();
        zzeyVarZzaz.zzj().zza("Local AppMeasurementService is shutting down");
    }

    @MainThread
    public final void zzg(Intent intent) {
        if (intent == null) {
            zzk().zzd().zza("onRebind called with null intent");
        } else {
            zzk().zzj().zzb("onRebind called. action", intent.getAction());
        }
    }

    public final void zzh(Runnable runnable) {
        zzli zzliVarZzt = zzli.zzt(this.zza);
        zzliVarZzt.zzaA().zzp(new zzkg(this, zzliVarZzt, runnable));
    }

    @TargetApi(24)
    @MainThread
    public final boolean zzi(final JobParameters jobParameters) {
        zzgi zzgiVarZzp = zzgi.zzp(this.zza, null, null);
        final zzey zzeyVarZzaz = zzgiVarZzp.zzaz();
        String string = jobParameters.getExtras().getString("action");
        zzgiVarZzp.zzax();
        zzeyVarZzaz.zzj().zzb("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        zzh(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzkf
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd(zzeyVarZzaz, jobParameters);
            }
        });
        return true;
    }

    @MainThread
    public final boolean zzj(Intent intent) {
        if (intent == null) {
            zzk().zzd().zza("onUnbind called with null intent");
            return true;
        }
        zzk().zzj().zzb("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
