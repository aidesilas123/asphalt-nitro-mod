package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
@TargetApi(14)
@MainThread
final class zzim implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ zzin zza;

    /* synthetic */ zzim(zzin zzinVar, zzil zzilVar) {
        this.zza = zzinVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzgi zzgiVar;
        Uri data;
        try {
            try {
                this.zza.zzs.zzaz().zzj().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null || (data = intent.getData()) == null || !data.isHierarchical()) {
                    zzgiVar = this.zza.zzs;
                } else {
                    this.zza.zzs.zzv();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z = false;
                    }
                    this.zza.zzs.zzaA().zzp(new zzik(this, z, data, str, queryParameter));
                    zzgiVar = this.zza.zzs;
                }
            } catch (RuntimeException e2) {
                this.zza.zzs.zzaz().zzd().zzb("Throwable caught in onActivityCreated", e2);
                zzgiVar = this.zza.zzs;
            }
            zzgiVar.zzs().zzr(activity, bundle);
        } catch (Throwable th) {
            this.zza.zzs.zzs().zzr(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzs.zzs().zzs(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.zza.zzs.zzs().zzt(activity);
        zzkr zzkrVarZzu = this.zza.zzs.zzu();
        zzkrVarZzu.zzs.zzaA().zzp(new zzkk(zzkrVarZzu, zzkrVarZzu.zzs.zzaw().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        zzkr zzkrVarZzu = this.zza.zzs.zzu();
        zzkrVarZzu.zzs.zzaA().zzp(new zzkj(zzkrVarZzu, zzkrVarZzu.zzs.zzaw().elapsedRealtime()));
        this.zza.zzs.zzs().zzu(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zza.zzs.zzs().zzv(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
