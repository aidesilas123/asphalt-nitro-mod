package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeop implements zzeuy {
    private final zzgbl zza;
    private final zzgbl zzb;
    private final Context zzc;
    private final zzfeq zzd;

    @Nullable
    private final View zze;

    public zzeop(zzgbl zzgblVar, zzgbl zzgblVar2, Context context, zzfeq zzfeqVar, @Nullable ViewGroup viewGroup) {
        this.zza = zzgblVar;
        this.zzb = zzgblVar2;
        this.zzc = context;
        this.zzd = zzfeqVar;
        this.zze = viewGroup;
    }

    private final List zze() {
        ArrayList arrayList = new ArrayList();
        View view = this.zze;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", iIndexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        zzbdc.zza(this.zzc);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkn)).booleanValue() ? this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeon
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        }) : this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzd();
            }
        });
    }

    final /* synthetic */ zzeoq zzc() throws Exception {
        return new zzeoq(this.zzc, this.zzd.zze, zze());
    }

    final /* synthetic */ zzeoq zzd() throws Exception {
        return new zzeoq(this.zzc, this.zzd.zze, zze());
    }
}
