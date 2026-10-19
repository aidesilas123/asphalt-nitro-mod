###### Class com.google.android.gms.internal.ads.zzfzp.zzd (com.google.android.gms.internal.ads.zzfzp$zzd)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfzp$zzd;


# instance fields
.field next:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

.field final zzb:Ljava/lang/Runnable;

.field final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzp$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzb:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzb:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method
