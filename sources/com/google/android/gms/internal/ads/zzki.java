package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzki extends zzm implements zzjd {
    public static final /* synthetic */ int zzd = 0;
    private final zzmi zzA;
    private final long zzB;
    private int zzC;
    private int zzD;
    private boolean zzE;
    private int zzF;
    private zzmd zzG;
    private zzcn zzH;
    private zzby zzI;
    private zzby zzJ;

    @Nullable
    private zzam zzK;

    @Nullable
    private zzam zzL;

    @Nullable
    private AudioTrack zzM;

    @Nullable
    private Object zzN;

    @Nullable
    private Surface zzO;
    private int zzP;
    private zzfk zzQ;

    @Nullable
    private zzil zzR;

    @Nullable
    private zzil zzS;
    private int zzT;
    private zzk zzU;
    private float zzV;
    private boolean zzW;
    private zzee zzX;
    private boolean zzY;
    private boolean zzZ;
    private zzz zzaa;
    private zzdu zzab;
    private zzby zzac;
    private zzls zzad;
    private int zzae;
    private long zzaf;
    private final zzje zzag;
    private zzwd zzah;
    final zzyf zzb;
    final zzcn zzc;
    private final zzei zze;
    private final Context zzf;
    private final zzcr zzg;
    private final zzlz[] zzh;
    private final zzye zzi;
    private final zzeq zzj;
    private final zzkt zzk;
    private final zzew zzl;
    private final CopyOnWriteArraySet zzm;
    private final zzcx zzn;
    private final List zzo;
    private final boolean zzp;
    private final zzuj zzq;
    private final zzmj zzr;
    private final Looper zzs;
    private final zzym zzt;
    private final zzeg zzu;
    private final zzke zzv;
    private final zzkg zzw;
    private final zzif zzx;
    private final zzij zzy;
    private final zzmh zzz;

    static {
        zzbt.zzb("media3.exoplayer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.gms.internal.ads.zzmj, com.google.android.gms.internal.ads.zzyl, java.lang.Object] */
    @SuppressLint({"HandlerLeak"})
    public zzki(zzjc zzjcVar, @Nullable zzcr zzcrVar) {
        Object obj;
        zzei zzeiVar = new zzei(zzeg.zza);
        this.zze = zzeiVar;
        try {
            zzez.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.2.0-beta01] [" + zzfs.zze + o2.i.f6491e);
            Context applicationContext = zzjcVar.zza.getApplicationContext();
            this.zzf = applicationContext;
            ?? Apply = zzjcVar.zzh.apply(zzjcVar.zzb);
            this.zzr = Apply;
            this.zzU = zzjcVar.zzj;
            this.zzP = zzjcVar.zzk;
            this.zzW = false;
            this.zzB = zzjcVar.zzo;
            zzke zzkeVar = new zzke(this, null);
            this.zzv = zzkeVar;
            zzkg zzkgVar = new zzkg(null);
            this.zzw = zzkgVar;
            Handler handler = new Handler(zzjcVar.zzi);
            zzlz[] zzlzVarArrZza = ((zziv) zzjcVar.zzc).zza.zza(handler, zzkeVar, zzkeVar, zzkeVar, zzkeVar);
            this.zzh = zzlzVarArrZza;
            int length = zzlzVarArrZza.length;
            zzye zzyeVar = (zzye) zzjcVar.zze.zza();
            this.zzi = zzyeVar;
            this.zzq = zzjc.zza(((zziw) zzjcVar.zzd).zza);
            zzyq zzyqVarZzg = zzyq.zzg(((zziz) zzjcVar.zzg).zza);
            this.zzt = zzyqVarZzg;
            this.zzp = zzjcVar.zzl;
            this.zzG = zzjcVar.zzm;
            Looper looper = zzjcVar.zzi;
            this.zzs = looper;
            zzeg zzegVar = zzjcVar.zzb;
            this.zzu = zzegVar;
            this.zzg = zzcrVar;
            zzew zzewVar = new zzew(looper, zzegVar, new zzeu() { // from class: com.google.android.gms.internal.ads.zzjy
                @Override // com.google.android.gms.internal.ads.zzeu
                public final void zza(Object obj2, zzah zzahVar) {
                }
            });
            this.zzl = zzewVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzm = copyOnWriteArraySet;
            this.zzo = new ArrayList();
            this.zzah = new zzwd(0);
            int length2 = zzlzVarArrZza.length;
            zzyf zzyfVar = new zzyf(new zzmc[2], new zzxy[2], zzdn.zza, null);
            this.zzb = zzyfVar;
            this.zzn = new zzcx();
            zzcl zzclVar = new zzcl();
            zzclVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzyeVar.zzm();
            zzclVar.zzd(29, true);
            zzclVar.zzd(23, false);
            zzclVar.zzd(25, false);
            zzclVar.zzd(33, false);
            zzclVar.zzd(26, false);
            zzclVar.zzd(34, false);
            zzcn zzcnVarZze = zzclVar.zze();
            this.zzc = zzcnVarZze;
            zzcl zzclVar2 = new zzcl();
            zzclVar2.zzb(zzcnVarZze);
            zzclVar2.zza(4);
            zzclVar2.zza(10);
            this.zzH = zzclVar2.zze();
            this.zzj = zzegVar.zzb(looper, null);
            zzje zzjeVar = new zzje(this);
            this.zzag = zzjeVar;
            this.zzad = zzls.zzg(zzyfVar);
            Apply.zzR(zzcrVar, looper);
            int i = zzfs.zza;
            this.zzk = new zzkt(zzlzVarArrZza, zzyeVar, zzyfVar, (zzkw) zzjcVar.zzf.zza(), zzyqVarZzg, 0, false, Apply, this.zzG, zzjcVar.zzr, zzjcVar.zzn, false, looper, zzegVar, zzjeVar, i < 31 ? new zzov() : zzjz.zza(applicationContext, this, zzjcVar.zzp), null);
            this.zzV = 1.0f;
            zzby zzbyVar = zzby.zza;
            this.zzI = zzbyVar;
            this.zzJ = zzbyVar;
            this.zzac = zzbyVar;
            this.zzae = -1;
            if (i >= 21) {
                AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
                this.zzT = audioManager == null ? -1 : audioManager.generateAudioSessionId();
                obj = null;
            } else {
                AudioTrack audioTrack = this.zzM;
                if (audioTrack == null || audioTrack.getAudioSessionId() == 0) {
                    obj = null;
                } else {
                    this.zzM.release();
                    obj = null;
                    this.zzM = null;
                }
                if (this.zzM == null) {
                    this.zzM = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.zzT = this.zzM.getAudioSessionId();
            }
            this.zzX = zzee.zza;
            this.zzY = true;
            Objects.requireNonNull(Apply);
            zzewVar.zzb(Apply);
            zzyqVarZzg.zze(new Handler(looper), Apply);
            copyOnWriteArraySet.add(zzkeVar);
            this.zzx = new zzif(zzjcVar.zza, handler, zzkeVar);
            this.zzy = new zzij(zzjcVar.zza, handler, zzkeVar);
            zzfs.zzF(obj, obj);
            this.zzz = new zzmh(zzjcVar.zza);
            this.zzA = new zzmi(zzjcVar.zza);
            this.zzaa = new zzx(0).zza();
            this.zzab = zzdu.zza;
            this.zzQ = zzfk.zza;
            zzyeVar.zzj(this.zzU);
            zzag(1, 10, Integer.valueOf(this.zzT));
            zzag(2, 10, Integer.valueOf(this.zzT));
            zzag(1, 3, this.zzU);
            zzag(2, 4, Integer.valueOf(this.zzP));
            zzag(2, 5, 0);
            zzag(1, 9, Boolean.valueOf(this.zzW));
            zzag(2, 7, zzkgVar);
            zzag(6, 8, zzkgVar);
            zzeiVar.zze();
        } catch (Throwable th) {
            this.zze.zze();
            throw th;
        }
    }

    static /* bridge */ /* synthetic */ void zzP(zzki zzkiVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzkiVar.zzai(surface);
        zzkiVar.zzO = surface;
    }

    private final int zzW(zzls zzlsVar) {
        return zzlsVar.zza.zzo() ? this.zzae : zzlsVar.zza.zzn(zzlsVar.zzb.zza, this.zzn).zzd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzX(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    private final long zzY(zzls zzlsVar) {
        if (!zzlsVar.zzb.zzb()) {
            return zzfs.zzt(zzZ(zzlsVar));
        }
        zzlsVar.zza.zzn(zzlsVar.zzb.zza, this.zzn);
        long j = zzlsVar.zzc;
        if (j == C.TIME_UNSET) {
            long j2 = zzlsVar.zza.zze(zzW(zzlsVar), this.zza, 0L).zzn;
            return zzfs.zzt(0L);
        }
        int i = zzfs.zza;
        return zzfs.zzt(j) + zzfs.zzt(0L);
    }

    private final long zzZ(zzls zzlsVar) {
        if (zzlsVar.zza.zzo()) {
            return zzfs.zzq(this.zzaf);
        }
        long j = zzlsVar.zzr;
        if (zzlsVar.zzb.zzb()) {
            return j;
        }
        zzab(zzlsVar.zza, zzlsVar.zzb, j);
        return j;
    }

    private static long zzaa(zzls zzlsVar) {
        zzcz zzczVar = new zzcz();
        zzcx zzcxVar = new zzcx();
        zzlsVar.zza.zzn(zzlsVar.zzb.zza, zzcxVar);
        long j = zzlsVar.zzc;
        if (j != C.TIME_UNSET) {
            return j;
        }
        long j2 = zzlsVar.zza.zze(zzcxVar.zzd, zzczVar, 0L).zzn;
        return 0L;
    }

    private final long zzab(zzda zzdaVar, zzuk zzukVar, long j) {
        zzdaVar.zzn(zzukVar.zza, this.zzn);
        return j;
    }

    @Nullable
    private final Pair zzac(zzda zzdaVar, int i, long j) {
        if (zzdaVar.zzo()) {
            this.zzae = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.zzaf = j;
            return null;
        }
        if (i == -1 || i >= zzdaVar.zzc()) {
            i = zzdaVar.zzg(false);
            long j2 = zzdaVar.zze(i, this.zza, 0L).zzn;
            j = zzfs.zzt(0L);
        }
        return zzdaVar.zzl(this.zza, this.zzn, i, zzfs.zzq(j));
    }

    private final zzls zzad(zzls zzlsVar, zzda zzdaVar, @Nullable Pair pair) {
        zzef.zzd(zzdaVar.zzo() || pair != null);
        zzda zzdaVar2 = zzlsVar.zza;
        long jZzY = zzY(zzlsVar);
        zzls zzlsVarZzf = zzlsVar.zzf(zzdaVar);
        if (zzdaVar.zzo()) {
            zzuk zzukVarZzh = zzls.zzh();
            long jZzq = zzfs.zzq(this.zzaf);
            zzls zzlsVarZza = zzlsVarZzf.zzb(zzukVarZzh, jZzq, jZzq, jZzq, 0L, zzwl.zza, this.zzb, zzfwu.zzl()).zza(zzukVarZzh);
            zzlsVarZza.zzp = zzlsVarZza.zzr;
            return zzlsVarZza;
        }
        Object obj = zzlsVarZzf.zzb.zza;
        int i = zzfs.zza;
        boolean z = !obj.equals(pair.first);
        zzuk zzukVar = z ? new zzuk(pair.first, -1L) : zzlsVarZzf.zzb;
        long jLongValue = ((Long) pair.second).longValue();
        long jZzq2 = zzfs.zzq(jZzY);
        if (!zzdaVar2.zzo()) {
            zzdaVar2.zzn(obj, this.zzn);
        }
        if (z || jLongValue < jZzq2) {
            zzef.zzf(!zzukVar.zzb());
            zzls zzlsVarZza2 = zzlsVarZzf.zzb(zzukVar, jLongValue, jLongValue, jLongValue, 0L, z ? zzwl.zza : zzlsVarZzf.zzh, z ? this.zzb : zzlsVarZzf.zzi, z ? zzfwu.zzl() : zzlsVarZzf.zzj).zza(zzukVar);
            zzlsVarZza2.zzp = jLongValue;
            return zzlsVarZza2;
        }
        if (jLongValue != jZzq2) {
            zzef.zzf(!zzukVar.zzb());
            long jMax = Math.max(0L, zzlsVarZzf.zzq - (jLongValue - jZzq2));
            long j = zzlsVarZzf.zzp;
            if (zzlsVarZzf.zzk.equals(zzlsVarZzf.zzb)) {
                j = jLongValue + jMax;
            }
            zzls zzlsVarZzb = zzlsVarZzf.zzb(zzukVar, jLongValue, jLongValue, jLongValue, jMax, zzlsVarZzf.zzh, zzlsVarZzf.zzi, zzlsVarZzf.zzj);
            zzlsVarZzb.zzp = j;
            return zzlsVarZzb;
        }
        int iZza = zzdaVar.zza(zzlsVarZzf.zzk.zza);
        if (iZza != -1 && zzdaVar.zzd(iZza, this.zzn, false).zzd == zzdaVar.zzn(zzukVar.zza, this.zzn).zzd) {
            return zzlsVarZzf;
        }
        zzdaVar.zzn(zzukVar.zza, this.zzn);
        long jZzh = zzukVar.zzb() ? this.zzn.zzh(zzukVar.zzb, zzukVar.zzc) : this.zzn.zze;
        zzls zzlsVarZza3 = zzlsVarZzf.zzb(zzukVar, zzlsVarZzf.zzr, zzlsVarZzf.zzr, zzlsVarZzf.zzd, jZzh - zzlsVarZzf.zzr, zzlsVarZzf.zzh, zzlsVarZzf.zzi, zzlsVarZzf.zzj).zza(zzukVar);
        zzlsVarZza3.zzp = jZzh;
        return zzlsVarZza3;
    }

    private final zzlv zzae(zzlu zzluVar) {
        int iZzW = zzW(this.zzad);
        zzda zzdaVar = this.zzad.zza;
        int i = iZzW == -1 ? 0 : iZzW;
        zzeg zzegVar = this.zzu;
        zzkt zzktVar = this.zzk;
        return new zzlv(zzktVar, zzluVar, zzdaVar, i, zzegVar, zzktVar.zzb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaf(final int i, final int i2) {
        if (i == this.zzQ.zzb() && i2 == this.zzQ.zza()) {
            return;
        }
        this.zzQ = new zzfk(i, i2);
        zzew zzewVar = this.zzl;
        zzewVar.zzd(24, new zzet() { // from class: com.google.android.gms.internal.ads.zzjv
            @Override // com.google.android.gms.internal.ads.zzet
            public final void zza(Object obj) {
                int i3 = zzki.zzd;
                ((zzco) obj).zzo(i, i2);
            }
        });
        zzewVar.zzc();
        zzag(2, 14, new zzfk(i, i2));
    }

    private final void zzag(int i, int i2, @Nullable Object obj) {
        zzlz[] zzlzVarArr = this.zzh;
        int length = zzlzVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzlz zzlzVar = zzlzVarArr[i3];
            if (zzlzVar.zzb() == i) {
                zzlv zzlvVarZzae = zzae(zzlzVar);
                zzlvVarZzae.zzf(i2);
                zzlvVarZzae.zze(obj);
                zzlvVarZzae.zzd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzah() {
        zzag(1, 2, Float.valueOf(this.zzV * this.zzy.zza()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzai(@Nullable Object obj) {
        ArrayList arrayList = new ArrayList();
        zzlz[] zzlzVarArr = this.zzh;
        int length = zzlzVarArr.length;
        boolean z = false;
        for (int i = 0; i < 2; i++) {
            zzlz zzlzVar = zzlzVarArr[i];
            if (zzlzVar.zzb() == 2) {
                zzlv zzlvVarZzae = zzae(zzlzVar);
                zzlvVarZzae.zzf(1);
                zzlvVarZzae.zze(obj);
                zzlvVarZzae.zzd();
                arrayList.add(zzlvVarZzae);
            }
        }
        Object obj2 = this.zzN;
        if (obj2 != null && obj2 != obj) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((zzlv) it.next()).zzi(this.zzB);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Object obj3 = this.zzN;
            Surface surface = this.zzO;
            if (obj3 == surface) {
                surface.release();
                this.zzO = null;
            }
        }
        this.zzN = obj;
        if (z) {
            zzaj(zzit.zzd(new zzku(3), 1003));
        }
    }

    private final void zzaj(@Nullable zzit zzitVar) {
        zzls zzlsVar = this.zzad;
        zzls zzlsVarZza = zzlsVar.zza(zzlsVar.zzb);
        zzlsVarZza.zzp = zzlsVarZza.zzr;
        zzlsVarZza.zzq = 0L;
        zzls zzlsVarZze = zzlsVarZza.zze(1);
        if (zzitVar != null) {
            zzlsVarZze = zzlsVarZze.zzd(zzitVar);
        }
        this.zzC++;
        this.zzk.zzn();
        zzal(zzlsVarZze, 0, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzak(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        zzls zzlsVar = this.zzad;
        if (zzlsVar.zzl == z2 && zzlsVar.zzm == i3) {
            return;
        }
        this.zzC++;
        zzls zzlsVarZzc = zzlsVar.zzc(z2, i3);
        this.zzk.zzm(z2, i3);
        zzal(zzlsVarZzc, 0, i2, false, 5, C.TIME_UNSET, -1, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0471 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0475  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x047b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0486 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0497 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x04c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02b4  */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzal(final com.google.android.gms.internal.ads.zzls r43, final int r44, final int r45, boolean r46, int r47, long r48, int r50, boolean r51) {
        /*
            Method dump skipped, instruction units count: 1266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzki.zzal(com.google.android.gms.internal.ads.zzls, int, int, boolean, int, long, int, boolean):void");
    }

    private final void zzam() {
        int iZzf = zzf();
        if (iZzf == 2 || iZzf == 3) {
            zzan();
            boolean z = this.zzad.zzo;
            zzv();
            zzv();
        }
    }

    private final void zzan() {
        this.zze.zzb();
        if (Thread.currentThread() != this.zzs.getThread()) {
            String str = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.zzs.getThread().getName());
            if (this.zzY) {
                throw new IllegalStateException(str);
            }
            zzez.zzg("ExoPlayerImpl", str, this.zzZ ? null : new IllegalStateException());
            this.zzZ = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zzA(zzmm zzmmVar) {
        zzan();
        this.zzr.zzQ(zzmmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zzB(zzum zzumVar) {
        zzan();
        List listSingletonList = Collections.singletonList(zzumVar);
        zzan();
        zzan();
        zzW(this.zzad);
        zzk();
        this.zzC++;
        if (!this.zzo.isEmpty()) {
            int size = this.zzo.size();
            for (int i = size - 1; i >= 0; i--) {
                this.zzo.remove(i);
            }
            this.zzah = this.zzah.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < listSingletonList.size(); i2++) {
            zzlp zzlpVar = new zzlp((zzum) listSingletonList.get(i2), this.zzp);
            arrayList.add(zzlpVar);
            this.zzo.add(i2, new zzkh(zzlpVar.zzb, zzlpVar.zza));
        }
        this.zzah = this.zzah.zzg(0, arrayList.size());
        zzlx zzlxVar = new zzlx(this.zzo, this.zzah);
        if (!zzlxVar.zzo() && zzlxVar.zzc() < 0) {
            throw new zzaq(zzlxVar, -1, C.TIME_UNSET);
        }
        int iZzg = zzlxVar.zzg(false);
        zzls zzlsVarZzad = zzad(this.zzad, zzlxVar, zzac(zzlxVar, iZzg, C.TIME_UNSET));
        int i3 = zzlsVarZzad.zze;
        if (iZzg != -1 && i3 != 1) {
            i3 = (zzlxVar.zzo() || iZzg >= zzlxVar.zzc()) ? 4 : 2;
        }
        zzls zzlsVarZze = zzlsVarZzad.zze(i3);
        this.zzk.zzp(arrayList, iZzg, zzfs.zzq(C.TIME_UNSET), this.zzah);
        zzal(zzlsVarZze, 0, 1, (this.zzad.zzb.zza.equals(zzlsVarZze.zzb.zza) || this.zzad.zza.zzo()) ? false : true, 4, zzZ(zzlsVarZze), -1, false);
    }

    @Nullable
    public final zzit zzE() {
        zzan();
        return this.zzad.zzf;
    }

    final /* synthetic */ void zzS(zzkr zzkrVar) {
        long j;
        boolean z;
        int i = this.zzC - zzkrVar.zzb;
        this.zzC = i;
        boolean z2 = true;
        if (zzkrVar.zzc) {
            this.zzD = zzkrVar.zzd;
            this.zzE = true;
        }
        if (zzkrVar.zze) {
            this.zzF = zzkrVar.zzf;
        }
        if (i == 0) {
            zzda zzdaVar = zzkrVar.zza.zza;
            if (!this.zzad.zza.zzo() && zzdaVar.zzo()) {
                this.zzae = -1;
                this.zzaf = 0L;
            }
            if (!zzdaVar.zzo()) {
                List listZzw = ((zzlx) zzdaVar).zzw();
                zzef.zzf(listZzw.size() == this.zzo.size());
                for (int i2 = 0; i2 < listZzw.size(); i2++) {
                    ((zzkh) this.zzo.get(i2)).zzc((zzda) listZzw.get(i2));
                }
            }
            if (this.zzE) {
                if (zzkrVar.zza.zzb.equals(this.zzad.zzb) && zzkrVar.zza.zzd == this.zzad.zzr) {
                    z2 = false;
                }
                if (!z2) {
                    j = -9223372036854775807L;
                } else if (zzdaVar.zzo() || zzkrVar.zza.zzb.zzb()) {
                    j = zzkrVar.zza.zzd;
                } else {
                    zzls zzlsVar = zzkrVar.zza;
                    zzuk zzukVar = zzlsVar.zzb;
                    j = zzlsVar.zzd;
                    zzab(zzdaVar, zzukVar, j);
                }
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.zzE = false;
            zzal(zzkrVar.zza, 1, this.zzF, z, this.zzD, j, -1, false);
        }
    }

    final /* synthetic */ void zzT(final zzkr zzkrVar) {
        this.zzj.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjx
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzS(zzkrVar);
            }
        });
    }

    final /* synthetic */ void zzU(zzco zzcoVar) {
        zzcoVar.zza(this.zzH);
    }

    @Override // com.google.android.gms.internal.ads.zzm
    public final void zza(int i, long j, int i2, boolean z) {
        zzan();
        zzef.zzd(i >= 0);
        this.zzr.zzu();
        zzda zzdaVar = this.zzad.zza;
        if (zzdaVar.zzo() || i < zzdaVar.zzc()) {
            this.zzC++;
            if (zzx()) {
                zzez.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzkr zzkrVar = new zzkr(this.zzad);
                zzkrVar.zza(1);
                this.zzag.zza.zzT(zzkrVar);
                return;
            }
            zzls zzlsVarZze = this.zzad;
            int i3 = zzlsVarZze.zze;
            if (i3 == 3 || (i3 == 4 && !zzdaVar.zzo())) {
                zzlsVarZze = this.zzad.zze(2);
            }
            int iZzd = zzd();
            zzls zzlsVarZzad = zzad(zzlsVarZze, zzdaVar, zzac(zzdaVar, i, j));
            this.zzk.zzk(zzdaVar, i, zzfs.zzq(j));
            zzal(zzlsVarZzad, 0, 1, true, 1, zzZ(zzlsVarZzad), iZzd, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzb() {
        zzan();
        if (zzx()) {
            return this.zzad.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzc() {
        zzan();
        if (zzx()) {
            return this.zzad.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzd() {
        zzan();
        int iZzW = zzW(this.zzad);
        if (iZzW == -1) {
            return 0;
        }
        return iZzW;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zze() {
        zzan();
        if (this.zzad.zza.zzo()) {
            return 0;
        }
        zzls zzlsVar = this.zzad;
        return zzlsVar.zza.zza(zzlsVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzf() {
        zzan();
        return this.zzad.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzg() {
        zzan();
        return this.zzad.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zzh() {
        zzan();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final long zzi() {
        zzan();
        if (zzx()) {
            zzls zzlsVar = this.zzad;
            return zzlsVar.zzk.equals(zzlsVar.zzb) ? zzfs.zzt(this.zzad.zzp) : zzl();
        }
        zzan();
        if (this.zzad.zza.zzo()) {
            return this.zzaf;
        }
        zzls zzlsVar2 = this.zzad;
        long j = 0;
        if (zzlsVar2.zzk.zzd != zzlsVar2.zzb.zzd) {
            return zzfs.zzt(zzlsVar2.zza.zze(zzd(), this.zza, 0L).zzo);
        }
        long j2 = zzlsVar2.zzp;
        if (this.zzad.zzk.zzb()) {
            zzls zzlsVar3 = this.zzad;
            zzlsVar3.zza.zzn(zzlsVar3.zzk.zza, this.zzn).zzi(this.zzad.zzk.zzb);
        } else {
            j = j2;
        }
        zzls zzlsVar4 = this.zzad;
        zzab(zzlsVar4.zza, zzlsVar4.zzk, j);
        return zzfs.zzt(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final long zzj() {
        zzan();
        return zzY(this.zzad);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final long zzk() {
        zzan();
        return zzfs.zzt(zzZ(this.zzad));
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final long zzl() {
        zzan();
        if (!zzx()) {
            zzda zzdaVarZzn = zzn();
            return zzdaVarZzn.zzo() ? C.TIME_UNSET : zzfs.zzt(zzdaVarZzn.zze(zzd(), this.zza, 0L).zzo);
        }
        zzls zzlsVar = this.zzad;
        zzuk zzukVar = zzlsVar.zzb;
        zzlsVar.zza.zzn(zzukVar.zza, this.zzn);
        return zzfs.zzt(this.zzn.zzh(zzukVar.zzb, zzukVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final long zzm() {
        zzan();
        return zzfs.zzt(this.zzad.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final zzda zzn() {
        zzan();
        return this.zzad.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final zzdn zzo() {
        zzan();
        return this.zzad.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzp() {
        zzan();
        zzij zzijVar = this.zzy;
        boolean zZzv = zzv();
        int iZzb = zzijVar.zzb(zZzv, 2);
        zzak(zZzv, iZzb, zzX(zZzv, iZzb));
        zzls zzlsVar = this.zzad;
        if (zzlsVar.zze != 1) {
            return;
        }
        zzls zzlsVarZzd = zzlsVar.zzd(null);
        zzls zzlsVarZze = zzlsVarZzd.zze(true == zzlsVarZzd.zza.zzo() ? 4 : 2);
        this.zzC++;
        this.zzk.zzj();
        zzal(zzlsVarZze, 1, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzq() {
        AudioTrack audioTrack;
        zzez.zze("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.2.0-beta01] [" + zzfs.zze + "] [" + zzbt.zza() + o2.i.f6491e);
        zzan();
        if (zzfs.zza < 21 && (audioTrack = this.zzM) != null) {
            audioTrack.release();
            this.zzM = null;
        }
        this.zzy.zzd();
        if (!this.zzk.zzo()) {
            zzew zzewVar = this.zzl;
            zzewVar.zzd(10, new zzet() { // from class: com.google.android.gms.internal.ads.zzjw
                @Override // com.google.android.gms.internal.ads.zzet
                public final void zza(Object obj) {
                    ((zzco) obj).zzj(zzit.zzd(new zzku(1), 1003));
                }
            });
            zzewVar.zzc();
        }
        this.zzl.zze();
        this.zzj.zze(null);
        this.zzt.zzf(this.zzr);
        zzls zzlsVar = this.zzad;
        boolean z = zzlsVar.zzo;
        zzls zzlsVarZze = zzlsVar.zze(1);
        this.zzad = zzlsVarZze;
        zzls zzlsVarZza = zzlsVarZze.zza(zzlsVarZze.zzb);
        this.zzad = zzlsVarZza;
        zzlsVarZza.zzp = zzlsVarZza.zzr;
        this.zzad.zzq = 0L;
        this.zzr.zzP();
        this.zzi.zzi();
        Surface surface = this.zzO;
        if (surface != null) {
            surface.release();
            this.zzO = null;
        }
        this.zzX = zzee.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzr(boolean z) {
        zzan();
        int iZzb = this.zzy.zzb(z, zzf());
        zzak(z, iZzb, zzX(z, iZzb));
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzs(@Nullable Surface surface) {
        zzan();
        zzai(surface);
        int i = surface == null ? 0 : -1;
        zzaf(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzt(float f2) {
        zzan();
        final float fMax = Math.max(0.0f, Math.min(f2, 1.0f));
        if (this.zzV == fMax) {
            return;
        }
        this.zzV = fMax;
        zzah();
        zzew zzewVar = this.zzl;
        zzewVar.zzd(22, new zzet() { // from class: com.google.android.gms.internal.ads.zzjm
            @Override // com.google.android.gms.internal.ads.zzet
            public final void zza(Object obj) {
                int i = zzki.zzd;
                ((zzco) obj).zzs(fMax);
            }
        });
        zzewVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzu() {
        zzan();
        this.zzy.zzb(zzv(), 1);
        zzaj(null);
        this.zzX = new zzee(zzfwu.zzl(), this.zzad.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final boolean zzv() {
        zzan();
        return this.zzad.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final boolean zzw() {
        zzan();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final boolean zzx() {
        zzan();
        return this.zzad.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final int zzy() {
        zzan();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zzz(zzmm zzmmVar) {
        this.zzr.zzt(zzmmVar);
    }
}
