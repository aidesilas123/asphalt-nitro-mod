###### Class com.google.android.gms.internal.ads.zzexl (com.google.android.gms.internal.ads.zzexl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzexl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/common/util/concurrent/h0;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/h0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexl;->zza:Lcom/google/common/util/concurrent/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexl;->zzb:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexl;->zza:Lcom/google/common/util/concurrent/h0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexn;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexl;->zzb:Lcom/google/common/util/concurrent/h0;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzexn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
