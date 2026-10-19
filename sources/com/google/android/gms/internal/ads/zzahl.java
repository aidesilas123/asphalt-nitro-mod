package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzahl implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzahj
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzahl.zza;
            return new zzace[]{new zzahl(0)};
        }
    };
    private static final zzafy zzb = new zzafy() { // from class: com.google.android.gms.internal.ads.zzahk
    };
    private final zzfj zzc;
    private final zzacy zzd;
    private final zzacu zze;
    private final zzacw zzf;
    private final zzadk zzg;
    private zzach zzh;
    private zzadk zzi;
    private zzadk zzj;
    private int zzk;

    @Nullable
    private zzcb zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzahn zzq;
    private boolean zzr;

    public zzahl() {
        this(0);
    }

    public zzahl(int i) {
        this.zzc = new zzfj(10);
        this.zzd = new zzacy();
        this.zze = new zzacu();
        this.zzm = C.TIME_UNSET;
        this.zzf = new zzacw();
        zzacd zzacdVar = new zzacd();
        this.zzg = zzacdVar;
        this.zzj = zzacdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzf(com.google.android.gms.internal.ads.zzacf r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 625
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahl.zzf(com.google.android.gms.internal.ads.zzacf):int");
    }

    private final long zzg(long j) {
        return this.zzm + ((j * 1000000) / ((long) this.zzd.zzd));
    }

    private final zzahn zzh(zzacf zzacfVar, boolean z) throws IOException {
        ((zzabu) zzacfVar).zzm(this.zzc.zzI(), 0, 4, false);
        this.zzc.zzG(0);
        this.zzd.zza(this.zzc.zzf());
        return new zzahg(zzacfVar.zzd(), zzacfVar.zzf(), this.zzd, false);
    }

    private static boolean zzi(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzj(zzacf zzacfVar) throws IOException {
        zzahn zzahnVar = this.zzq;
        if (zzahnVar != null) {
            long jZzc = zzahnVar.zzc();
            if (jZzc != -1 && zzacfVar.zze() > jZzc - 4) {
                return true;
            }
        }
        try {
            return !zzacfVar.zzm(this.zzc.zzI(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzk(zzacf zzacfVar, boolean z) throws Throwable {
        int i;
        int iZze;
        int iZzb;
        zzacfVar.zzj();
        if (zzacfVar.zzf() == 0) {
            zzcb zzcbVarZza = this.zzf.zza(zzacfVar, null);
            this.zzl = zzcbVarZza;
            if (zzcbVarZza != null) {
                this.zze.zzb(zzcbVarZza);
            }
            iZze = (int) zzacfVar.zze();
            if (!z) {
                ((zzabu) zzacfVar).zzo(iZze, false);
            }
            i = 0;
        } else {
            i = 0;
            iZze = 0;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (!zzj(zzacfVar)) {
                this.zzc.zzG(0);
                int iZzf = this.zzc.zzf();
                if ((i == 0 || zzi(iZzf, i)) && (iZzb = zzacz.zzb(iZzf)) != -1) {
                    i2++;
                    if (i2 != 1) {
                        if (i2 == 4) {
                            break;
                        }
                    } else {
                        this.zzd.zza(iZzf);
                        i = iZzf;
                    }
                    ((zzabu) zzacfVar).zzl(iZzb - 4, false);
                } else {
                    int i4 = i3 + 1;
                    if (i3 == (true != z ? 131072 : 32768)) {
                        if (z) {
                            return false;
                        }
                        throw zzcf.zza("Searched too many bytes.", null);
                    }
                    if (z) {
                        zzacfVar.zzj();
                        ((zzabu) zzacfVar).zzl(iZze + i4, false);
                    } else {
                        ((zzabu) zzacfVar).zzo(1, false);
                    }
                    i3 = i4;
                    i = 0;
                    i2 = 0;
                }
            } else if (i2 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            ((zzabu) zzacfVar).zzo(iZze + i3, false);
        } else {
            zzacfVar.zzj();
        }
        this.zzk = i;
        return true;
    }

    public final void zza() {
        this.zzr = true;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final int zzb(zzacf zzacfVar, zzadb zzadbVar) throws Throwable {
        zzef.zzb(this.zzi);
        int i = zzfs.zza;
        int iZzf = zzf(zzacfVar);
        if (iZzf == -1 && (this.zzq instanceof zzahh)) {
            if (this.zzq.zza() != zzg(this.zzn)) {
                throw null;
            }
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzh = zzachVar;
        zzadk zzadkVarZzw = zzachVar.zzw(0, 1);
        this.zzi = zzadkVarZzw;
        this.zzj = zzadkVarZzw;
        this.zzh.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        this.zzk = 0;
        this.zzm = C.TIME_UNSET;
        this.zzn = 0L;
        this.zzp = 0;
        zzahn zzahnVar = this.zzq;
        if (zzahnVar instanceof zzahh) {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        return zzk(zzacfVar, true);
    }
}
