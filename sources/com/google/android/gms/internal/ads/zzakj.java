package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakj implements zzajy {
    private final zzakz zza;
    private String zzb;
    private zzadk zzc;
    private zzaki zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzakn zzg = new zzakn(32, 128);
    private final zzakn zzh = new zzakn(33, 128);
    private final zzakn zzi = new zzakn(34, 128);
    private final zzakn zzj = new zzakn(39, 128);
    private final zzakn zzk = new zzakn(40, 128);
    private long zzm = C.TIME_UNSET;
    private final zzfj zzn = new zzfj();

    public zzakj(zzakz zzakzVar) {
        this.zza = zzakzVar;
    }

    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzc(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0139  */
    @Override // com.google.android.gms.internal.ads.zzajy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.internal.ads.zzfj r32) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakj.zza(com.google.android.gms.internal.ads.zzfj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zzb = zzalkVar.zzb();
        zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 2);
        this.zzc = zzadkVarZzw;
        this.zzd = new zzaki(zzadkVarZzw);
        this.zza.zzb(zzachVar, zzalkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
        zzef.zzb(this.zzc);
        int i = zzfs.zza;
        if (z) {
            this.zzd.zza(this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzm = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzl = 0L;
        this.zzm = C.TIME_UNSET;
        zzgg.zzf(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        zzaki zzakiVar = this.zzd;
        if (zzakiVar != null) {
            zzakiVar.zzd();
        }
    }
}
