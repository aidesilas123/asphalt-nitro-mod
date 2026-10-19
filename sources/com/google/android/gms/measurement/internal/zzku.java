package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzku extends zzkw {
    private final AlarmManager zza;
    private zzao zzb;
    private Integer zzc;

    protected zzku(zzli zzliVar) {
        super(zzliVar);
        this.zza = (AlarmManager) this.zzs.zzav().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    private final int zzf() {
        if (this.zzc == null) {
            this.zzc = Integer.valueOf("measurement".concat(String.valueOf(this.zzs.zzav().getPackageName())).hashCode());
        }
        return this.zzc.intValue();
    }

    private final PendingIntent zzh() {
        Context contextZzav = this.zzs.zzav();
        return PendingIntent.getBroadcast(contextZzav, 0, new Intent().setClassName(contextZzav, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzbs.zza);
    }

    private final zzao zzi() {
        if (this.zzb == null) {
            this.zzb = new zzkt(this, this.zzf.zzq());
        }
        return this.zzb;
    }

    @TargetApi(24)
    private final void zzj() {
        JobScheduler jobScheduler = (JobScheduler) this.zzs.zzav().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(zzf());
        }
    }

    public final void zza() {
        zzW();
        this.zzs.zzaz().zzj().zza("Unscheduling upload");
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzh());
        }
        zzi().zzb();
        if (Build.VERSION.SDK_INT >= 24) {
            zzj();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    protected final boolean zzb() {
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzh());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzj();
        return false;
    }

    public final void zzd(long j) {
        zzW();
        this.zzs.zzax();
        Context contextZzav = this.zzs.zzav();
        if (!zzlp.zzaj(contextZzav)) {
            this.zzs.zzaz().zzc().zza("Receiver not registered/enabled");
        }
        if (!zzlp.zzak(contextZzav, false)) {
            this.zzs.zzaz().zzc().zza("Service not registered/enabled");
        }
        zza();
        this.zzs.zzaz().zzj().zzb("Scheduling upload, millis", Long.valueOf(j));
        long jElapsedRealtime = this.zzs.zzaw().elapsedRealtime() + j;
        this.zzs.zzf();
        if (j < Math.max(0L, ((Long) zzel.zzw.zza(null)).longValue()) && !zzi().zze()) {
            zzi().zzd(j);
        }
        this.zzs.zzax();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.zza;
            if (alarmManager != null) {
                this.zzs.zzf();
                alarmManager.setInexactRepeating(2, jElapsedRealtime, Math.max(((Long) zzel.zzr.zza(null)).longValue(), j), zzh());
                return;
            }
            return;
        }
        Context contextZzav2 = this.zzs.zzav();
        ComponentName componentName = new ComponentName(contextZzav2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int iZzf = zzf();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzbt.zza(contextZzav2, new JobInfo.Builder(iZzf, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
