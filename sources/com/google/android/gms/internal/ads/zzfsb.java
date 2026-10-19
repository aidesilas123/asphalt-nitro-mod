package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"RestrictedApi"})
@TargetApi(18)
final class zzfsb {
    private static final zzfso zzb = new zzfso("OverlayDisplayService");
    private static final Intent zzc = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");

    @Nullable
    @VisibleForTesting
    final zzfsz zza;
    private final String zzd;

    zzfsb(Context context) {
        if (zzftc.zza(context)) {
            this.zza = new zzfsz(context.getApplicationContext(), zzb, "OverlayDisplayService", zzc, zzfrw.zza, null);
        } else {
            this.zza = null;
        }
        this.zzd = context.getPackageName();
    }

    final void zzc() {
        if (this.zza == null) {
            return;
        }
        zzb.zzc("unbind LMD display overlay service", new Object[0]);
        this.zza.zzu();
    }

    final void zzd(zzfrs zzfrsVar, zzfsg zzfsgVar) {
        if (this.zza == null) {
            zzb.zza("error: %s", "Play Store not found.");
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfry(this, taskCompletionSource, zzfrsVar, zzfsgVar, taskCompletionSource), taskCompletionSource);
        }
    }

    final void zze(zzfsd zzfsdVar, zzfsg zzfsgVar) {
        if (this.zza == null) {
            zzb.zza("error: %s", "Play Store not found.");
            return;
        }
        if (zzfsdVar.zzg() != null) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfrx(this, taskCompletionSource, zzfsdVar, zzfsgVar, taskCompletionSource), taskCompletionSource);
        } else {
            zzb.zza("Failed to convert OverlayDisplayShowRequest when to create a new session: appId cannot be null.", new Object[0]);
            zzfse zzfseVarZzc = zzfsf.zzc();
            zzfseVarZzc.zzb(8160);
            zzfsgVar.zza(zzfseVarZzc.zzc());
        }
    }

    final void zzf(zzfsi zzfsiVar, zzfsg zzfsgVar, int i) {
        if (this.zza == null) {
            zzb.zza("error: %s", "Play Store not found.");
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfrz(this, taskCompletionSource, zzfsiVar, i, zzfsgVar, taskCompletionSource), taskCompletionSource);
        }
    }
}
