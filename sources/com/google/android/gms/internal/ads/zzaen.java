package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaen implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzaem
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzaen.zza;
            return new zzace[]{new zzaen()};
        }
    };
    private zzach zzg;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private boolean zzo;
    private zzael zzp;
    private zzaer zzq;
    private final zzfj zzb = new zzfj(4);
    private final zzfj zzc = new zzfj(9);
    private final zzfj zzd = new zzfj(11);
    private final zzfj zze = new zzfj();
    private final zzaeo zzf = new zzaeo();
    private int zzh = 1;

    private final zzfj zza(zzacf zzacfVar) throws IOException {
        if (this.zzm > this.zze.zzb()) {
            zzfj zzfjVar = this.zze;
            int iZzb = zzfjVar.zzb();
            zzfjVar.zzE(new byte[Math.max(iZzb + iZzb, this.zzm)], 0);
        } else {
            this.zze.zzG(0);
        }
        this.zze.zzF(this.zzm);
        ((zzabu) zzacfVar).zzn(this.zze.zzI(), 0, this.zzm, false);
        return this.zze;
    }

    private final void zzf() {
        if (this.zzo) {
            return;
        }
        this.zzg.zzO(new zzadd(C.TIME_UNSET, 0L));
        this.zzo = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r17, com.google.android.gms.internal.ads.zzadb r18) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaen.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzg = zzachVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzh = 1;
            this.zzi = false;
        } else {
            this.zzh = 3;
        }
        this.zzk = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        zzabu zzabuVar = (zzabu) zzacfVar;
        zzabuVar.zzm(this.zzb.zzI(), 0, 3, false);
        this.zzb.zzG(0);
        if (this.zzb.zzn() != 4607062) {
            return false;
        }
        zzabuVar.zzm(this.zzb.zzI(), 0, 2, false);
        this.zzb.zzG(0);
        if ((this.zzb.zzp() & 250) != 0) {
            return false;
        }
        zzabuVar.zzm(this.zzb.zzI(), 0, 4, false);
        this.zzb.zzG(0);
        int iZzf = this.zzb.zzf();
        zzacfVar.zzj();
        zzabu zzabuVar2 = (zzabu) zzacfVar;
        zzabuVar2.zzl(iZzf, false);
        zzabuVar2.zzm(this.zzb.zzI(), 0, 4, false);
        this.zzb.zzG(0);
        return this.zzb.zzf() == 0;
    }
}
