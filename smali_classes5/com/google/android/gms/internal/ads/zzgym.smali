###### Class com.google.android.gms.internal.ads.zzgym (com.google.android.gms.internal.ads.zzgym)
.class final Lcom/google/android/gms/internal/ads/zzgym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final zza:Ljava/util/ArrayDeque;

.field private zzb:Lcom/google/android/gms/internal/ads/zzguz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgve;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgyo;

    if-eqz p2, :cond_22

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyo;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyo;->zzf()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgym;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyo;->zzg(Lcom/google/android/gms/internal/ads/zzgyo;)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgym;->zzb(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzguz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgym;->zzb:Lcom/google/android/gms/internal/ads/zzguz;

    return-void

    :cond_22
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgym;->zza:Ljava/util/ArrayDeque;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzguz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgym;->zzb:Lcom/google/android/gms/internal/ads/zzguz;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzguz;
    .registers 3

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyo;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgym;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyo;->zzg(Lcom/google/android/gms/internal/ads/zzgyo;)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object p1

    goto :goto_0

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzguz;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgym;->zzb:Lcom/google/android/gms/internal/ads/zzguz;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgym;->zza()Lcom/google/android/gms/internal/ads/zzguz;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzguz;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgym;->zzb:Lcom/google/android/gms/internal/ads/zzguz;

    if-eqz v0, :cond_29

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgym;->zza:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_26

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgym;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgyo;->zzB(Lcom/google/android/gms/internal/ads/zzgyo;)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgym;->zzb(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzguz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgve;->zzd()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_26
    :goto_26
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgym;->zzb:Lcom/google/android/gms/internal/ads/zzguz;

    return-object v0

    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
