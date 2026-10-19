package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcbr {
    public static Context zza(Context context) throws zzcbq {
        return zzc(context).getModuleContext();
    }

    public static Object zzb(Context context, String str, zzcbp zzcbpVar) throws zzcbq {
        try {
            return zzcbpVar.zza(zzc(context).instantiate(str));
        } catch (Exception e2) {
            throw new zzcbq(e2);
        }
    }

    private static DynamiteModule zzc(Context context) throws zzcbq {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID);
        } catch (Exception e2) {
            throw new zzcbq(e2);
        }
    }
}
