package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzir implements zzlb {
    private final zzmg zza;
    private final zziq zzb;

    @Nullable
    private zzlz zzc;

    @Nullable
    private zzlb zzd;
    private boolean zze = true;
    private boolean zzf;

    public zzir(zziq zziqVar, zzeg zzegVar) {
        this.zzb = zziqVar;
        this.zza = new zzmg(zzegVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final long zza() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzb(boolean r6) {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzlz r0 = r5.zzc
            if (r0 == 0) goto L66
            boolean r0 = r0.zzU()
            if (r0 != 0) goto L66
            com.google.android.gms.internal.ads.zzlz r0 = r5.zzc
            boolean r0 = r0.zzV()
            if (r0 != 0) goto L1d
            if (r6 != 0) goto L66
            com.google.android.gms.internal.ads.zzlz r6 = r5.zzc
            boolean r6 = r6.zzO()
            if (r6 == 0) goto L1d
            goto L66
        L1d:
            com.google.android.gms.internal.ads.zzlb r6 = r5.zzd
            java.util.Objects.requireNonNull(r6)
            long r0 = r6.zza()
            boolean r2 = r5.zze
            if (r2 == 0) goto L46
            com.google.android.gms.internal.ads.zzmg r2 = r5.zza
            long r2 = r2.zza()
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L3a
            com.google.android.gms.internal.ads.zzmg r6 = r5.zza
            r6.zze()
            goto L72
        L3a:
            r2 = 0
            r5.zze = r2
            boolean r2 = r5.zzf
            if (r2 == 0) goto L46
            com.google.android.gms.internal.ads.zzmg r2 = r5.zza
            r2.zzd()
        L46:
            com.google.android.gms.internal.ads.zzmg r2 = r5.zza
            r2.zzb(r0)
            com.google.android.gms.internal.ads.zzcj r6 = r6.zzc()
            com.google.android.gms.internal.ads.zzmg r0 = r5.zza
            com.google.android.gms.internal.ads.zzcj r0 = r0.zzc()
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L72
            com.google.android.gms.internal.ads.zzmg r0 = r5.zza
            r0.zzg(r6)
            com.google.android.gms.internal.ads.zziq r0 = r5.zzb
            r0.zza(r6)
            goto L72
        L66:
            r6 = 1
            r5.zze = r6
            boolean r6 = r5.zzf
            if (r6 == 0) goto L72
            com.google.android.gms.internal.ads.zzmg r6 = r5.zza
            r6.zzd()
        L72:
            boolean r6 = r5.zze
            if (r6 == 0) goto L7d
            com.google.android.gms.internal.ads.zzmg r6 = r5.zza
            long r0 = r6.zza()
            goto L86
        L7d:
            com.google.android.gms.internal.ads.zzlb r6 = r5.zzd
            java.util.Objects.requireNonNull(r6)
            long r0 = r6.zza()
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzir.zzb(boolean):long");
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final zzcj zzc() {
        zzlb zzlbVar = this.zzd;
        return zzlbVar != null ? zzlbVar.zzc() : this.zza.zzc();
    }

    public final void zzd(zzlz zzlzVar) {
        if (zzlzVar == this.zzc) {
            this.zzd = null;
            this.zzc = null;
            this.zze = true;
        }
    }

    public final void zze(zzlz zzlzVar) throws zzit {
        zzlb zzlbVar;
        zzlb zzlbVarZzk = zzlzVar.zzk();
        if (zzlbVarZzk == null || zzlbVarZzk == (zzlbVar = this.zzd)) {
            return;
        }
        if (zzlbVar != null) {
            throw zzit.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.zzd = zzlbVarZzk;
        this.zzc = zzlzVar;
        zzlbVarZzk.zzg(this.zza.zzc());
    }

    public final void zzf(long j) {
        this.zza.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void zzg(zzcj zzcjVar) {
        zzlb zzlbVar = this.zzd;
        if (zzlbVar != null) {
            zzlbVar.zzg(zzcjVar);
            zzcjVar = this.zzd.zzc();
        }
        this.zza.zzg(zzcjVar);
    }

    public final void zzh() {
        this.zzf = true;
        this.zza.zzd();
    }

    public final void zzi() {
        this.zzf = false;
        this.zza.zze();
    }
}
