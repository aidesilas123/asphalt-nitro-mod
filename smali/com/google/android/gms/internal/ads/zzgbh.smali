###### Class com.google.android.gms.internal.ads.zzgbh (com.google.android.gms.internal.ads.zzgbh)
.class final Lcom/google/android/gms/internal/ads/zzgbh;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgbk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbk;Lcom/google/android/gms/internal/ads/zzgbg;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbh;->zza:Lcom/google/android/gms/internal/ads/zzgbk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgbh;Ljava/lang/Thread;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbh;->zza:Lcom/google/android/gms/internal/ads/zzgbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
