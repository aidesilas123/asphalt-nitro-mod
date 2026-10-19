package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcqa implements zzcyh, zzczv, zzczb, com.google.android.gms.ads.internal.client.zza, zzcyx, zzdfv {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfeh zze;
    private final zzfdu zzf;
    private final zzfkw zzg;
    private final zzffa zzh;
    private final zzasi zzi;
    private final zzbee zzj;
    private final zzfkh zzk;
    private final WeakReference zzl;
    private final WeakReference zzm;

    @Nullable
    private final zzcxj zzn;
    private boolean zzo;
    private final AtomicBoolean zzp = new AtomicBoolean();
    private final zzbeg zzq;

    zzcqa(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfeh zzfehVar, zzfdu zzfduVar, zzfkw zzfkwVar, zzffa zzffaVar, @Nullable View view, @Nullable zzcgv zzcgvVar, zzasi zzasiVar, zzbee zzbeeVar, zzbeg zzbegVar, zzfkh zzfkhVar, @Nullable zzcxj zzcxjVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfehVar;
        this.zzf = zzfduVar;
        this.zzg = zzfkwVar;
        this.zzh = zzffaVar;
        this.zzi = zzasiVar;
        this.zzl = new WeakReference(view);
        this.zzm = new WeakReference(zzcgvVar);
        this.zzj = zzbeeVar;
        this.zzq = zzbegVar;
        this.zzk = zzfkhVar;
        this.zzn = zzcxjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzt() {
        String strZzh;
        int i;
        List list;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkM)).booleanValue() && ((list = this.zzf.zzd) == null || list.isEmpty())) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdn)).booleanValue()) {
            strZzh = this.zzi.zzc().zzh(this.zza, (View) this.zzl.get(), null);
        } else {
            strZzh = null;
        }
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzan)).booleanValue() && this.zze.zzb.zzb.zzg) || !((Boolean) zzbeu.zzh.zze()).booleanValue()) {
            zzffa zzffaVar = this.zzh;
            zzfkw zzfkwVar = this.zzg;
            zzfeh zzfehVar = this.zze;
            zzfdu zzfduVar = this.zzf;
            zzffaVar.zza(zzfkwVar.zzd(zzfehVar, zzfduVar, false, strZzh, null, zzfduVar.zzd));
            return;
        }
        if (((Boolean) zzbeu.zzg.zze()).booleanValue() && ((i = this.zzf.zzb) == 1 || i == 2 || i == 5)) {
        }
        zzgbb.zzr((zzgas) zzgbb.zzo(zzgas.zzu(zzgbb.zzh(null)), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaU)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcpz(this, strZzh), this.zzb);
    }

    private final void zzu(final int i, final int i2) {
        View view;
        if (i <= 0 || !((view = (View) this.zzl.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            zzt();
        } else {
            this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpx
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(i, i2);
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzan)).booleanValue() && this.zze.zzb.zzb.zzg) && ((Boolean) zzbeu.zzd.zze()).booleanValue()) {
            zzgbb.zzr(zzgbb.zze(zzgas.zzu(this.zzj.zza()), Throwable.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzcpu
                @Override // com.google.android.gms.internal.ads.zzftn
                public final Object apply(Object obj) {
                    return "failure_click_attok";
                }
            }, zzcca.zzf), new zzcpy(this), this.zzb);
            return;
        }
        zzffa zzffaVar = this.zzh;
        zzfkw zzfkwVar = this.zzg;
        zzfeh zzfehVar = this.zze;
        zzfdu zzfduVar = this.zzf;
        zzffaVar.zzc(zzfkwVar.zzc(zzfehVar, zzfduVar, zzfduVar.zzc), true == com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza) ? 2 : 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzbx(zzbwq zzbwqVar, String str, String str2) {
        zzfkw zzfkwVar = this.zzg;
        zzfdu zzfduVar = this.zzf;
        this.zzh.zza(zzfkwVar.zze(zzfduVar, zzfduVar.zzi, zzbwqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zze() {
        zzfkw zzfkwVar = this.zzg;
        zzfeh zzfehVar = this.zze;
        zzfdu zzfduVar = this.zzf;
        this.zzh.zza(zzfkwVar.zzc(zzfehVar, zzfduVar, zzfduVar.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzf() {
        zzfkw zzfkwVar = this.zzg;
        zzfeh zzfehVar = this.zze;
        zzfdu zzfduVar = this.zzf;
        this.zzh.zza(zzfkwVar.zzc(zzfehVar, zzfduVar, zzfduVar.zzh));
    }

    final /* synthetic */ void zzm() {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpw
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzt();
            }
        });
    }

    final /* synthetic */ void zzn(int i, int i2) {
        zzu(i - 1, i2);
    }

    final /* synthetic */ void zzo(final int i, final int i2) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpv
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzn(i, i2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzp(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbt)).booleanValue()) {
            this.zzh.zza(this.zzg.zzc(this.zze, this.zzf, zzfkw.zzf(2, zzeVar.zza, this.zzf.zzp)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczb
    public final void zzq() {
        if (this.zzp.compareAndSet(false, true)) {
            int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdw)).intValue();
            if (iIntValue > 0) {
                zzu(iIntValue, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdx)).intValue());
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdv)).booleanValue()) {
                this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpt
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzm();
                    }
                });
            } else {
                zzt();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final synchronized void zzr() {
        zzcxj zzcxjVar;
        if (this.zzo) {
            ArrayList arrayList = new ArrayList(this.zzf.zzd);
            arrayList.addAll(this.zzf.zzg);
            this.zzh.zza(this.zzg.zzd(this.zze, this.zzf, true, null, null, arrayList));
        } else {
            zzffa zzffaVar = this.zzh;
            zzfkw zzfkwVar = this.zzg;
            zzfeh zzfehVar = this.zze;
            zzfdu zzfduVar = this.zzf;
            zzffaVar.zza(zzfkwVar.zzc(zzfehVar, zzfduVar, zzfduVar.zzn));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzds)).booleanValue() && (zzcxjVar = this.zzn) != null) {
                List listZzh = zzfkw.zzh(zzfkw.zzg(zzcxjVar.zzb().zzn, zzcxjVar.zza().zzg()), this.zzn.zza().zza());
                zzffa zzffaVar2 = this.zzh;
                zzfkw zzfkwVar2 = this.zzg;
                zzcxj zzcxjVar2 = this.zzn;
                zzffaVar2.zza(zzfkwVar2.zzc(zzcxjVar2.zzc(), zzcxjVar2.zzb(), listZzh));
            }
            zzffa zzffaVar3 = this.zzh;
            zzfkw zzfkwVar3 = this.zzg;
            zzfeh zzfehVar2 = this.zze;
            zzfdu zzfduVar2 = this.zzf;
            zzffaVar3.zza(zzfkwVar3.zzc(zzfehVar2, zzfduVar2, zzfduVar2.zzg));
        }
        this.zzo = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfv
    public final void zzs() {
        zzfkw zzfkwVar = this.zzg;
        zzfeh zzfehVar = this.zze;
        zzfdu zzfduVar = this.zzf;
        this.zzh.zza(zzfkwVar.zzc(zzfehVar, zzfduVar, zzfduVar.zzau));
    }
}
