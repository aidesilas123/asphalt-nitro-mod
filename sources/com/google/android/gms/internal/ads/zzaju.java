package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaju implements zzajy {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final zzfi zzc = new zzfi(new byte[7], 7);
    private final zzfj zzd = new zzfj(Arrays.copyOf(zza, 10));

    @Nullable
    private final String zze;
    private String zzf;
    private zzadk zzg;
    private zzadk zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private boolean zzq;
    private long zzr;
    private int zzs;
    private long zzt;
    private zzadk zzu;
    private long zzv;

    public zzaju(boolean z, @Nullable String str) {
        zzh();
        this.zzn = -1;
        this.zzo = -1;
        this.zzr = C.TIME_UNSET;
        this.zzt = C.TIME_UNSET;
        this.zzb = z;
        this.zze = str;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzm = false;
        zzh();
    }

    private final void zzh() {
        this.zzi = 0;
        this.zzj = 0;
        this.zzk = 256;
    }

    private final void zzi() {
        this.zzi = 3;
        this.zzj = 0;
    }

    private final void zzj(zzadk zzadkVar, long j, int i, int i2) {
        this.zzi = 4;
        this.zzj = i;
        this.zzu = zzadkVar;
        this.zzv = j;
        this.zzs = i2;
    }

    private final boolean zzk(zzfj zzfjVar, byte[] bArr, int i) {
        int iMin = Math.min(zzfjVar.zza(), i - this.zzj);
        zzfjVar.zzC(bArr, this.zzj, iMin);
        int i2 = this.zzj + iMin;
        this.zzj = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzfj zzfjVar, byte[] bArr, int i) {
        if (zzfjVar.zza() < i) {
            return false;
        }
        zzfjVar.zzC(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0263, code lost:
    
        r16.zzi = 1;
        r16.zzj = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0269, code lost:
    
        zzi();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x026c, code lost:
    
        r17.zzG(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0250, code lost:
    
        r16.zzp = (r11 & 8) >> 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0258, code lost:
    
        if (1 == ((r11 & 1) ^ 1)) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025a, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x025c, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x025d, code lost:
    
        r16.zzl = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0261, code lost:
    
        if (r16.zzm != false) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0250 A[EDGE_INSN: B:144:0x0250->B:94:0x0250 BREAK  A[LOOP:1: B:48:0x019e->B:121:0x02b9], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0208  */
    @Override // com.google.android.gms.internal.ads.zzajy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.internal.ads.zzfj r17) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 706
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaju.zza(com.google.android.gms.internal.ads.zzfj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zzf = zzalkVar.zzb();
        zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 1);
        this.zzg = zzadkVarZzw;
        this.zzu = zzadkVarZzw;
        if (!this.zzb) {
            this.zzh = new zzacd();
            return;
        }
        zzalkVar.zzc();
        zzadk zzadkVarZzw2 = zzachVar.zzw(zzalkVar.zza(), 5);
        this.zzh = zzadkVarZzw2;
        zzak zzakVar = new zzak();
        zzakVar.zzJ(zzalkVar.zzb());
        zzakVar.zzU(MimeTypes.APPLICATION_ID3);
        zzadkVarZzw2.zzl(zzakVar.zzac());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzt = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzt = C.TIME_UNSET;
        zzg();
    }
}
