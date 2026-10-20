###### Class com.google.android.gms.internal.ads.zzfe (com.google.android.gms.internal.ads.zzfe)
.class final Lcom/google/android/gms/internal/ads/zzfe;
.super Landroid/telephony/TelephonyCallback;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfh;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zza:Lcom/google/android/gms/internal/ads/zzfh;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    const/4 v2, 0x4

    if-eq p1, v2, :cond_11

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfe;->zza:Lcom/google/android/gms/internal/ads/zzfh;

    if-eq v1, p1, :cond_17

    goto :goto_19

    :cond_17
    const/16 v0, 0xa

    :goto_19
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfh;->zzc(Lcom/google/android/gms/internal/ads/zzfh;I)V

    return-void
.end method
