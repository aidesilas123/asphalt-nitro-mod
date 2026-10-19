package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import com.google.common.util.concurrent.h0;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcpo {
    private final Context zza;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzefr zzc;
    private final zzdqz zzd;
    private final zzgbl zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private zzbuu zzh;

    zzcpo(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzefr zzefrVar, zzdqz zzdqzVar, zzgbl zzgblVar, zzgbl zzgblVar2, ScheduledExecutorService scheduledExecutorService) {
        this.zza = context;
        this.zzb = zzgVar;
        this.zzc = zzefrVar;
        this.zzd = zzdqzVar;
        this.zze = zzgblVar;
        this.zzf = zzgblVar2;
        this.zzg = scheduledExecutorService;
    }

    private final h0 zzj(final String str, final InputEvent inputEvent, Random random) {
        final Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        if (!str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjC)) || this.zzb.zzQ()) {
            return zzgbb.zzh(str);
        }
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjD), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
        if (inputEvent != null) {
            return zzgbb.zzf(zzgbb.zzn(zzgas.zzu(this.zzc.zza()), new zzgai() { // from class: com.google.android.gms.internal.ads.zzcpi
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zzd(builderBuildUpon, str, inputEvent, (Integer) obj);
                }
            }, this.zzf), Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzcpj
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zze(builderBuildUpon, (Throwable) obj);
                }
            }, this.zze);
        }
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjE), "11");
        return zzgbb.zzh(builderBuildUpon.toString());
    }

    public final h0 zzc(final String str, Random random) {
        return TextUtils.isEmpty(str) ? zzgbb.zzh(str) : zzgbb.zzf(zzj(str, this.zzd.zza(), random), Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzcph
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(str);
            }
        }, this.zze);
    }

    final /* synthetic */ h0 zzd(final Uri.Builder builder, String str, InputEvent inputEvent, Integer num) throws Exception {
        if (num.intValue() != 1) {
            builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjE), "10");
            return zzgbb.zzh(builder.toString());
        }
        Uri.Builder builderBuildUpon = builder.build().buildUpon();
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjF), "1");
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjE), "12");
        if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjG))) {
            builderBuildUpon.authority((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjH));
        }
        return zzgbb.zzn(zzgas.zzu(this.zzc.zzb(builderBuildUpon.build(), inputEvent)), new zzgai() { // from class: com.google.android.gms.internal.ads.zzcpk
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjE);
                Uri.Builder builder2 = builder;
                builder2.appendQueryParameter(str2, "12");
                return zzgbb.zzh(builder2.toString());
            }
        }, this.zzf);
    }

    final /* synthetic */ h0 zze(Uri.Builder builder, final Throwable th) throws Exception {
        this.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpg
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzh(th);
            }
        });
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjE), "9");
        return zzgbb.zzh(builder.toString());
    }

    final /* synthetic */ void zzh(Throwable th) {
        zzbuu zzbuuVarZza = zzbus.zza(this.zza);
        this.zzh = zzbuuVarZza;
        zzbuuVarZza.zzf(th, "AttributionReporting");
    }

    public final void zzi(String str, zzfla zzflaVar, Random random) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgbb.zzr(zzgbb.zzo(zzj(str, this.zzd.zza(), random), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjI)).intValue(), TimeUnit.MILLISECONDS, this.zzg), new zzcpn(this, zzflaVar, str), this.zze);
    }
}
