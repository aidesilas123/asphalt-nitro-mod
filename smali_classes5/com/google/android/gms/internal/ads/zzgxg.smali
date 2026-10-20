###### Class com.google.android.gms.internal.ads.zzgxg (com.google.android.gms.internal.ads.zzgxg)
.class final Lcom/google/android/gms/internal/ads/zzgxg;
.super Lcom/google/android/gms/internal/ads/zzgxk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgxk;-><init>(Lcom/google/android/gms/internal/ads/zzgxj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxf;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxk;-><init>(Lcom/google/android/gms/internal/ads/zzgxj;)V

    return-void
.end method

.method private static zzf(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzq;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxe;

    if-eqz v1, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxd;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzgxd;-><init>(I)V

    goto :goto_2b

    :cond_16
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyd;

    if-eqz v1, :cond_26

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgwv;

    if-eqz v1, :cond_26

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd(I)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p3

    move-object v0, p3

    goto :goto_2b

    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2b
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_87

    :cond_2f
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4d

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4b
    move-object v0, v1

    goto :goto_87

    :cond_4d
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgzl;

    if-eqz v1, :cond_68

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgxd;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxd;->size()I

    move-result p3

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/internal/ads/zzguo;->addAll(ILjava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4b

    :cond_68
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyd;

    if-eqz v1, :cond_87

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgwv;

    if-eqz v1, :cond_87

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc()Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_87

    :cond_7a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd(I)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p3

    :cond_87
    :goto_87
    return-object v0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5

    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgxg;->zzf(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 7

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzq;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxe;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxe;->zze()Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object v0

    goto :goto_36

    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_31

    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyd;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgwv;

    if-eqz v1, :cond_32

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzb()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgzq;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzgxg;->zzf(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1d

    if-lez v2, :cond_1d

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    if-lez v1, :cond_20

    move-object p2, v0

    :cond_20
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/zzgzq;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
