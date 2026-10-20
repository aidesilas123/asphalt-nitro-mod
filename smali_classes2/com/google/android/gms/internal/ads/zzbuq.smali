###### Class com.google.android.gms.internal.ads.zzbuq (com.google.android.gms.internal.ads.zzbuq)
.class final Lcom/google/android/gms/internal/ads/zzbuq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic zza:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbus;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbus;->zze(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_b

    :catchall_6
    :try_start_6
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzg(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_19

    goto :goto_1c

    :cond_19
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_1c
    throw v0
.end method
