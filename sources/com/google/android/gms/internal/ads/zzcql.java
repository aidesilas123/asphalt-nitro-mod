package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcql implements zzavq, zzczc, com.google.android.gms.ads.internal.overlay.zzo, zzczb {
    private final zzcqg zza;
    private final zzcqh zzb;
    private final zzbpg zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final zzcqk zzh = new zzcqk();
    private boolean zzi = false;
    private WeakReference zzj = new WeakReference(this);

    public zzcql(zzbpd zzbpdVar, zzcqh zzcqhVar, Executor executor, zzcqg zzcqgVar, Clock clock) {
        this.zza = zzcqgVar;
        zzboo zzbooVar = zzbor.zza;
        this.zzd = zzbpdVar.zza("google.afma.activeView.handleUpdate", zzbooVar, zzbooVar);
        this.zzb = zzcqhVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzk() {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            this.zza.zzf((zzcgv) it.next());
        }
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbM() {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final synchronized void zzbo(@Nullable Context context) {
        this.zzh.zze = "u";
        zzg();
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbp() {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final synchronized void zzbq(@Nullable Context context) {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final synchronized void zzbr(@Nullable Context context) {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzavq
    public final synchronized void zzbu(zzavp zzavpVar) {
        zzcqk zzcqkVar = this.zzh;
        zzcqkVar.zza = zzavpVar.zzj;
        zzcqkVar.zzf = zzavpVar;
        zzg();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzby() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz(int i) {
    }

    public final synchronized void zzg() {
        if (this.zzj.get() == null) {
            zzj();
            return;
        }
        if (this.zzi || !this.zzg.get()) {
            return;
        }
        try {
            this.zzh.zzd = this.zzf.elapsedRealtime();
            final JSONObject jSONObjectZza = this.zzb.zzb(this.zzh);
            for (final zzcgv zzcgvVar : this.zzc) {
                this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqj
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcgvVar.zzl("AFMA_updateActiveView", jSONObjectZza);
                    }
                });
            }
            zzccd.zzb(this.zzd.zzb(jSONObjectZza), "ActiveViewListener.callActiveViewJs");
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed to call ActiveViewJS", e2);
        }
    }

    public final synchronized void zzh(zzcgv zzcgvVar) {
        this.zzc.add(zzcgvVar);
        this.zza.zzd(zzcgvVar);
    }

    public final void zzi(Object obj) {
        this.zzj = new WeakReference(obj);
    }

    public final synchronized void zzj() {
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzczb
    public final synchronized void zzq() {
        if (this.zzg.compareAndSet(false, true)) {
            this.zza.zzc(this);
            zzg();
        }
    }
}
