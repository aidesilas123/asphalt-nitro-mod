###### Class com.google.android.gms.internal.ads.zzfzk (com.google.android.gms.internal.ads.zzfzk)
.class public final Lcom/google/android/gms/internal/ads/zzfzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(J)B
    .registers 7

    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "out of range: %s"

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfty;->zzg(ZLjava/lang/String;J)V

    long-to-int p1, p0

    int-to-byte p0, p1

    return p0
.end method
