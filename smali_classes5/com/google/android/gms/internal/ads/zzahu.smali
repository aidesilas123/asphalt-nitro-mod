###### Class com.google.android.gms.internal.ads.zzahu (com.google.android.gms.internal.ads.zzahu)
.class final Lcom/google/android/gms/internal/ads/zzahu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:[B

.field private final zzc:J

.field private final zzd:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:[B

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzd:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzahu;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzahu;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzd:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzahu;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzahu;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:[B

    return-object p0
.end method
