package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzjc {
    final Context zza;
    zzeg zzb;
    zzfuo zzc;
    zzfuo zzd;
    zzfuo zze;
    zzfuo zzf;
    zzfuo zzg;
    zzftn zzh;
    Looper zzi;
    zzk zzj;
    int zzk;
    boolean zzl;
    zzmd zzm;
    long zzn;
    long zzo;
    boolean zzp;
    boolean zzq;
    zzio zzr;

    public zzjc(final Context context, zzcgf zzcgfVar) {
        zziv zzivVar = new zziv(zzcgfVar);
        zziw zziwVar = new zziw(context);
        zzfuo zzfuoVar = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzix
            @Override // com.google.android.gms.internal.ads.zzfuo
            public final Object zza() {
                return new zzxw(context);
            }
        };
        zziy zziyVar = new zzfuo() { // from class: com.google.android.gms.internal.ads.zziy
            @Override // com.google.android.gms.internal.ads.zzfuo
            public final Object zza() {
                return new zzip();
            }
        };
        zziz zzizVar = new zziz(context);
        zzja zzjaVar = new zzftn() { // from class: com.google.android.gms.internal.ads.zzja
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return new zzom((zzeg) obj);
            }
        };
        Objects.requireNonNull(context);
        this.zza = context;
        this.zzc = zzivVar;
        this.zzd = zziwVar;
        this.zze = zzfuoVar;
        this.zzf = zziyVar;
        this.zzg = zzizVar;
        this.zzh = zzjaVar;
        this.zzi = zzfs.zzx();
        this.zzj = zzk.zza;
        this.zzk = 1;
        this.zzl = true;
        this.zzm = zzmd.zze;
        this.zzr = new zzio(0.97f, 1.03f, 1000L, 1.0E-7f, zzfs.zzq(20L), zzfs.zzq(500L), 0.999f, null);
        this.zzb = zzeg.zza;
        this.zzn = 500L;
        this.zzo = AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
        this.zzp = true;
    }

    static /* synthetic */ zzuj zza(Context context) {
        return new zztx(context, new zzabz());
    }
}
