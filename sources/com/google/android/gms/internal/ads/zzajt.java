package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzajt implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzajs
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzajt.zza;
            return new zzace[]{new zzajt(0)};
        }
    };
    private final zzaju zzb;
    private final zzfj zzc;
    private final zzfj zzd;
    private final zzfi zze;
    private zzach zzf;
    private long zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;

    public zzajt() {
        this(0);
    }

    public zzajt(int i) {
        this.zzb = new zzaju(true, null);
        this.zzc = new zzfj(2048);
        this.zzh = -1L;
        zzfj zzfjVar = new zzfj(10);
        this.zzd = zzfjVar;
        byte[] bArrZzI = zzfjVar.zzI();
        this.zze = new zzfi(bArrZzI, bArrZzI.length);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final int zzb(zzacf zzacfVar, zzadb zzadbVar) throws IOException {
        zzef.zzb(this.zzf);
        int iZza = zzacfVar.zza(this.zzc.zzI(), 0, 2048);
        if (!this.zzj) {
            this.zzf.zzO(new zzadd(C.TIME_UNSET, 0L));
            this.zzj = true;
        }
        if (iZza == -1) {
            return -1;
        }
        this.zzc.zzG(0);
        this.zzc.zzF(iZza);
        if (!this.zzi) {
            this.zzb.zzd(this.zzg, 4);
            this.zzi = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzf = zzachVar;
        this.zzb.zzb(zzachVar, new zzalk(Integer.MIN_VALUE, 0, 1));
        zzachVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        this.zzi = false;
        this.zzb.zze();
        this.zzg = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        int i = 0;
        while (true) {
            zzabu zzabuVar = (zzabu) zzacfVar;
            zzabuVar.zzm(this.zzd.zzI(), 0, 10, false);
            this.zzd.zzG(0);
            if (this.zzd.zzn() != 4801587) {
                break;
            }
            this.zzd.zzH(3);
            int iZzk = this.zzd.zzk();
            i += iZzk + 10;
            zzabuVar.zzl(iZzk, false);
        }
        zzacfVar.zzj();
        zzabu zzabuVar2 = (zzabu) zzacfVar;
        zzabuVar2.zzl(i, false);
        if (this.zzh == -1) {
            this.zzh = i;
        }
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        do {
            zzabuVar2.zzm(this.zzd.zzI(), 0, 2, false);
            this.zzd.zzG(0);
            if (zzaju.zzf(this.zzd.zzp())) {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                zzabuVar2.zzm(this.zzd.zzI(), 0, 4, false);
                this.zze.zzj(14);
                int iZzd = this.zze.zzd(13);
                if (iZzd <= 6) {
                    i2++;
                    zzacfVar.zzj();
                    zzabuVar2.zzl(i2, false);
                } else {
                    zzabuVar2.zzl(iZzd - 6, false);
                    i4 += iZzd;
                }
            } else {
                i2++;
                zzacfVar.zzj();
                zzabuVar2.zzl(i2, false);
            }
            i3 = 0;
            i4 = 0;
        } while (i2 - i < 8192);
        return false;
    }
}
