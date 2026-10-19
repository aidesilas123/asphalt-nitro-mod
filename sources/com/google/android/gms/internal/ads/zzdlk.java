package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdlk {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfeq zzc;
    private final zzdkp zzd;
    private final zzdkk zze;

    @Nullable
    private final zzdlw zzf;

    @Nullable
    private final zzdme zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbfw zzj;
    private final zzdkh zzk;

    public zzdlk(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfeq zzfeqVar, zzdkp zzdkpVar, zzdkk zzdkkVar, @Nullable zzdlw zzdlwVar, @Nullable zzdme zzdmeVar, Executor executor, Executor executor2, zzdkh zzdkhVar) {
        this.zzb = zzgVar;
        this.zzc = zzfeqVar;
        this.zzj = zzfeqVar.zzi;
        this.zzd = zzdkpVar;
        this.zze = zzdkkVar;
        this.zzf = zzdlwVar;
        this.zzg = zzdmeVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdkhVar;
    }

    private static void zzh(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    private final boolean zzi(@NonNull ViewGroup viewGroup, boolean z) {
        View viewZzf = z ? this.zze.zzf() : this.zze.zzg();
        if (viewZzf == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewZzf.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewZzf.getParent()).removeView(viewZzf);
        }
        viewGroup.addView(viewZzf, ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdH)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    final /* synthetic */ void zza(ViewGroup viewGroup) {
        zzdkk zzdkkVar = this.zze;
        if (zzdkkVar.zzf() != null) {
            boolean z = viewGroup != null;
            if (zzdkkVar.zzc() == 2 || zzdkkVar.zzc() == 1) {
                this.zzb.zzJ(this.zzc.zzf, String.valueOf(zzdkkVar.zzc()), z);
            } else if (zzdkkVar.zzc() == 6) {
                this.zzb.zzJ(this.zzc.zzf, MBridgeConstans.API_REUQEST_CATEGORY_APP, z);
                this.zzb.zzJ(this.zzc.zzf, "1", z);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void zzb(com.google.android.gms.internal.ads.zzdmg r10) {
        /*
            Method dump skipped, instruction units count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdlk.zzb(com.google.android.gms.internal.ads.zzdmg):void");
    }

    public final void zzc(@Nullable zzdmg zzdmgVar) {
        if (zzdmgVar == null || this.zzf == null || zzdmgVar.zzh() == null || !this.zzd.zzg()) {
            return;
        }
        try {
            zzdmgVar.zzh().addView(this.zzf.zza());
        } catch (zzchg e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e2);
        }
    }

    public final void zzd(@Nullable zzdmg zzdmgVar) {
        if (zzdmgVar == null) {
            return;
        }
        Context context = zzdmgVar.zzf().getContext();
        if (com.google.android.gms.ads.internal.util.zzbz.zzh(context, this.zzd.zza)) {
            if (!(context instanceof Activity)) {
                zzcbn.zze("Activity context is needed for policy validator.");
                return;
            }
            if (this.zzg == null || zzdmgVar.zzh() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.zzg.zza(zzdmgVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbz.zzb());
            } catch (zzchg e2) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e2);
            }
        }
    }

    public final void zze(final zzdmg zzdmgVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdli
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(zzdmgVar);
            }
        });
    }

    public final boolean zzf(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    public final boolean zzg(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }
}
