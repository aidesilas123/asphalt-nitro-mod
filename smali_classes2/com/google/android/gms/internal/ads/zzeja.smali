###### Class com.google.android.gms.internal.ads.zzeja (com.google.android.gms.internal.ads.zzeja)
.class final Lcom/google/android/gms/internal/ads/zzeja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzb:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgbt;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzd:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zze:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzejq;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzg:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzejp;

.field private zzk:Lcom/google/android/gms/internal/ads/zzfdu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfeh;Lcom/google/android/gms/internal/ads/zzejp;Lcom/google/android/gms/internal/ads/zzgbt;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Ljava/util/Set;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Lcom/google/android/gms/internal/ads/zzfeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeg;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdy;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzi:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzj:Lcom/google/android/gms/internal/ads/zzejp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzgbt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejw;->zzc(Lcom/google/android/gms/internal/ads/zzfeh;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzh:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Lcom/google/android/gms/internal/ads/zzfeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeg;->zza:Ljava/util/List;

    const/4 p2, 0x0

    :goto_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_53

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final declared-synchronized zzf()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzj:Lcom/google/android/gms/internal/ads/zzejp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzk:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzejp;->zzi(Lcom/google/android/gms/internal/ads/zzfdu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzf:Lcom/google/android/gms/internal/ads/zzejq;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzgbt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgbt;->zzc(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_22

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzgbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzh:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzejt;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzejt;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzd(Ljava/lang/Throwable;)Z
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzg(Z)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_25

    :cond_22
    const v2, 0x7fffffff

    :goto_25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p1, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Ljava/util/Set;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfdu;->zzat:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_4b

    if-ge v1, v3, :cond_40

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_40
    :try_start_40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4b

    if-le v1, v2, :cond_7

    :cond_48
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzh()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_25

    :cond_22
    const v1, 0x7fffffff

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_36

    if-ge v1, v2, :cond_7

    const/4 v0, 0x1

    :goto_32
    monitor-exit p0

    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_32

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzi()Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeja;->zzg(Z)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzh()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_14

    if-eqz v1, :cond_f

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzfdu;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfdu;->zzat:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdu;
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_3c

    monitor-exit p0

    return-object v0

    :cond_39
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Ljava/util/Set;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfdu;->zzat:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzd()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzi()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzf()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_20

    monitor-exit p0

    return-void

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzejq;Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzd()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzejq;->zzq()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_58

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_23

    :cond_20
    const v0, 0x7fffffff

    :goto_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I

    if-le v1, v2, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzj:Lcom/google/android/gms/internal/ads/zzejp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzejp;->zzm(Lcom/google/android/gms/internal/ads/zzfdu;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_58

    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzf:Lcom/google/android/gms/internal/ads/zzejq;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzj:Lcom/google/android/gms/internal/ads/zzejp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzk:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzejp;->zzm(Lcom/google/android/gms/internal/ads/zzfdu;)V

    :cond_41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzf:Lcom/google/android/gms/internal/ads/zzejq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzk:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzi()Z

    move-result p1

    if-nez p1, :cond_56

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzf()V
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_58

    monitor-exit p0

    return-void

    :cond_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzd()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzgbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->isDone()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zze()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeja;->zzd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzi:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzeja;->zzg(Z)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1b
    monitor-exit p0

    return v1

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
