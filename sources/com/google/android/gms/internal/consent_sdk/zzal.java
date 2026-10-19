package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzal {
    private Application zza;

    private zzal() {
    }

    /* synthetic */ zzal(zzak zzakVar) {
    }

    public final zzc zza() {
        zzdq.zzb(this.zza, Application.class);
        return new zzaj(this.zza, null);
    }

    public final zzal zzb(Application application) {
        Objects.requireNonNull(application);
        this.zza = application;
        return this;
    }
}
