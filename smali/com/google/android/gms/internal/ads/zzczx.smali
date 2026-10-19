###### Class com.google.android.gms.internal.ads.zzczx (com.google.android.gms.internal.ads.zzczx)
.class public final Lcom/google/android/gms/internal/ads/zzczx;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczz;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzctr;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzczw;-><init>(Lcom/google/android/gms/internal/ads/zzctr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;->zzt(Lcom/google/android/gms/internal/ads/zzddu;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzczw (com.google.android.gms.internal.ads.zzczw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzczw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzctr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzctr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzczz;->zza(Lcom/google/android/gms/internal/ads/zzctr;)V

    return-void
.end method
