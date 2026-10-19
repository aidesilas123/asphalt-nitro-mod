package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
public final class zzkb extends zzf {
    private final zzka zza;
    private zzeo zzb;
    private volatile Boolean zzc;
    private final zzao zzd;
    private final zzks zze;
    private final List zzf;
    private final zzao zzg;

    protected zzkb(zzgi zzgiVar) {
        super(zzgiVar);
        this.zzf = new ArrayList();
        this.zze = new zzks(zzgiVar.zzaw());
        this.zza = new zzka(this);
        this.zzd = new zzjl(this, zzgiVar);
        this.zzg = new zzjn(this, zzgiVar);
    }

    @WorkerThread
    private final zzp zzO(boolean z) {
        Pair pairZza;
        this.zzs.zzax();
        zzep zzepVarZzh = this.zzs.zzh();
        String str = null;
        if (z) {
            zzey zzeyVarZzaz = this.zzs.zzaz();
            if (zzeyVarZzaz.zzs.zzm().zzb != null && (pairZza = zzeyVarZzaz.zzs.zzm().zzb.zza()) != null && pairZza != zzfn.zza) {
                str = String.valueOf(pairZza.second) + CertificateUtil.DELIMITER + ((String) pairZza.first);
            }
        }
        return zzepVarZzh.zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzP() {
        zzg();
        this.zzs.zzaz().zzj().zzb("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e2) {
                this.zzs.zzaz().zzd().zzb("Task exception while flushing queue", e2);
            }
        }
        this.zzf.clear();
        this.zzg.zzb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzQ() {
        zzg();
        this.zze.zzb();
        zzao zzaoVar = this.zzd;
        this.zzs.zzf();
        zzaoVar.zzd(((Long) zzel.zzI.zza(null)).longValue());
    }

    @WorkerThread
    private final void zzR(Runnable runnable) throws IllegalStateException {
        zzg();
        if (zzL()) {
            runnable.run();
            return;
        }
        int size = this.zzf.size();
        this.zzs.zzf();
        if (size >= 1000) {
            this.zzs.zzaz().zzd().zza("Discarding data. Max runnable queue size reached");
            return;
        }
        this.zzf.add(runnable);
        this.zzg.zzd(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        zzr();
    }

    private final boolean zzS() {
        this.zzs.zzax();
        return true;
    }

    static /* bridge */ /* synthetic */ void zzo(zzkb zzkbVar, ComponentName componentName) {
        zzkbVar.zzg();
        if (zzkbVar.zzb != null) {
            zzkbVar.zzb = null;
            zzkbVar.zzs.zzaz().zzj().zzb("Disconnected from device MeasurementService", componentName);
            zzkbVar.zzg();
            zzkbVar.zzr();
        }
    }

    @WorkerThread
    protected final void zzA(zzav zzavVar, String str) {
        Preconditions.checkNotNull(zzavVar);
        zzg();
        zza();
        zzS();
        zzR(new zzjq(this, true, zzO(true), this.zzs.zzi().zzo(zzavVar), zzavVar, str));
    }

    @WorkerThread
    public final void zzB(com.google.android.gms.internal.measurement.zzcf zzcfVar, zzav zzavVar, String str) {
        zzg();
        zza();
        if (this.zzs.zzv().zzo(12451000) == 0) {
            zzR(new zzjm(this, zzavVar, str, zzcfVar));
        } else {
            this.zzs.zzaz().zzk().zza("Not bundling data. Service unavailable or out of date");
            this.zzs.zzv().zzS(zzcfVar, new byte[0]);
        }
    }

    @WorkerThread
    protected final void zzC() {
        zzg();
        zza();
        zzp zzpVarZzO = zzO(false);
        zzS();
        this.zzs.zzi().zzj();
        zzR(new zzjf(this, zzpVarZzO));
    }

    @VisibleForTesting
    @WorkerThread
    final void zzD(zzeo zzeoVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        int size;
        zzg();
        zza();
        zzS();
        this.zzs.zzf();
        int i = 0;
        int i2 = 100;
        while (i < 1001 && i2 == 100) {
            ArrayList arrayList = new ArrayList();
            List listZzi = this.zzs.zzi().zzi(100);
            if (listZzi != null) {
                arrayList.addAll(listZzi);
                size = listZzi.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i3);
                if (abstractSafeParcelable2 instanceof zzav) {
                    try {
                        zzeoVar.zzk((zzav) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.zzs.zzaz().zzd().zzb("Failed to send event to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzll) {
                    try {
                        zzeoVar.zzt((zzll) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.zzs.zzaz().zzd().zzb("Failed to send user property to the service", e3);
                    }
                } else if (abstractSafeParcelable2 instanceof zzab) {
                    try {
                        zzeoVar.zzn((zzab) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e4) {
                        this.zzs.zzaz().zzd().zzb("Failed to send conditional user property to the service", e4);
                    }
                } else {
                    this.zzs.zzaz().zzd().zza("Discarding data. Unrecognized parcel type.");
                }
            }
            i++;
            i2 = size;
        }
    }

    @WorkerThread
    protected final void zzE(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        zzg();
        zza();
        this.zzs.zzax();
        zzR(new zzjr(this, true, zzO(true), this.zzs.zzi().zzn(zzabVar), new zzab(zzabVar), zzabVar));
    }

    @WorkerThread
    protected final void zzF(boolean z) {
        zzg();
        zza();
        if (z) {
            zzS();
            this.zzs.zzi().zzj();
        }
        if (zzM()) {
            zzR(new zzjp(this, zzO(false)));
        }
    }

    @WorkerThread
    protected final void zzG(zziu zziuVar) {
        zzg();
        zza();
        zzR(new zzjj(this, zziuVar));
    }

    @WorkerThread
    public final void zzH(Bundle bundle) {
        zzg();
        zza();
        zzR(new zzjk(this, zzO(false), bundle));
    }

    @WorkerThread
    protected final void zzI() {
        zzg();
        zza();
        zzR(new zzjo(this, zzO(true)));
    }

    @VisibleForTesting
    @WorkerThread
    protected final void zzJ(zzeo zzeoVar) {
        zzg();
        Preconditions.checkNotNull(zzeoVar);
        this.zzb = zzeoVar;
        zzQ();
        zzP();
    }

    @WorkerThread
    protected final void zzK(zzll zzllVar) {
        zzg();
        zza();
        zzS();
        zzR(new zzjd(this, zzO(true), this.zzs.zzi().zzp(zzllVar), zzllVar));
    }

    @WorkerThread
    public final boolean zzL() {
        zzg();
        zza();
        return this.zzb != null;
    }

    @WorkerThread
    final boolean zzM() {
        zzg();
        zza();
        return !zzN() || this.zzs.zzv().zzm() >= ((Integer) zzel.zzai.zza(null)).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean zzN() {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkb.zzN():boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    final Boolean zzj() {
        return this.zzc;
    }

    @WorkerThread
    protected final void zzq() {
        zzg();
        zza();
        zzp zzpVarZzO = zzO(true);
        this.zzs.zzi().zzk();
        zzR(new zzji(this, zzpVarZzO));
    }

    @WorkerThread
    final void zzr() {
        zzg();
        zza();
        if (zzL()) {
            return;
        }
        if (zzN()) {
            this.zza.zzc();
            return;
        }
        if (this.zzs.zzf().zzx()) {
            return;
        }
        this.zzs.zzax();
        List<ResolveInfo> listQueryIntentServices = this.zzs.zzav().getPackageManager().queryIntentServices(new Intent().setClassName(this.zzs.zzav(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.zzs.zzaz().zzd().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context contextZzav = this.zzs.zzav();
        this.zzs.zzax();
        intent.setComponent(new ComponentName(contextZzav, "com.google.android.gms.measurement.AppMeasurementService"));
        this.zza.zzb(intent);
    }

    @WorkerThread
    public final void zzs() {
        zzg();
        zza();
        this.zza.zzd();
        try {
            ConnectionTracker.getInstance().unbindService(this.zzs.zzav(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    @WorkerThread
    public final void zzt(com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        zzg();
        zza();
        zzR(new zzjh(this, zzO(false), zzcfVar));
    }

    @WorkerThread
    public final void zzu(AtomicReference atomicReference) {
        zzg();
        zza();
        zzR(new zzjg(this, atomicReference, zzO(false)));
    }

    @WorkerThread
    protected final void zzv(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2) {
        zzg();
        zza();
        zzR(new zzjt(this, str, str2, zzO(false), zzcfVar));
    }

    @WorkerThread
    protected final void zzw(AtomicReference atomicReference, String str, String str2, String str3) {
        zzg();
        zza();
        zzR(new zzjs(this, atomicReference, null, str2, str3, zzO(false)));
    }

    @WorkerThread
    protected final void zzx(AtomicReference atomicReference, boolean z) {
        zzg();
        zza();
        zzR(new zzje(this, atomicReference, zzO(false), z));
    }

    @WorkerThread
    protected final void zzy(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2, boolean z) {
        zzg();
        zza();
        zzR(new zzjc(this, str, str2, zzO(false), z, zzcfVar));
    }

    @WorkerThread
    protected final void zzz(AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        zzg();
        zza();
        zzR(new zzju(this, atomicReference, null, str2, str3, zzO(false), z));
    }
}
