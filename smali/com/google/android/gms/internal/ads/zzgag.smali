###### Class com.google.android.gms.internal.ads.zzgag (com.google.android.gms.internal.ads.zzgag)
.class abstract Lcom/google/android/gms/internal/ads/zzgag;
.super Lcom/google/android/gms/internal/ads/zzfzp$zzi;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zzbb:Lcom/google/android/gms/internal/ads/zzgac;

.field private static final zzbc:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/ads/zzgag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgag;->zzbc:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgad;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgag;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgag;

    const-string v4, "remaining"

    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgad;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_24} :catch_28
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_24} :catch_26

    move-object v8, v0

    goto :goto_30

    :catch_26
    move-exception v1

    goto :goto_29

    :catch_28
    move-exception v1

    :goto_29
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgaf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzgaf;-><init>(Lcom/google/android/gms/internal/ads/zzgae;)V

    move-object v8, v1

    move-object v1, v2

    :goto_30
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgag;->zzbb:Lcom/google/android/gms/internal/ads/zzgac;

    if-eqz v8, :cond_41

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgag;->zzbc:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzp$zzi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgag;->remaining:I

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzgag;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzgag;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgag;->remaining:I

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzgag;Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzgag;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgag;->remaining:I

    return p0
.end method


# virtual methods
.method final zzA()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgag;->zzbb:Lcom/google/android/gms/internal/ads/zzgac;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgac;->zza(Lcom/google/android/gms/internal/ads/zzgag;)I

    move-result v0

    return v0
.end method

.method final zzC()Ljava/util/Set;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgag;->zze(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgag;->zzbb:Lcom/google/android/gms/internal/ads/zzgac;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgac;->zzb(Lcom/google/android/gms/internal/ads/zzgag;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1b
    return-object v0
.end method

.method final zzF()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method abstract zze(Ljava/util/Set;)V
.end method
