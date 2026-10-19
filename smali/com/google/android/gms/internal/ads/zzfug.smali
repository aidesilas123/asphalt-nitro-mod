###### Class com.google.android.gms.internal.ads.zzfug (com.google.android.gms.internal.ads.zzfug)
.class final Lcom/google/android/gms/internal/ads/zzfug;
.super Lcom/google/android/gms/internal/ads/zzfuj;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfuh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuh;Lcom/google/android/gms/internal/ads/zzful;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfug;->zza:Lcom/google/android/gms/internal/ads/zzfuh;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfuj;-><init>(Lcom/google/android/gms/internal/ads/zzful;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .registers 2

    return p1
.end method

.method public final zzd(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuj;->zzb:Ljava/lang/CharSequence;

    add-int/lit16 p1, p1, 0xfa0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method
