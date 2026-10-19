package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbfj {
    public static final zzbeh zza = zzbeh.zzd("gads:invalidate_token_at_refresh_start", true);
    public static final zzbeh zzb = zzbeh.zzd("gms:expose_token_for_gma:enabled", true);
    public static final zzbeh zzc = zzbeh.zzb("gads:timeout_for_trustless_token:millis", AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    public static final zzbeh zzd = zzbeh.zzb("gads:cached_token:ttl_millis", 10800000);
}
