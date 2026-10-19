package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcgi extends zzcdn implements zzhs, zzmm {
    public static final /* synthetic */ int zza = 0;
    private final Context zzb;
    private final zzcft zzc;
    private final zzxw zzd;
    private final zzcdv zze;
    private final WeakReference zzf;
    private final zzvp zzg;

    @Nullable
    private zzjd zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private zzcdm zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private final String zzo;
    private final int zzp;

    @Nullable
    private Integer zzr;
    private final ArrayList zzs;

    @Nullable
    private volatile zzcfv zzt;
    private final Object zzq = new Object();
    private final Set zzu = new HashSet();

    /* JADX WARN: Removed duplicated region for block: B:21:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzcgi(android.content.Context r4, com.google.android.gms.internal.ads.zzcdv r5, com.google.android.gms.internal.ads.zzcdw r6, @androidx.annotation.Nullable java.lang.Integer r7) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgi.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcdv, com.google.android.gms.internal.ads.zzcdw, java.lang.Integer):void");
    }

    private final boolean zzad() {
        return this.zzt != null && this.zzt.zzq();
    }

    public final void finalize() {
        zzcdn.zzD().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzA() {
        if (zzad()) {
            return 0L;
        }
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzB() {
        if (zzad()) {
            return this.zzt.zzl();
        }
        synchronized (this.zzq) {
            while (!this.zzs.isEmpty()) {
                long j = this.zzn;
                Map mapZze = ((zzhn) this.zzs.remove(0)).zze();
                long j2 = 0;
                if (mapZze != null) {
                    Iterator it = mapZze.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        if (entry != null) {
                            try {
                                if (entry.getKey() != null && zzftf.zzc("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                    j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                    break;
                                }
                            } catch (NumberFormatException unused) {
                                continue;
                            }
                        }
                    }
                }
                this.zzn = j + j2;
            }
        }
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    @Nullable
    public final Integer zzC() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzF(Uri[] uriArr, String str) {
        zzG(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzum zzvaVar;
        if (this.zzh != null) {
            this.zzi = byteBuffer;
            this.zzj = z;
            int length = uriArr.length;
            if (length == 1) {
                zzvaVar = zzaa(uriArr[0]);
            } else {
                zzum[] zzumVarArr = new zzum[length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzumVarArr[i] = zzaa(uriArr[i]);
                }
                zzvaVar = new zzva(false, false, zzumVarArr);
            }
            this.zzh.zzB(zzvaVar);
            this.zzh.zzp();
            zzcdn.zzE().incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzH() {
        zzjd zzjdVar = this.zzh;
        if (zzjdVar != null) {
            zzjdVar.zzA(this);
            this.zzh.zzq();
            this.zzh = null;
            zzcdn.zzE().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzI(long j) {
        zzm zzmVar = (zzm) this.zzh;
        zzmVar.zza(zzmVar.zzd(), j, 5, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzJ(int i) {
        this.zzc.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzK(int i) {
        this.zzc.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzL(zzcdm zzcdmVar) {
        this.zzk = zzcdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzM(int i) {
        this.zzc.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzN(int i) {
        this.zzc.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzO(boolean z) {
        this.zzh.zzr(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzP(@Nullable Integer num) {
        this.zzr = num;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzQ(boolean z) {
        if (this.zzh == null) {
            return;
        }
        int i = 0;
        while (true) {
            this.zzh.zzy();
            if (i >= 2) {
                return;
            }
            zzxw zzxwVar = this.zzd;
            zzxi zzxiVarZzc = zzxwVar.zzd().zzc();
            zzxiVarZzc.zzp(i, !z);
            zzxwVar.zzk(zzxiVarZzc);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzR(int i) {
        Iterator it = this.zzu.iterator();
        while (it.hasNext()) {
            zzcfs zzcfsVar = (zzcfs) ((WeakReference) it.next()).get();
            if (zzcfsVar != null) {
                zzcfsVar.zzm(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzS(Surface surface, boolean z) {
        zzjd zzjdVar = this.zzh;
        if (zzjdVar != null) {
            zzjdVar.zzs(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzT(float f2, boolean z) {
        zzjd zzjdVar = this.zzh;
        if (zzjdVar != null) {
            zzjdVar.zzt(f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzU() {
        this.zzh.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final boolean zzV() {
        return this.zzh != null;
    }

    final /* synthetic */ zzgq zzW(String str, boolean z) {
        zzcgi zzcgiVar = true != z ? null : this;
        zzcdv zzcdvVar = this.zze;
        return new zzcgl(str, zzcgiVar, zzcdvVar.zzd, zzcdvVar.zzf, zzcdvVar.zzn, zzcdvVar.zzo);
    }

    final /* synthetic */ zzgq zzX(String str, boolean z) {
        zzcgi zzcgiVar = true != z ? null : this;
        zzcdv zzcdvVar = this.zze;
        zzcfs zzcfsVar = new zzcfs(str, zzcgiVar, zzcdvVar.zzd, zzcdvVar.zzf, zzcdvVar.zzi);
        this.zzu.add(new WeakReference(zzcfsVar));
        return zzcfsVar;
    }

    final /* synthetic */ zzgq zzY(String str, boolean z) {
        zzgy zzgyVar = new zzgy();
        zzgyVar.zzf(str);
        zzgyVar.zze(true != z ? null : this);
        zzgyVar.zzc(this.zze.zzd);
        zzgyVar.zzd(this.zze.zzf);
        zzgyVar.zzb(true);
        return zzgyVar.zza();
    }

    final /* synthetic */ zzgq zzZ(zzgp zzgpVar) {
        zzgq zzgqVarZza = zzgpVar.zza();
        zzcgg zzcggVar = new zzcgg(this);
        return new zzcfv(this.zzb, zzgqVarZza, this.zzo, this.zzp, this, zzcggVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zza(zzgq zzgqVar, zzgv zzgvVar, boolean z, int i) {
        this.zzl += i;
    }

    @VisibleForTesting
    final zzum zzaa(Uri uri) {
        zzau zzauVar = new zzau();
        zzauVar.zzb(uri);
        zzbs zzbsVarZzc = zzauVar.zzc();
        zzvp zzvpVar = this.zzg;
        zzvpVar.zza(this.zze.zzg);
        return zzvpVar.zzb(zzbsVarZzc);
    }

    final /* synthetic */ void zzab(boolean z, long j) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            zzcdmVar.zzi(z, j);
        }
    }

    final /* synthetic */ zzlz[] zzac(Handler handler, zzaau zzaauVar, zzpo zzpoVar, zzwo zzwoVar, zztk zztkVar) {
        zzsu zzsuVar = zzsu.zzb;
        zzox zzoxVar = zzox.zza;
        zzdy[] zzdyVarArr = new zzdy[0];
        zzqk zzqkVar = new zzqk();
        if (zzoxVar == null) {
            Objects.requireNonNull(zzoxVar, "Both parameters are null");
        }
        Context context = this.zzb;
        zzqkVar.zzc(zzoxVar);
        zzqkVar.zzd(zzdyVarArr);
        zzqw zzqwVarZze = zzqkVar.zze();
        zzsj zzsjVar = zzsj.zza;
        return new zzlz[]{new zzrc(context, zzsjVar, zzsuVar, false, handler, zzpoVar, zzqwVarZze), new zzzw(this.zzb, zzsjVar, zzsuVar, 0L, false, handler, zzaauVar, -1, 30.0f)};
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzb(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzc(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzd(zzgq zzgqVar, zzgv zzgvVar, boolean z) {
        if (zzgqVar instanceof zzhn) {
            synchronized (this.zzq) {
                this.zzs.add((zzhn) zzgqVar);
            }
        } else if (zzgqVar instanceof zzcfv) {
            this.zzt = (zzcfv) zzgqVar;
            final zzcdw zzcdwVar = (zzcdw) this.zzf.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue() && zzcdwVar != null && this.zzt.zzn()) {
                final HashMap map = new HashMap();
                map.put("gcacheHit", String.valueOf(this.zzt.zzp()));
                map.put("gcacheDownloaded", String.valueOf(this.zzt.zzo()));
                com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcge
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = zzcgi.zza;
                        zzcdwVar.zzd("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zze(zzmk zzmkVar, zzam zzamVar, @Nullable zzim zzimVar) {
        zzcdw zzcdwVar = (zzcdw) this.zzf.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue() || zzcdwVar == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = zzamVar.zzl;
        if (str != null) {
            map.put("audioMime", str);
        }
        String str2 = zzamVar.zzm;
        if (str2 != null) {
            map.put("audioSampleMime", str2);
        }
        String str3 = zzamVar.zzj;
        if (str3 != null) {
            map.put("audioCodec", str3);
        }
        zzcdwVar.zzd("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzf(zzmk zzmkVar, int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzg(zzmk zzmkVar, zzug zzugVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzh(zzmk zzmkVar, int i, long j) {
        this.zzm += i;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzi(zzcr zzcrVar, zzml zzmlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzj(zzmk zzmkVar, zzub zzubVar, zzug zzugVar, IOException iOException, boolean z) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            if (this.zze.zzk) {
                zzcdmVar.zzl("onLoadException", iOException);
            } else {
                zzcdmVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzk(zzmk zzmkVar, int i) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            zzcdmVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzl(zzmk zzmkVar, zzch zzchVar) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            zzcdmVar.zzk("onPlayerError", zzchVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzm(zzmk zzmkVar, zzcq zzcqVar, zzcq zzcqVar2, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzn(zzmk zzmkVar, Object obj, long j) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            zzcdmVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzo(zzmk zzmkVar, zzil zzilVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzp(zzmk zzmkVar, zzam zzamVar, @Nullable zzim zzimVar) {
        zzcdw zzcdwVar = (zzcdw) this.zzf.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue() || zzcdwVar == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("frameRate", String.valueOf(zzamVar.zzt));
        map.put("bitRate", String.valueOf(zzamVar.zzi));
        map.put("resolution", zzamVar.zzr + "x" + zzamVar.zzs);
        String str = zzamVar.zzl;
        if (str != null) {
            map.put("videoMime", str);
        }
        String str2 = zzamVar.zzm;
        if (str2 != null) {
            map.put("videoSampleMime", str2);
        }
        String str3 = zzamVar.zzj;
        if (str3 != null) {
            map.put("videoCodec", str3);
        }
        zzcdwVar.zzd("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzq(zzmk zzmkVar, zzdu zzduVar) {
        zzcdm zzcdmVar = this.zzk;
        if (zzcdmVar != null) {
            zzcdmVar.zzD(zzduVar.zzc, zzduVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final int zzr() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final int zzt() {
        return this.zzh.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzv() {
        return this.zzh.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzw() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzx() {
        if (zzad() && this.zzt.zzp()) {
            return Math.min(this.zzl, this.zzt.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzy() {
        return this.zzh.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final long zzz() {
        return this.zzh.zzl();
    }
}
