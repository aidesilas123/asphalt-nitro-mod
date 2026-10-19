package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcfn extends zzcfh implements zzhs {
    private String zzd;
    private final zzcdv zze;
    private boolean zzf;
    private final zzcfm zzg;
    private final zzces zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private final Object zzk;
    private final String zzl;
    private final int zzm;
    private boolean zzn;

    public zzcfn(zzcdw zzcdwVar, zzcdv zzcdvVar) {
        super(zzcdwVar);
        this.zze = zzcdvVar;
        this.zzg = new zzcfm();
        this.zzh = new zzces();
        this.zzk = new Object();
        this.zzl = (String) zzftu.zzd(zzcdwVar != null ? zzcdwVar.zzbm() : null).zzb("");
        this.zzm = zzcdwVar != null ? zzcdwVar.zzf() : 0;
    }

    protected static final String zzm(String str) {
        return "cache:".concat(String.valueOf(zzcbg.zze(str)));
    }

    private final void zzv() {
        int iZza = (int) this.zzg.zza();
        int iZza2 = (int) this.zzh.zza(this.zzi);
        int iPosition = this.zzi.position();
        int iRound = Math.round(iZza2 * (iPosition / iZza));
        int iZzs = zzcdn.zzs();
        int iZzu = zzcdn.zzu();
        String str = this.zzd;
        zzn(str, zzm(str), iPosition, iZza, iRound, iZza2, iRound > 0, iZzs, iZzu);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zza(zzgq zzgqVar, zzgv zzgvVar, boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzb(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzc(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzd(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
        if (zzgqVar instanceof zzhd) {
            this.zzg.zzb((zzhd) zzgqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzf() {
        this.zzf = true;
    }

    public final String zzi() {
        return this.zzd;
    }

    public final ByteBuffer zzk() {
        synchronized (this.zzk) {
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null && !this.zzj) {
                byteBuffer.flip();
                this.zzj = true;
            }
            this.zzf = true;
        }
        return this.zzi;
    }

    public final boolean zzl() {
        return this.zzn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
    
        r21.zzn = true;
        zzj(r22, r4, (int) r21.zzh.zza(r21.zzi));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d8, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:? -> B:45:0x0142). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzcfh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzt(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 399
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfn.zzt(java.lang.String):boolean");
    }
}
