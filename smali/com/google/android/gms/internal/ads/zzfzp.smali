###### Class com.google.android.gms.internal.ads.zzfzp (com.google.android.gms.internal.ads.zzfzp)
.class public abstract Lcom/google/android/gms/internal/ads/zzfzp;
.super Lcom/google/android/gms/internal/ads/zzgcd;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgcd;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final zzaZ:Ljava/util/logging/Logger;

.field private static final zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

.field private static final zzbd:Ljava/lang/Object;

.field static final zzd:Z


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    :try_start_2
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v1, 0x0

    :goto_10
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzfzp;->zzd:Z

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzp;->zzaZ:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_1f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzj;-><init>(Lcom/google/android/gms/internal/ads/zzfzt;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_29
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_27

    move-object v5, v1

    move-object v9, v5

    goto :goto_69

    :catch_27
    move-exception v2

    goto :goto_2a

    :catch_29
    move-exception v2

    :goto_2a
    :try_start_2a
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfzp$zze;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "thread"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "next"

    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/android/gms/internal/ads/zzfzp;

    const-string v6, "waiters"

    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/android/gms/internal/ads/zzfzp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    const-string v7, "listeners"

    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/android/gms/internal/ads/zzfzp;

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfzp$zze;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_5a} :catch_60
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_5a} :catch_5e

    move-object v5, v2

    move-object v2, v9

    move-object v9, v1

    goto :goto_69

    :catch_5e
    move-exception v0

    goto :goto_61

    :catch_60
    move-exception v0

    :goto_61
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfzp$zzg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzg;-><init>(Lcom/google/android/gms/internal/ads/zzfzr;)V

    move-object v9, v0

    move-object v5, v2

    move-object v2, v3

    :goto_69
    sput-object v2, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    if-eqz v9, :cond_89

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfzp;->zzaZ:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "com.google.common.util.concurrent.AbstractFuture"

    const-string v1, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzbd:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgcd;-><init>()V

    return-void
.end method

.method private static final zzA(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    if-nez v0, :cond_18

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzbd:Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0

    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;->zzb:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzd:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private static zze(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;
    .registers 8

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzh;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    if-eqz v0, :cond_23

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzc:Z

    if-eqz v1, :cond_23

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzd:Ljava/lang/Throwable;

    if-eqz p0, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_23

    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    :cond_23
    :goto_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_27
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzgcd;

    if-eqz v1, :cond_3b

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcd;->zzl()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_35

    goto :goto_3b

    :cond_35
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_3b
    :goto_3b
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzfzp;->zzd:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4c

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_4c
    :try_start_4c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_70

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_70
    if-nez v3, :cond_74

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp;->zzbd:Ljava/lang/Object;
    :try_end_74
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4c .. :try_end_74} :catch_9c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4c .. :try_end_74} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_74} :catch_77
    .catch Ljava/lang/Error; {:try_start_4c .. :try_end_74} :catch_75

    :cond_74
    return-object v3

    :catch_75
    move-exception p0

    goto :goto_78

    :catch_77
    move-exception p0

    :goto_78
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_7e
    move-exception v0

    if-nez v1, :cond_96

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_96
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_9c
    move-exception v3

    if-eqz v1, :cond_b2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    :cond_b2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1b
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-nez v0, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1a
    throw p0

    :catch_1b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static bridge synthetic zzg()Lcom/google/android/gms/internal/ads/zzfzp$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    return-object v0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->listeners:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzfzp;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zze(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp;->listeners:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzfzp;Z)V
    .registers 2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    return-void
.end method

.method private final zzu(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzf(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_13

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_13
    if-ne v1, p0, :cond_1b

    const-string v1, "this future"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_39} :catch_53
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_39} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_4d
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_53
    move-exception v1

    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zzv(Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    const-string v3, "]"

    if-eqz v2, :cond_21

    const-string v2, ", setFuture=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzw(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfun;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_29} :catch_2c
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_3b

    :catch_2a
    move-exception v1

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3b
    if-eqz v1, :cond_48

    const-string v2, ", info=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isDone()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzu(Ljava/lang/StringBuilder;)V

    :cond_58
    return-void
.end method

.method private final zzw(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-ne p2, p0, :cond_8

    :try_start_2
    const-string p2, "this future"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p2

    goto :goto_f

    :catch_e
    move-exception p2

    :goto_f
    const-string v0, "Exception thrown from implementation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V
    .registers 7

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzb(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_18

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_15
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    goto :goto_a

    :cond_18
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzq()V

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zza(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    move-result-object p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_2b
    if-eqz v1, :cond_34

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    move-object p0, v1

    move-object v1, p1

    goto :goto_2b

    :cond_34
    :goto_34
    if-eqz p0, :cond_63

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzb:Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    if-eqz v2, :cond_59

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_61

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zze(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    const/4 p1, 0x0

    goto :goto_2

    :cond_59
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_61
    move-object p0, v1

    goto :goto_34

    :cond_63
    return-void
.end method

.method private static zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzaZ:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    if-eq p1, v1, :cond_28

    move-object v1, v0

    :goto_a
    if-eqz p1, :cond_28

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_14

    move-object v1, p1

    goto :goto_26

    :cond_14
    if-eqz v1, :cond_1d

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_26

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3

    :cond_26
    :goto_26
    move-object p1, v2

    goto :goto_a

    :cond_28
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfty;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfty;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->listeners:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    if-eq v0, v1, :cond_2c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzp$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1b
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->listeners:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfzp$zzd;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    if-ne v0, v2, :cond_1b

    :cond_2c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzy(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    or-int/2addr v1, v4

    if-eqz v1, :cond_5f

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzfzp;->zzd:Z

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_29

    :cond_1f
    if-eqz p1, :cond_24

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    goto :goto_26

    :cond_24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    :goto_26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_29
    const/4 v5, 0x0

    move-object v4, p0

    :cond_2b
    :goto_2b
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v6, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    if-eqz v4, :cond_56

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzh;

    if-eqz v4, :cond_53

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfzp;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    if-nez v0, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    :goto_4c
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    or-int/2addr v5, v6

    if-eqz v5, :cond_56

    const/4 v5, 0x1

    goto :goto_2b

    :cond_53
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_56
    const/4 v2, 0x1

    goto :goto_5f

    :cond_58
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    if-nez v6, :cond_2b

    move v2, v5

    :cond_5f
    :goto_5f
    return v2
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    if-eq v0, v3, :cond_5a

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfzp$zzk;-><init>()V

    :cond_25
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzz(Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    if-ne v0, v4, :cond_25

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_64
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_17d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    :goto_18
    instance-of v10, v6, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_97

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    sget-object v15, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    if-eq v6, v15, :cond_8d

    new-instance v15, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzfzp$zzk;-><init>()V

    :cond_41
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z

    move-result v6

    if-eqz v6, :cond_87

    :cond_4c
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    if-eqz v4, :cond_64

    const/4 v5, 0x1

    goto :goto_65

    :cond_64
    const/4 v5, 0x0

    :goto_65
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_70

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4c

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzfzp;->zzz(Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    goto :goto_97

    :cond_7e
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzfzp;->zzz(Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_87
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfzp;->waiters:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    if-ne v6, v7, :cond_41

    :cond_8d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_97
    :goto_97
    cmp-long v6, v4, v9

    if-lez v6, :cond_c0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    if-eqz v4, :cond_a1

    const/4 v5, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v5, 0x0

    :goto_a2
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzp;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_ad
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_ba

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_97

    :cond_ba
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_c0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzp;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_151

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_112

    cmp-long v9, v4, v13

    if-lez v9, :cond_111

    goto :goto_112

    :cond_111
    const/4 v8, 0x0

    :cond_112
    :goto_112
    if-lez v3, :cond_135

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_131

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_131
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_135
    if-eqz v8, :cond_14b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14b
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isDone()Z

    move-result v1

    if-eqz v1, :cond_163

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_163
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    return v0
.end method

.method public isDone()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isDone()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzu(Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :cond_57
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzv(Ljava/lang/StringBuilder;)V

    :goto_5a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza()Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remaining delay=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzb()V
    .registers 1

    return-void
.end method

.method protected zzc(Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzp;->zzbd:Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    const/4 p1, 0x1

    return p1

    :cond_13
    return v0
.end method

.method protected zzd(Ljava/lang/Throwable;)Z
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    const/4 p1, 0x1

    return p1

    :cond_17
    return v0
.end method

.method protected final zzl()Ljava/lang/Throwable;
    .registers 3

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzh;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;->zzb:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzq()V
    .registers 1

    return-void
.end method

.method final zzr(Ljava/util/concurrent/Future;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzt()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_13
    return-void
.end method

.method protected final zzs(Lcom/google/common/util/concurrent/h0;)Z
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_47

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zze(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzx(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    return v2

    :cond_20
    return v1

    :cond_21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zzf;-><init>(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/common/util/concurrent/h0;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :try_start_2e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgap;->zza:Lcom/google/android/gms/internal/ads/zzgap;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_33} :catch_36
    .catch Ljava/lang/Error; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_44

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    :try_start_37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Error; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_3f

    :catch_3d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzc;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    :goto_3f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzp;->zzba:Lcom/google/android/gms/internal/ads/zzfzp$zza;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_44
    return v2

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    :cond_47
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    if-eqz v2, :cond_52

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzc:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_52
    return v1
.end method

.method protected final zzt()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzc:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zza (com.google.android.gms.internal.ads.zzfzp$zza)
.class abstract Lcom/google/android/gms/internal/ads/zzfzp$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;
.end method

.method abstract zzb(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;
.end method

.method abstract zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
.end method

.method abstract zzd(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Ljava/lang/Thread;)V
.end method

.method abstract zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z
.end method

.method abstract zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzb (com.google.android.gms.internal.ads.zzfzp$zzb)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;


# instance fields
.field final zzc:Z

.field final zzd:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzfzp;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    return-void

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzb;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzb;->zzd:Ljava/lang/Throwable;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzc (com.google.android.gms.internal.ads.zzfzp$zzc)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfzp$zzc;


# instance fields
.field final zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzc$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp$zzc$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzc;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzc;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzc;->zzb:Ljava/lang/Throwable;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzc.AnonymousClass1 (com.google.android.gms.internal.ads.zzfzp$zzc$1)
.class Lcom/google/android/gms/internal/ads/zzfzp$zzc$1;
.super Ljava/lang/Throwable;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzfzp$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    const-string p1, "Failure occurred while trying to finish a future."

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method

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

###### Class com.google.android.gms.internal.ads.zzfzp.zze (com.google.android.gms.internal.ads.zzfzp$zze)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zze;
.super Lcom/google/android/gms/internal/ads/zzfzp$zza;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzfzp$zzk;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzfzp$zzk;",
            "Lcom/google/android/gms/internal/ads/zzfzp$zzk;",
            ">;"
        }
    .end annotation
.end field

.field final zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            "Lcom/google/android/gms/internal/ads/zzfzp$zzk;",
            ">;"
        }
    .end annotation
.end field

.field final zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            "Lcom/google/android/gms/internal/ads/zzfzp$zzd;",
            ">;"
        }
    .end annotation
.end field

.field final zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    return-object p1
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Ljava/lang/Thread;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfzq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfzq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfzq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzf (com.google.android.gms.internal.ads.zzfzp$zzf)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfzp<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/common/util/concurrent/h0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzj(Lcom/google/android/gms/internal/ads/zzfzp;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_21

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zzb:Lcom/google/common/util/concurrent/h0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzk(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzp;->zzg()Lcom/google/android/gms/internal/ads/zzfzp$zza;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzp$zzf;->zza:Lcom/google/android/gms/internal/ads/zzfzp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzp(Lcom/google/android/gms/internal/ads/zzfzp;Z)V

    :cond_21
    :goto_21
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzg (com.google.android.gms.internal.ads.zzfzp$zzg)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzg;
.super Lcom/google/android/gms/internal/ads/zzfzp$zza;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzr;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzh(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    move-result-object v0

    if-eq v0, p2, :cond_a

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzm(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)V

    :cond_a
    monitor-exit p1

    return-object v0

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzi(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    move-result-object v0

    if-eq v0, p2, :cond_a

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzo(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    :cond_a
    monitor-exit p1

    return-object v0

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->next:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Ljava/lang/Thread;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z
    .registers 5

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzh(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzm(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_d
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzj(Lcom/google/android/gms/internal/ads/zzfzp;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzn(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_d
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z
    .registers 5

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzi(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzo(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_d
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzh (com.google.android.gms.internal.ads.zzfzp$zzh)
.class interface abstract Lcom/google/android/gms/internal/ads/zzfzp$zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract synthetic addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzi (com.google.android.gms.internal.ads.zzfzp$zzi)
.class abstract Lcom/google/android/gms/internal/ads/zzfzp$zzi;
.super Lcom/google/android/gms/internal/ads/zzfzp;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfzp$zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfzp<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzfzp$zzh<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzp;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzj (com.google.android.gms.internal.ads.zzfzp$zzj)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzj;
.super Lcom/google/android/gms/internal/ads/zzfzp$zza;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Lsun/misc/Unsafe;

.field static final zzb:J

.field static final zzc:J

.field static final zzd:J

.field static final zze:J

.field static final zzf:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    :try_start_2
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    :try_start_7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzp$zzj$1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzj$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_12
    .catch Ljava/security/PrivilegedActionException; {:try_start_7 .. :try_end_12} :catch_5c

    :goto_12
    :try_start_12
    const-class v2, Lcom/google/android/gms/internal/ads/zzfzp;

    const-string v3, "waiters"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzc:J

    const-string v3, "listeners"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzb:J

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzd:J

    const-string v2, "thread"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zze:J

    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzf:J

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;
    :try_end_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_52} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    throw v0

    :catch_55
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzt;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;
    .registers 5

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzh(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzd;

    move-result-object v0

    if-ne p2, v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_d
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;
    .registers 5

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzi(Lcom/google/android/gms/internal/ads/zzfzp;)Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    move-result-object v0

    if-ne p2, v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_d
    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzf:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Ljava/lang/Thread;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zze:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzd;Lcom/google/android/gms/internal/ads/zzfzp$zzd;)Z
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzb:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzf(Lcom/google/android/gms/internal/ads/zzfzp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzd:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzfzp;Lcom/google/android/gms/internal/ads/zzfzp$zzk;Lcom/google/android/gms/internal/ads/zzfzp$zzk;)Z
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfzp$zzj;->zzc:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzj.AnonymousClass1 (com.google.android.gms.internal.ads.zzfzp$zzj$1)
.class Lcom/google/android/gms/internal/ads/zzfzp$zzj$1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzfzp$zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic run()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzfzp.zzk (com.google.android.gms.internal.ads.zzfzp$zzk)
.class final Lcom/google/android/gms/internal/ads/zzfzp$zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zzk;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp$zzk;->zza:Lcom/google/android/gms/internal/ads/zzfzp$zzk;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzp;->zzg()Lcom/google/android/gms/internal/ads/zzfzp$zza;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfzp$zza;->zzd(Lcom/google/android/gms/internal/ads/zzfzp$zzk;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
