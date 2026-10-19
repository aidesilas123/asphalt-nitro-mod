###### Class com.google.android.gms.internal.ads.zzgaa (com.google.android.gms.internal.ads.zzgaa)
.class abstract Lcom/google/android/gms/internal/ads/zzgaa;
.super Lcom/google/android/gms/internal/ads/zzgag;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzfwp;

.field private final zzc:Z

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgaa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgaa;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwp;ZZ)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgag;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zze:Z

    return-void
.end method

.method private final zzG(ILjava/util/concurrent/Future;)V
    .registers 3

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgbb;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzf(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_b

    :catch_a
    move-exception p1

    :goto_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzI(Ljava/lang/Throwable;)V

    return-void

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzI(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzfwp;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgag;->zzA()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfty;->zzj(ZLjava/lang/Object;)V

    if-nez v0, :cond_39

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwp;->zze()Lcom/google/android/gms/internal/ads/zzfyu;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzG(ILjava/util/concurrent/Future;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgag;->zzF()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzu()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzy(I)V

    :cond_39
    return-void
.end method

.method private final zzI(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzc:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzd(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgag;->zzC()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzK(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzJ(Ljava/lang/Throwable;)V

    return-void

    :cond_1c
    :goto_1c
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_23

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzJ(Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method private static zzJ(Ljava/lang/Throwable;)V
    .registers 8

    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_8

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_a

    :cond_8
    const-string v0, "Input Future failed with Error"

    :goto_a
    move-object v5, v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgaa;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzK(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3

    :goto_0
    if-eqz p1, :cond_f

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final zza()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "futures="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzy(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzt()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zze()Lcom/google/android/gms/internal/ads/zzfyu;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_19

    :cond_29
    return-void
.end method

.method final zze(Ljava/util/Set;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzl()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzK(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_13
    return-void
.end method

.method abstract zzf(ILjava/lang/Object;)V
.end method

.method abstract zzu()V
.end method

.method final zzv()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzu()V

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzc:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zze()Lcom/google/android/gms/internal/ads/zzfyu;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/h0;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>(Lcom/google/android/gms/internal/ads/zzgaa;Lcom/google/common/util/concurrent/h0;I)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgap;->zza:Lcom/google/android/gms/internal/ads/zzgap;

    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_1a

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zze:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfzz;-><init>(Lcom/google/android/gms/internal/ads/zzgaa;Lcom/google/android/gms/internal/ads/zzfwp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zze()Lcom/google/android/gms/internal/ads/zzfyu;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/h0;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgap;->zza:Lcom/google/android/gms/internal/ads/zzgap;

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_47

    :cond_59
    return-void
.end method

.method final synthetic zzw(Lcom/google/common/util/concurrent/h0;I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->cancel(Z)Z

    goto :goto_11

    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzG(ILjava/util/concurrent/Future;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzH(Lcom/google/android/gms/internal/ads/zzfwp;)V

    return-void

    :catchall_15
    move-exception p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzH(Lcom/google/android/gms/internal/ads/zzfwp;)V

    throw p1
.end method

.method final synthetic zzx(Lcom/google/android/gms/internal/ads/zzfwp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzH(Lcom/google/android/gms/internal/ads/zzfwp;)V

    return-void
.end method

.method zzy(I)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgaa;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzy (com.google.android.gms.internal.ads.zzfzy)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgaa;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/h0;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgaa;Lcom/google/common/util/concurrent/h0;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/common/util/concurrent/h0;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/common/util/concurrent/h0;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzw(Lcom/google/common/util/concurrent/h0;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzz (com.google.android.gms.internal.ads.zzfzz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgaa;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfwp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgaa;Lcom/google/android/gms/internal/ads/zzfwp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzz;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzz;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzz;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzz;->zzb:Lcom/google/android/gms/internal/ads/zzfwp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzx(Lcom/google/android/gms/internal/ads/zzfwp;)V

    return-void
.end method
