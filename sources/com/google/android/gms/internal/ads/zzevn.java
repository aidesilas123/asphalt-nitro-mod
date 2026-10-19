package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzevn implements zzeuy {
    private final com.google.android.gms.ads.internal.util.zzg zza;
    private final Context zzb;
    private final zzgbl zzc;
    private final ScheduledExecutorService zzd;
    private final zzeft zze;
    private final zzfeq zzf;

    zzevn(com.google.android.gms.ads.internal.util.zzg zzgVar, Context context, zzgbl zzgblVar, ScheduledExecutorService scheduledExecutorService, zzeft zzeftVar, zzfeq zzfeqVar) {
        this.zza = zzgVar;
        this.zzb = context;
        this.zzc = zzgblVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzeftVar;
        this.zzf = zzfeqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (r5.zzf.zzd.zzy != com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) goto L10;
     */
    @Override // com.google.android.gms.internal.ads.zzeuy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.common.util.concurrent.h0 zzb() {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzjJ
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L74
            com.google.android.gms.ads.internal.util.zzg r0 = r5.zza
            boolean r0 = r0.zzR()
            if (r0 == 0) goto L74
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzjM
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzfeq r0 = r5.zzf
            com.google.android.gms.ads.RequestConfiguration$PublisherPrivacyPersonalizationState r1 = com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED
            int r1 = r1.getValue()
            com.google.android.gms.ads.internal.client.zzl r0 = r0.zzd
            int r0 = r0.zzy
            if (r0 == r1) goto L74
        L3a:
            com.google.android.gms.internal.ads.zzeft r0 = r5.zze
            r1 = 0
            com.google.common.util.concurrent.h0 r0 = r0.zza(r1)
            com.google.android.gms.internal.ads.zzbcu r1 = com.google.android.gms.internal.ads.zzbdc.zzjK
            com.google.android.gms.internal.ads.zzbda r2 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r1 = r2.zza(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            long r1 = (long) r1
            java.util.concurrent.ScheduledExecutorService r3 = r5.zzd
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            com.google.common.util.concurrent.h0 r0 = com.google.android.gms.internal.ads.zzgbb.zzo(r0, r1, r4, r3)
            com.google.android.gms.internal.ads.zzgas r0 = com.google.android.gms.internal.ads.zzgas.zzu(r0)
            com.google.android.gms.internal.ads.zzgbl r1 = r5.zzc
            com.google.android.gms.internal.ads.zzevl r2 = new com.google.android.gms.internal.ads.zzgai() { // from class: com.google.android.gms.internal.ads.zzevl
                static {
                    /*
                        com.google.android.gms.internal.ads.zzevl r0 = new com.google.android.gms.internal.ads.zzevl
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.google.android.gms.internal.ads.zzevl) com.google.android.gms.internal.ads.zzevl.zza com.google.android.gms.internal.ads.zzevl
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzevl.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzevl.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzgai
                public final com.google.common.util.concurrent.h0 zza(java.lang.Object r6) {
                    /*
                        r5 = this;
                        androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse r6 = (androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse) r6
                        com.google.android.gms.internal.ads.zzhae r0 = com.google.android.gms.internal.ads.zzhaf.zza()
                        java.util.List r6 = r6.getTopics()
                        java.util.Iterator r6 = r6.iterator()
                    Le:
                        boolean r1 = r6.hasNext()
                        if (r1 == 0) goto L3d
                        java.lang.Object r1 = r6.next()
                        androidx.privacysandbox.ads.adservices.topics.Topic r1 = (androidx.privacysandbox.ads.adservices.topics.Topic) r1
                        com.google.android.gms.internal.ads.zzhac r2 = com.google.android.gms.internal.ads.zzhad.zza()
                        int r3 = r1.getTopicCode()
                        r2.zzc(r3)
                        long r3 = r1.getModelVersion()
                        r2.zza(r3)
                        long r3 = r1.getTaxonomyVersion()
                        r2.zzb(r3)
                        com.google.android.gms.internal.ads.zzgwm r1 = r2.zzal()
                        com.google.android.gms.internal.ads.zzhad r1 = (com.google.android.gms.internal.ads.zzhad) r1
                        r0.zza(r1)
                        goto Le
                    L3d:
                        com.google.android.gms.internal.ads.zzgwm r6 = r0.zzal()
                        com.google.android.gms.internal.ads.zzhaf r6 = (com.google.android.gms.internal.ads.zzhaf) r6
                        byte[] r6 = r6.zzax()
                        r0 = 1
                        java.lang.String r6 = android.util.Base64.encodeToString(r6, r0)
                        com.google.android.gms.internal.ads.zzevp r1 = new com.google.android.gms.internal.ads.zzevp
                        r2 = 0
                        r1.<init>(r6, r0, r2)
                        com.google.common.util.concurrent.h0 r6 = com.google.android.gms.internal.ads.zzgbb.zzh(r1)
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzevl.zza(java.lang.Object):com.google.common.util.concurrent.h0");
                }
            }
            com.google.common.util.concurrent.h0 r0 = com.google.android.gms.internal.ads.zzgbb.zzn(r0, r2, r1)
            com.google.android.gms.internal.ads.zzevm r1 = new com.google.android.gms.internal.ads.zzevm
            r1.<init>()
            com.google.android.gms.internal.ads.zzgbl r2 = r5.zzc
            java.lang.Class<java.lang.Throwable> r3 = java.lang.Throwable.class
            com.google.common.util.concurrent.h0 r0 = com.google.android.gms.internal.ads.zzgbb.zzf(r0, r3, r1, r2)
            return r0
        L74:
            com.google.android.gms.internal.ads.zzevp r0 = new com.google.android.gms.internal.ads.zzevp
            r1 = -1
            r2 = 0
            java.lang.String r3 = ""
            r0.<init>(r3, r1, r2)
            com.google.common.util.concurrent.h0 r0 = com.google.android.gms.internal.ads.zzgbb.zzh(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzevn.zzb():com.google.common.util.concurrent.h0");
    }

    final /* synthetic */ h0 zzc(Throwable th) throws Exception {
        zzbus.zza(this.zzb).zzf(th, "TopicsSignal.fetchTopicsSignal");
        return zzgbb.zzh(th instanceof SecurityException ? new zzevp("", 2, null) : th instanceof IllegalStateException ? new zzevp("", 3, null) : th instanceof IllegalArgumentException ? new zzevp("", 4, null) : th instanceof TimeoutException ? new zzevp("", 5, null) : new zzevp("", 0, null));
    }
}
