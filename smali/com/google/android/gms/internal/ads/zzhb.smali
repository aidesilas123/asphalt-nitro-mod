###### Class com.google.android.gms.internal.ads.zzhb (com.google.android.gms.internal.ads.zzhb)
.class final Lcom/google/android/gms/internal/ads/zzhb;
.super Lcom/google/android/gms/internal/ads/zzfwk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwk;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zzd(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgz;->zza:Lcom/google/android/gms/internal/ads/zzgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzb(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zze(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfwk;->zzc()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfwk;->size()I

    move-result v0

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwk;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    return v1

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public final keySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzha;->zza:Lcom/google/android/gms/internal/ads/zzha;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzb(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfwk;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/android/gms/internal/ads/zzfwk;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final synthetic zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    return-object v0
.end method

.method protected final zzb()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Ljava/util/Map;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzgz (com.google.android.gms.internal.ads.zzgz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftz;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgz;->zza:Lcom/google/android/gms/internal/ads/zzgz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzha (com.google.android.gms.internal.ads.zzha)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftz;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzha;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzha;->zza:Lcom/google/android/gms/internal/ads/zzha;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
