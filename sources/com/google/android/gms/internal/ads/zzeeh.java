package com.google.android.gms.internal.ads;

import android.app.Activity;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeeh extends zzefc {
    private final Activity zza;

    @Nullable
    private final com.google.android.gms.ads.internal.overlay.zzl zzb;

    @Nullable
    private final String zzc;

    @Nullable
    private final String zzd;

    /* synthetic */ zzeeh(Activity activity, com.google.android.gms.ads.internal.overlay.zzl zzlVar, String str, String str2, zzeeg zzeegVar) {
        this.zza = activity;
        this.zzb = zzlVar;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzefc) {
            zzefc zzefcVar = (zzefc) obj;
            if (this.zza.equals(zzefcVar.zza()) && ((zzlVar = this.zzb) != null ? zzlVar.equals(zzefcVar.zzb()) : zzefcVar.zzb() == null) && ((str = this.zzc) != null ? str.equals(zzefcVar.zzc()) : zzefcVar.zzc() == null) && ((str2 = this.zzd) != null ? str2.equals(zzefcVar.zzd()) : zzefcVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzb;
        int iHashCode2 = ((iHashCode * 1000003) ^ (zzlVar == null ? 0 : zzlVar.hashCode())) * 1000003;
        String str = this.zzc;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.zzd;
        return iHashCode3 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzb;
        return "OfflineUtilsParams{activity=" + this.zza.toString() + ", adOverlay=" + String.valueOf(zzlVar) + ", gwsQueryId=" + this.zzc + ", uri=" + this.zzd + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzefc
    public final Activity zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzefc
    @Nullable
    public final com.google.android.gms.ads.internal.overlay.zzl zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzefc
    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzefc
    @Nullable
    public final String zzd() {
        return this.zzd;
    }
}
