package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.json.hc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "PoolConfigurationCreator")
public final class zzfgk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfgk> CREATOR = new zzfgl();
    public final Context zza;
    public final zzfgh zzb;

    @SafeParcelable.Field(id = 2)
    public final int zzc;

    @SafeParcelable.Field(id = 3)
    public final int zzd;

    @SafeParcelable.Field(id = 4)
    public final int zze;

    @SafeParcelable.Field(id = 5)
    public final String zzf;
    public final int zzg;
    private final zzfgh[] zzh;

    @SafeParcelable.Field(getter = "getFormatInt", id = 1)
    private final int zzi;

    @SafeParcelable.Field(getter = "getPoolDiscardStrategyInt", id = 6)
    private final int zzj;

    @SafeParcelable.Field(getter = "getPrecacheStartTriggerInt", id = 7)
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    @SafeParcelable.Constructor
    public zzfgk(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) int i5, @SafeParcelable.Param(id = 7) int i6) {
        zzfgh[] zzfghVarArrValues = zzfgh.values();
        this.zzh = zzfghVarArrValues;
        int[] iArrZza = zzfgi.zza();
        this.zzl = iArrZza;
        int[] iArrZza2 = zzfgj.zza();
        this.zzm = iArrZza2;
        this.zza = null;
        this.zzi = i;
        this.zzb = zzfghVarArrValues[i];
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = str;
        this.zzj = i5;
        this.zzg = iArrZza[i5];
        this.zzk = i6;
        int i7 = iArrZza2[i6];
    }

    private zzfgk(Context context, zzfgh zzfghVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzh = zzfgh.values();
        this.zzl = zzfgi.zza();
        this.zzm = zzfgj.zza();
        this.zza = context;
        this.zzi = zzfghVar.ordinal();
        this.zzb = zzfghVar;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = str;
        int i4 = 2;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else if (!"lru".equals(str2) && "lfu".equals(str2)) {
            i4 = 3;
        }
        this.zzg = i4;
        this.zzj = i4 - 1;
        hc.f6150g.equals(str3);
        this.zzk = 0;
    }

    public static zzfgk zza(zzfgh zzfghVar, Context context) {
        if (zzfghVar == zzfgh.Rewarded) {
            return new zzfgk(context, zzfghVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgs)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgy)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgA)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgC), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgu), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgw));
        }
        if (zzfghVar == zzfgh.Interstitial) {
            return new zzfgk(context, zzfghVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgt)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgz)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgB)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgD), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgv), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgx));
        }
        if (zzfghVar != zzfgh.AppOpen) {
            return null;
        }
        return new zzfgk(context, zzfghVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgG)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgI)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgJ)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgE), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgF), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgH));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzi;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 4, this.zze);
        SafeParcelWriter.writeString(parcel, 5, this.zzf, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zzj);
        SafeParcelWriter.writeInt(parcel, 7, this.zzk);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
