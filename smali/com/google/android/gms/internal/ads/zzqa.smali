###### Class com.google.android.gms.internal.ads.zzqa (com.google.android.gms.internal.ads.zzqa)
.class final Lcom/google/android/gms/internal/ads/zzqa;
.super Lcom/google/android/gms/internal/ads/zzdz;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zzd:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/nio/ByteBuffer;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzb:Lcom/google/android/gms/internal/ads/zzdw;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdw;->zze:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzc:Lcom/google/android/gms/internal/ads/zzdw;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdw;->zze:I

    mul-int v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1e
    if-ge v1, v2, :cond_38

    array-length v4, v0

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_32

    aget v6, v0, v5

    add-int/2addr v6, v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdz;->zzb:Lcom/google/android/gms/internal/ads/zzdw;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdw;->zze:I

    add-int/2addr v1, v4

    goto :goto_1e

    :cond_38
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdx;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:[I

    if-nez v0, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    return-object p1

    :cond_7
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdw;->zzd:I

    const-string v2, "Unhandled input format:"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3e

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdw;->zzc:I

    array-length v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const/4 v4, 0x0

    :goto_19
    array-length v7, v0

    if-ge v4, v7, :cond_31

    aget v7, v0, v4

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzdw;->zzc:I

    if-ge v7, v8, :cond_2b

    if-eq v7, v4, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    or-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdw;)V

    throw v0

    :cond_31
    if-eqz v1, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdw;->zzb:I

    invoke-direct {v0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(III)V

    goto :goto_3d

    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    :goto_3d
    return-object v0

    :cond_3e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdw;)V

    throw v0
.end method

.method protected final zzk()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:[I

    return-void
.end method

.method protected final zzm()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:[I

    return-void
.end method

.method public final zzo([I)V
    .registers 2
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:[I

    return-void
.end method
