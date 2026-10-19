package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdgx extends zzctr {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdfi zze;
    private final zzdig zzf;
    private final zzcum zzg;
    private final zzfoe zzh;
    private final zzcyu zzi;
    private final zzcba zzj;
    private boolean zzk;

    zzdgx(zzctq zzctqVar, Context context, zzcgv zzcgvVar, zzdfi zzdfiVar, zzdig zzdigVar, zzcum zzcumVar, zzfoe zzfoeVar, zzcyu zzcyuVar, zzcba zzcbaVar) {
        super(zzctqVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcgvVar);
        this.zze = zzdfiVar;
        this.zzf = zzdigVar;
        this.zzg = zzcumVar;
        this.zzh = zzfoeVar;
        this.zzi = zzcyuVar;
        this.zzj = zzcbaVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcgv zzcgvVar = (zzcgv) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgK)).booleanValue()) {
                if (!this.zzk && zzcgvVar != null) {
                    zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdgw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcgvVar.destroy();
                        }
                    });
                }
            } else if (zzcgvVar != null) {
                zzcgvVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzc(boolean r5, android.app.Activity r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzdfi r0 = r4.zze
            r0.zzb()
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzaA
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L4e
            com.google.android.gms.ads.internal.zzt.zzp()
            android.content.Context r0 = r4.zzc
            boolean r0 = com.google.android.gms.ads.internal.util.zzt.zzF(r0)
            if (r0 == 0) goto L4e
            java.lang.String r5 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.internal.ads.zzcbn.zzj(r5)
            com.google.android.gms.internal.ads.zzcyu r5 = r4.zzi
            r5.zzb()
            com.google.android.gms.internal.ads.zzbcu r5 = com.google.android.gms.internal.ads.zzbdc.zzaB
            com.google.android.gms.internal.ads.zzbda r6 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r5 = r6.zza(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto Lc4
            com.google.android.gms.internal.ads.zzfoe r5 = r4.zzh
            com.google.android.gms.internal.ads.zzfeh r6 = r4.zza
            com.google.android.gms.internal.ads.zzfeg r6 = r6.zzb
            com.google.android.gms.internal.ads.zzfdy r6 = r6.zzb
            java.lang.String r6 = r6.zzb
            r5.zza(r6)
            goto Lc4
        L4e:
            java.lang.ref.WeakReference r0 = r4.zzd
            java.lang.Object r0 = r0.get()
            com.google.android.gms.internal.ads.zzcgv r0 = (com.google.android.gms.internal.ads.zzcgv) r0
            com.google.android.gms.internal.ads.zzbcu r2 = com.google.android.gms.internal.ads.zzbdc.zzkX
            com.google.android.gms.internal.ads.zzbda r3 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r2 = r3.zza(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            r3 = 0
            if (r2 == 0) goto L92
            if (r0 == 0) goto L92
            com.google.android.gms.internal.ads.zzfdu r0 = r0.zzD()
            if (r0 == 0) goto L92
            boolean r2 = r0.zzar
            if (r2 == 0) goto L92
            int r0 = r0.zzas
            com.google.android.gms.internal.ads.zzcba r2 = r4.zzj
            int r2 = r2.zzb()
            if (r0 == r2) goto L92
            java.lang.String r5 = "The interstitial consent form has been shown."
            com.google.android.gms.internal.ads.zzcbn.zzj(r5)
            com.google.android.gms.internal.ads.zzcyu r5 = r4.zzi
            r6 = 12
            java.lang.String r0 = "The consent form has already been shown."
            com.google.android.gms.ads.internal.client.zze r6 = com.google.android.gms.internal.ads.zzffr.zzd(r6, r0, r3)
            r5.zza(r6)
            goto Lc4
        L92:
            boolean r0 = r4.zzk
            if (r0 == 0) goto La6
            java.lang.String r0 = "The interstitial ad has been shown."
            com.google.android.gms.internal.ads.zzcbn.zzj(r0)
            com.google.android.gms.internal.ads.zzcyu r0 = r4.zzi
            r2 = 10
            com.google.android.gms.ads.internal.client.zze r2 = com.google.android.gms.internal.ads.zzffr.zzd(r2, r3, r3)
            r0.zza(r2)
        La6:
            boolean r0 = r4.zzk
            if (r0 != 0) goto Lc4
            if (r6 != 0) goto Lae
            android.content.Context r6 = r4.zzc
        Lae:
            com.google.android.gms.internal.ads.zzdig r0 = r4.zzf     // Catch: com.google.android.gms.internal.ads.zzdif -> Lbe
            com.google.android.gms.internal.ads.zzcyu r2 = r4.zzi     // Catch: com.google.android.gms.internal.ads.zzdif -> Lbe
            r0.zza(r5, r6, r2)     // Catch: com.google.android.gms.internal.ads.zzdif -> Lbe
            com.google.android.gms.internal.ads.zzdfi r5 = r4.zze     // Catch: com.google.android.gms.internal.ads.zzdif -> Lbe
            r5.zza()     // Catch: com.google.android.gms.internal.ads.zzdif -> Lbe
            r5 = 1
            r4.zzk = r5
            return r5
        Lbe:
            r5 = move-exception
            com.google.android.gms.internal.ads.zzcyu r6 = r4.zzi
            r6.zzc(r5)
        Lc4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdgx.zzc(boolean, android.app.Activity):boolean");
    }
}
