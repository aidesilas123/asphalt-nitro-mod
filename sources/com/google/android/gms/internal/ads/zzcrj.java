package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcrj extends zzctr {

    @Nullable
    private final zzcgv zzc;
    private final int zzd;
    private final Context zze;
    private final zzcqy zzf;
    private final zzdig zzg;
    private final zzdfi zzh;
    private final zzcyu zzi;
    private final boolean zzj;
    private final zzcba zzk;
    private boolean zzl;

    zzcrj(zzctq zzctqVar, Context context, @Nullable zzcgv zzcgvVar, int i, zzcqy zzcqyVar, zzdig zzdigVar, zzdfi zzdfiVar, zzcyu zzcyuVar, zzcba zzcbaVar) {
        super(zzctqVar);
        this.zzl = false;
        this.zzc = zzcgvVar;
        this.zze = context;
        this.zzd = i;
        this.zzf = zzcqyVar;
        this.zzg = zzdigVar;
        this.zzh = zzdfiVar;
        this.zzi = zzcyuVar;
        this.zzj = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfj)).booleanValue();
        this.zzk = zzcbaVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzctr
    public final void zzb() {
        super.zzb();
        zzcgv zzcgvVar = this.zzc;
        if (zzcgvVar != null) {
            zzcgvVar.destroy();
        }
    }

    public final void zzc(zzaxd zzaxdVar) {
        zzcgv zzcgvVar = this.zzc;
        if (zzcgvVar != null) {
            zzcgvVar.zzah(zzaxdVar);
        }
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
    public final void zzd(Activity activity, zzaxq zzaxqVar, boolean z) throws RemoteException {
        zzcgv zzcgvVar;
        zzfdu zzfduVarZzD;
        Context context = activity;
        if (activity == null) {
            context = this.zze;
        }
        if (this.zzj) {
            this.zzh.zzb();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaA)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzF(context)) {
                zzcbn.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzi.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaB)).booleanValue()) {
                    new zzfoe(context.getApplicationContext(), com.google.android.gms.ads.internal.zzt.zzt().zzb()).zza(this.zza.zzb.zzb.zzb);
                    return;
                }
                return;
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkX)).booleanValue() && (zzcgvVar = this.zzc) != null && (zzfduVarZzD = zzcgvVar.zzD()) != null && zzfduVarZzD.zzar && zzfduVarZzD.zzas != this.zzk.zzb()) {
            zzcbn.zzj("The app open consent form has been shown.");
            this.zzi.zza(zzffr.zzd(12, "The consent form has already been shown.", null));
            return;
        }
        if (this.zzl) {
            zzcbn.zzj("App open interstitial ad is already visible.");
            this.zzi.zza(zzffr.zzd(10, null, null));
        }
        if (this.zzl) {
            return;
        }
        try {
            this.zzg.zza(z, context, this.zzi);
            if (this.zzj) {
                this.zzh.zza();
            }
            this.zzl = true;
        } catch (zzdif e2) {
            this.zzi.zzc(e2);
        }
    }

    public final void zze(long j, int i) {
        this.zzf.zza(j, i);
    }
}
