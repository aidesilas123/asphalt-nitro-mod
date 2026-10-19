package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdlw {
    private final zzdqu zza;
    private final zzdpj zzb;
    private final zzcqv zzc;
    private final zzdks zzd;

    public zzdlw(zzdqu zzdquVar, zzdpj zzdpjVar, zzcqv zzcqvVar, zzdks zzdksVar) {
        this.zza = zzdquVar;
        this.zzb = zzdpjVar;
        this.zzc = zzcqvVar;
        this.zzd = zzdksVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zza() throws zzchg {
        zzcgv zzcgvVarZza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        ((View) zzcgvVarZza).setVisibility(8);
        zzcgvVarZza.zzad("/sendMessageToSdk", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdlr
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcgv) obj, map);
            }
        });
        zzcgvVarZza.zzad("/adMuted", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdls
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzc((zzcgv) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zzcgvVarZza), "/loadHtml", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdlt
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, final Map map) {
                zzcgv zzcgvVar = (zzcgv) obj;
                zzcii zzciiVarZzN = zzcgvVar.zzN();
                final zzdlw zzdlwVar = this.zza;
                zzciiVarZzN.zzA(new zzcig() { // from class: com.google.android.gms.internal.ads.zzdlq
                    @Override // com.google.android.gms.internal.ads.zzcig
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdlwVar.zzd(map, z, i, str, str2);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcgvVar.loadData(str, "text/html", C.UTF8_NAME);
                } else {
                    zzcgvVar.loadDataWithBaseURL(str2, str, "text/html", C.UTF8_NAME, null);
                }
            }
        });
        this.zzb.zzj(new WeakReference(zzcgvVarZza), "/showOverlay", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdlu
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zze((zzcgv) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zzcgvVarZza), "/hideOverlay", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdlv
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzf((zzcgv) obj, map);
            }
        });
        return (View) zzcgvVarZza;
    }

    final /* synthetic */ void zzb(zzcgv zzcgvVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    final /* synthetic */ void zzc(zzcgv zzcgvVar, Map map) {
        this.zzd.zzg();
    }

    final /* synthetic */ void zzd(Map map, boolean z, int i, String str, String str2) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "htmlLoaded");
        map2.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", map2);
    }

    final /* synthetic */ void zze(zzcgv zzcgvVar, Map map) {
        zzcbn.zzi("Showing native ads overlay.");
        zzcgvVar.zzF().setVisibility(0);
        this.zzc.zze(true);
    }

    final /* synthetic */ void zzf(zzcgv zzcgvVar, Map map) {
        zzcbn.zzi("Hiding native ads overlay.");
        zzcgvVar.zzF().setVisibility(8);
        this.zzc.zze(false);
    }
}
