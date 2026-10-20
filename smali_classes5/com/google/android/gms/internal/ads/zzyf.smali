###### Class com.google.android.gms.internal.ads.zzyf (com.google.android.gms.internal.ads.zzyf)
.class public final Lcom/google/android/gms/internal/ads/zzyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zza:I

.field public final zzb:[Lcom/google/android/gms/internal/ads/zzmc;

.field public final zzc:[Lcom/google/android/gms/internal/ads/zzxy;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzdn;

.field public final zze:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzmc;[Lcom/google/android/gms/internal/ads/zzxy;Lcom/google/android/gms/internal/ads/zzdn;Ljava/lang/Object;)V
    .registers 5
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {p2}, [Lcom/google/android/gms/internal/ads/zzxy;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/ads/zzxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[Lcom/google/android/gms/internal/ads/zzxy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzd:Lcom/google/android/gms/internal/ads/zzdn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyf;->zze:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzyf;I)Z
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzyf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[Lcom/google/android/gms/internal/ads/zzmc;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[Lcom/google/android/gms/internal/ads/zzmc;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[Lcom/google/android/gms/internal/ads/zzxy;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzyf;->zzc:[Lcom/google/android/gms/internal/ads/zzxy;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    return v0
.end method

.method public final zzb(I)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzb:[Lcom/google/android/gms/internal/ads/zzmc;

    aget-object p1, v0, p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
