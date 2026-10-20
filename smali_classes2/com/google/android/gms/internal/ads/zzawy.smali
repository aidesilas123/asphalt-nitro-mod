###### Class com.google.android.gms.internal.ads.zzawy (com.google.android.gms.internal.ads.zzawy)
.class public final Lcom/google/android/gms/internal/ads/zzawy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzawy;

    if-nez v1, :cond_8

    goto :goto_1a

    :cond_8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzawy;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzawy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzc:I

    if-ne p1, v1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:J

    long-to-int v1, v0

    return v1
.end method
