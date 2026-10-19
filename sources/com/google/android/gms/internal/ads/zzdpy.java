package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdpy extends zzctr {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdig zze;
    private final zzdfi zzf;
    private final zzcyu zzg;
    private final zzdab zzh;
    private final zzcum zzi;
    private final zzbxg zzj;
    private final zzfoe zzk;
    private final zzfej zzl;
    private boolean zzm;

    zzdpy(zzctq zzctqVar, Context context, @Nullable zzcgv zzcgvVar, zzdig zzdigVar, zzdfi zzdfiVar, zzcyu zzcyuVar, zzdab zzdabVar, zzcum zzcumVar, zzfdu zzfduVar, zzfoe zzfoeVar, zzfej zzfejVar) {
        super(zzctqVar);
        this.zzm = false;
        this.zzc = context;
        this.zze = zzdigVar;
        this.zzd = new WeakReference(zzcgvVar);
        this.zzf = zzdfiVar;
        this.zzg = zzcyuVar;
        this.zzh = zzdabVar;
        this.zzi = zzcumVar;
        this.zzk = zzfoeVar;
        zzbxc zzbxcVar = zzfduVar.zzm;
        this.zzj = new zzbya(zzbxcVar != null ? zzbxcVar.zza : "", zzbxcVar != null ? zzbxcVar.zzb : 1);
        this.zzl = zzfejVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcgv zzcgvVar = (zzcgv) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgK)).booleanValue()) {
                if (!this.zzm && zzcgvVar != null) {
                    zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpx
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

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzbxg zzc() {
        return this.zzj;
    }

    public final zzfej zzd() {
        return this.zzl;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        return this.zzm;
    }

    public final boolean zzg() {
        zzcgv zzcgvVar = (zzcgv) this.zzd.get();
        return (zzcgvVar == null || zzcgvVar.zzaB()) ? false : true;
    }

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
    public final boolean zzh(boolean z, @Nullable Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaA)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzF(this.zzc)) {
                zzcbn.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzg.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaB)).booleanValue()) {
                    this.zzk.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.zzm) {
            zzcbn.zzj("The rewarded ad have been showed.");
            this.zzg.zza(zzffr.zzd(10, null, null));
            return false;
        }
        this.zzm = true;
        this.zzf.zzb();
        Context context = activity;
        if (activity == null) {
            context = this.zzc;
        }
        try {
            this.zze.zza(z, context, this.zzg);
            this.zzf.zza();
            return true;
        } catch (zzdif e2) {
            this.zzg.zzc(e2);
            return false;
        }
    }
}
