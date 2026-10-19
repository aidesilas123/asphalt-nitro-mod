###### Class com.google.android.gms.internal.ads.zzeon (com.google.android.gms.internal.ads.zzeon)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeop;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeop;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zza:Lcom/google/android/gms/internal/ads/zzeop;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->zza:Lcom/google/android/gms/internal/ads/zzeop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeop;->zzc()Lcom/google/android/gms/internal/ads/zzeoq;

    move-result-object v0

    return-object v0
.end method
