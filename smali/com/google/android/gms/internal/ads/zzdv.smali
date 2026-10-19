###### Class com.google.android.gms.internal.ads.zzdv (com.google.android.gms.internal.ads.zzdv)
.class public final Lcom/google/android/gms/internal/ads/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfwu;

.field private final zzb:Ljava/util/List;

.field private zzc:[Ljava/nio/ByteBuffer;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdw;

.field private zze:Lcom/google/android/gms/internal/ads/zzdw;

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    return-void
.end method

.method private final zzi()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final zzj(Ljava/nio/ByteBuffer;)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v3

    if-gt v1, v3, :cond_7e

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzh()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v4

    if-ge v1, v4, :cond_7c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()V

    goto :goto_7c

    :cond_3f
    if-lez v1, :cond_48

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    goto :goto_52

    :cond_48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_50

    move-object v5, p1

    goto :goto_52

    :cond_50
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    :goto_52
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zze(Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    cmp-long v9, v6, v4

    if-gtz v9, :cond_7b

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v8, 0x0

    :cond_7b
    :goto_7b
    or-int/2addr v2, v8

    :cond_7c
    :goto_7c
    move v1, v3

    goto :goto_3

    :cond_7e
    if-eqz v2, :cond_81

    goto :goto_1

    :cond_81
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdv;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ne v1, v3, :cond_36

    const/4 v1, 0x0

    :goto_1b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_32

    return v2

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_35
    return v0

    :cond_36
    return v2
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwu;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdx;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzdw;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    move-object p1, v2

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    return-object p1

    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdx;

    const-string v1, "Unhandled input format:"

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdw;)V

    throw v0
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzh()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzj(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final zzc()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzc()V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    :goto_38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v1

    if-gt v0, v1, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    return-void
.end method

.method public final zzd()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    if-eqz v0, :cond_b

    goto :goto_1a

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final zze(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzh()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdv;->zzj(Ljava/nio/ByteBuffer;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public final zzf()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzc()V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdv;->zze:Lcom/google/android/gms/internal/ads/zzdw;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    return-void
.end method

.method public final zzg()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzf:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzh()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzc:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdv;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
