package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.common.util.concurrent.h0;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeaa {
    private final zzgbl zza;
    private final zzdzg zzb;
    private final zzhdj zzc;
    private final zzfkk zzd;
    private final Context zze;
    private final zzcbt zzf;

    public zzeaa(zzgbl zzgblVar, zzdzg zzdzgVar, zzhdj zzhdjVar, zzfkk zzfkkVar, Context context, zzcbt zzcbtVar) {
        this.zza = zzgblVar;
        this.zzb = zzdzgVar;
        this.zzc = zzhdjVar;
        this.zzd = zzfkkVar;
        this.zze = context;
        this.zzf = zzcbtVar;
    }

    private final h0 zzh(final zzbwa zzbwaVar, zzdzz zzdzzVar, final zzdzz zzdzzVar2, final zzgai zzgaiVar) {
        h0 h0VarZzf;
        String str = zzbwaVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            h0VarZzf = zzgbb.zzg(new zzdzp(1));
        } else {
            h0VarZzf = zzgbb.zzf(zzdzzVar.zza(zzbwaVar), ExecutionException.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdzy
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    ExecutionException cause2 = executionException;
                    if (cause != null) {
                        cause2 = executionException.getCause();
                    }
                    return zzgbb.zzg(cause2);
                }
            }, this.zza);
        }
        return zzgbb.zzf(zzgbb.zzn(zzgas.zzu(h0VarZzf), zzgaiVar, this.zza), zzdzp.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdzx
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(zzdzzVar2, zzbwaVar, zzgaiVar, (zzdzp) obj);
            }
        }, this.zza);
    }

    public final h0 zza(final zzbwa zzbwaVar) {
        zzgai zzgaiVar = new zzgai() { // from class: com.google.android.gms.internal.ads.zzdzu
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                String str = new String(zzfyx.zza((InputStream) obj), zzftl.zzc);
                zzbwa zzbwaVar2 = zzbwaVar;
                zzbwaVar2.zzj = str;
                return zzgbb.zzh(zzbwaVar2);
            }
        };
        final zzdzg zzdzgVar = this.zzb;
        return zzh(zzbwaVar, new zzdzz() { // from class: com.google.android.gms.internal.ads.zzdzv
            @Override // com.google.android.gms.internal.ads.zzdzz
            public final h0 zza(zzbwa zzbwaVar2) {
                return zzdzgVar.zzb(zzbwaVar2);
            }
        }, new zzdzz() { // from class: com.google.android.gms.internal.ads.zzdzw
            @Override // com.google.android.gms.internal.ads.zzdzz
            public final h0 zza(zzbwa zzbwaVar2) {
                return this.zza.zzd(zzbwaVar2);
            }
        }, zzgaiVar);
    }

    public final h0 zzb(JSONObject jSONObject) {
        return zzgbb.zzn(zzgas.zzu(zzgbb.zzh(jSONObject)), com.google.android.gms.ads.internal.zzt.zzf().zza(this.zze, this.zzf, this.zzd).zza("AFMA_getAdDictionary", zzbor.zza, new zzbom() { // from class: com.google.android.gms.internal.ads.zzdzq
            @Override // com.google.android.gms.internal.ads.zzbom
            public final Object zza(JSONObject jSONObject2) {
                return new zzbwd(jSONObject2);
            }
        }), this.zza);
    }

    final /* synthetic */ h0 zzc(zzdzz zzdzzVar, zzbwa zzbwaVar, zzgai zzgaiVar, zzdzp zzdzpVar) throws Exception {
        return zzgbb.zzn(zzdzzVar.zza(zzbwaVar), zzgaiVar, this.zza);
    }

    final /* synthetic */ h0 zzd(zzbwa zzbwaVar) {
        return ((zzebw) this.zzc.zzb()).zzb(zzbwaVar, Binder.getCallingUid());
    }

    final /* synthetic */ h0 zze(zzbwa zzbwaVar) {
        return this.zzb.zzc(zzbwaVar.zzh);
    }

    final /* synthetic */ h0 zzf(zzbwa zzbwaVar) {
        return ((zzebw) this.zzc.zzb()).zzi(zzbwaVar.zzh);
    }

    public final h0 zzg(zzbwa zzbwaVar) {
        return zzh(zzbwaVar, new zzdzz() { // from class: com.google.android.gms.internal.ads.zzdzs
            @Override // com.google.android.gms.internal.ads.zzdzz
            public final h0 zza(zzbwa zzbwaVar2) {
                return this.zza.zze(zzbwaVar2);
            }
        }, new zzdzz() { // from class: com.google.android.gms.internal.ads.zzdzt
            @Override // com.google.android.gms.internal.ads.zzdzz
            public final h0 zza(zzbwa zzbwaVar2) {
                return this.zza.zzf(zzbwaVar2);
            }
        }, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdzr
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(null);
            }
        });
    }
}
