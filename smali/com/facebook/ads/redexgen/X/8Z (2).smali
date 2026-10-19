###### Class com.facebook.ads.redexgen.X.C8Z (com.facebook.ads.redexgen.X.8Z)
.class public final Lcom/facebook/ads/redexgen/X/8Z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/redexgen/X/8a;",
        "E:",
        "Lcom/facebook/ads/redexgen/X/8Y;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WBmgDKUAJnOjRPVdo459bnYJXDnRSoZA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OZ5TpfWbSmXE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sC9WLlq1dd0W0qrWeGI0su3O22TcCAEW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0Ub2X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5m4s5CvbohnvtMuC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JEGJTDHJWZGaFE0Bjwe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ELtjylBnyGpGsAAS3nfDjHYeujv6lcAm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LzmA2INjpudrbI3uXcOOEdZHAsdjx9ZW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8Z;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/8Z;->A01(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/8a;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/8a;->A00(Lcom/facebook/ads/redexgen/X/8Y;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/8a;->A03(Lcom/facebook/ads/redexgen/X/8Y;)V

    goto :goto_25

    :cond_43
    return-void
.end method

.method private A01(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4c

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3e

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Z;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Z;->A02:[Ljava/lang/String;

    const-string v1, "MDutMibHR0xfS0kHpIX6qzWASaThPw85"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "nvT9JaP2TDwXv3h3yDNvutMp299h55Zc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3b

    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v0

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_44
    if-lt v0, v4, :cond_4c

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_4c
    return-void
.end method


# virtual methods
.method public final declared-synchronized A02(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8Y;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8Z;->A00(Lcom/facebook/ads/redexgen/X/8Y;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_e

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A03([Lcom/facebook/ads/redexgen/X/8a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    array-length v2, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8Z;->A05(Lcom/facebook/ads/redexgen/X/8a;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A04([Lcom/facebook/ads/redexgen/X/8a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    array-length v2, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8Z;->A06(Lcom/facebook/ads/redexgen/X/8a;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(Lcom/facebook/ads/redexgen/X/8a;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v4, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return v4

    :cond_6
    :try_start_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8a;->A01()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/8Z;->A01(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_2c
    if-ge v2, v1, :cond_40

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3b

    goto :goto_3e

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_4b

    :goto_3e
    monitor-exit p0

    return v4

    :cond_40
    :try_start_40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return v0

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/8a;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v4, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return v4

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8Z;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8a;->A01()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_16
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3b

    monitor-exit p0

    return v4

    :cond_16
    const/4 v2, 0x0

    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1b
    if-ge v2, v1, :cond_39

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_33

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_36

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_3b

    :goto_36
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_39
    monitor-exit p0

    return v4

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
