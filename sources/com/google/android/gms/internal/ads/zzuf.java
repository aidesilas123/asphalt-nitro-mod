package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzuf extends zzwn {
    private final boolean zzb;
    private final zzcz zzc;
    private final zzcx zzd;
    private zzud zze;

    @Nullable
    private zzuc zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    public zzuf(zzum zzumVar, boolean z) {
        boolean z2;
        super(zzumVar);
        if (z) {
            zzumVar.zzv();
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzb = z2;
        this.zzc = new zzcz();
        this.zzd = new zzcx();
        zzumVar.zzM();
        this.zze = zzud.zzq(zzumVar.zzJ());
    }

    private final Object zzK(Object obj) {
        return (this.zze.zzf == null || !obj.equals(zzud.zzd)) ? obj : this.zze.zzf;
    }

    private final void zzL(long j) {
        zzuc zzucVar = this.zzf;
        int iZza = this.zze.zza(zzucVar.zza.zza);
        if (iZza == -1) {
            return;
        }
        zzud zzudVar = this.zze;
        zzcx zzcxVar = this.zzd;
        zzudVar.zzd(iZza, zzcxVar, false);
        long j2 = zzcxVar.zze;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        zzucVar.zzs(j);
    }

    public final zzda zzC() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    @Nullable
    protected final zzuk zzD(zzuk zzukVar) {
        Object obj = this.zze.zzf;
        Object obj2 = zzukVar.zza;
        if (obj != null && this.zze.zzf.equals(obj2)) {
            obj2 = zzud.zzd;
        }
        return zzukVar.zza(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    @Override // com.google.android.gms.internal.ads.zzwn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zzE(com.google.android.gms.internal.ads.zzda r15) {
        /*
            r14 = this;
            boolean r0 = r14.zzh
            r1 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzud r0 = r14.zze
            com.google.android.gms.internal.ads.zzud r15 = r0.zzp(r15)
            r14.zze = r15
            com.google.android.gms.internal.ads.zzuc r15 = r14.zzf
            if (r15 == 0) goto L9b
            long r2 = r15.zzn()
            r14.zzL(r2)
            goto L9b
        L1a:
            boolean r0 = r15.zzo()
            if (r0 == 0) goto L36
            boolean r0 = r14.zzi
            if (r0 == 0) goto L2b
            com.google.android.gms.internal.ads.zzud r0 = r14.zze
            com.google.android.gms.internal.ads.zzud r15 = r0.zzp(r15)
            goto L33
        L2b:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzcz.zza
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzud.zzd
            com.google.android.gms.internal.ads.zzud r15 = com.google.android.gms.internal.ads.zzud.zzr(r15, r0, r2)
        L33:
            r14.zze = r15
            goto L9b
        L36:
            com.google.android.gms.internal.ads.zzcz r0 = r14.zzc
            r2 = 0
            r3 = 0
            r15.zze(r2, r0, r3)
            com.google.android.gms.internal.ads.zzcz r0 = r14.zzc
            java.lang.Object r0 = r0.zzc
            com.google.android.gms.internal.ads.zzuc r5 = r14.zzf
            if (r5 == 0) goto L62
            long r6 = r5.zzq()
            com.google.android.gms.internal.ads.zzud r8 = r14.zze
            com.google.android.gms.internal.ads.zzcx r9 = r14.zzd
            com.google.android.gms.internal.ads.zzuk r5 = r5.zza
            java.lang.Object r5 = r5.zza
            r8.zzn(r5, r9)
            com.google.android.gms.internal.ads.zzud r5 = r14.zze
            com.google.android.gms.internal.ads.zzcz r8 = r14.zzc
            r5.zze(r2, r8, r3)
            int r2 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r2 == 0) goto L62
            r12 = r6
            goto L63
        L62:
            r12 = r3
        L63:
            com.google.android.gms.internal.ads.zzcz r9 = r14.zzc
            com.google.android.gms.internal.ads.zzcx r10 = r14.zzd
            r11 = 0
            r8 = r15
            android.util.Pair r2 = r8.zzl(r9, r10, r11, r12)
            java.lang.Object r3 = r2.first
            java.lang.Object r2 = r2.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r4 = r2.longValue()
            boolean r2 = r14.zzi
            if (r2 == 0) goto L82
            com.google.android.gms.internal.ads.zzud r0 = r14.zze
            com.google.android.gms.internal.ads.zzud r15 = r0.zzp(r15)
            goto L86
        L82:
            com.google.android.gms.internal.ads.zzud r15 = com.google.android.gms.internal.ads.zzud.zzr(r15, r0, r3)
        L86:
            r14.zze = r15
            com.google.android.gms.internal.ads.zzuc r15 = r14.zzf
            if (r15 == 0) goto L9b
            r14.zzL(r4)
            com.google.android.gms.internal.ads.zzuk r15 = r15.zza
            java.lang.Object r0 = r15.zza
            java.lang.Object r0 = r14.zzK(r0)
            com.google.android.gms.internal.ads.zzuk r1 = r15.zza(r0)
        L9b:
            r15 = 1
            r14.zzi = r15
            r14.zzh = r15
            com.google.android.gms.internal.ads.zzud r15 = r14.zze
            r14.zzo(r15)
            if (r1 == 0) goto Laf
            com.google.android.gms.internal.ads.zzuc r15 = r14.zzf
            java.util.Objects.requireNonNull(r15)
            r15.zzr(r1)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuf.zzE(com.google.android.gms.internal.ads.zzda):void");
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    public final void zzF() {
        if (this.zzb) {
            return;
        }
        this.zzg = true;
        zzB(null, ((zzwn) this).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzwn, com.google.android.gms.internal.ads.zzum
    public final void zzG(zzui zzuiVar) {
        ((zzuc) zzuiVar).zzt();
        if (zzuiVar == this.zzf) {
            this.zzf = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwn, com.google.android.gms.internal.ads.zzum
    /* JADX INFO: renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public final zzuc zzI(zzuk zzukVar, zzyn zzynVar, long j) {
        zzuc zzucVar = new zzuc(zzukVar, zzynVar, j);
        zzucVar.zzu(((zzwn) this).zza);
        if (this.zzh) {
            zzucVar.zzr(zzukVar.zza(zzK(zzukVar.zza)));
        } else {
            this.zzf = zzucVar;
            if (!this.zzg) {
                this.zzg = true;
                zzB(null, ((zzwn) this).zza);
            }
        }
        return zzucVar;
    }

    @Override // com.google.android.gms.internal.ads.zztt, com.google.android.gms.internal.ads.zztl
    public final void zzq() {
        this.zzh = false;
        this.zzg = false;
        super.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zztl, com.google.android.gms.internal.ads.zzum
    public final void zzt(zzbs zzbsVar) {
        if (this.zzi) {
            this.zze = this.zze.zzp(new zzwj(this.zze.zzc, zzbsVar));
        } else {
            this.zze = zzud.zzq(zzbsVar);
        }
        ((zzwn) this).zza.zzt(zzbsVar);
    }

    @Override // com.google.android.gms.internal.ads.zztt, com.google.android.gms.internal.ads.zzum
    public final void zzz() {
    }
}
