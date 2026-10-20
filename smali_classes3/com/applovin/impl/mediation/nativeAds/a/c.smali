###### Class com.applovin.impl.mediation.nativeAds.a.c (com.applovin.impl.mediation.nativeAds.a.c)
.class public Lcom/applovin/impl/mediation/nativeAds/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/nativeAds/a/c$a;
    }
.end annotation


# instance fields
.field private final auU:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final auV:Ljava/lang/Object;

.field private final auW:Landroid/os/Handler;

.field private auX:Z

.field private final auY:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final auZ:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private ava:Lcom/applovin/impl/mediation/nativeAds/a/c$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auU:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auV:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auW:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auX:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auY:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/applovin/impl/mediation/nativeAds/a/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/nativeAds/a/e;-><init>(Lcom/applovin/impl/mediation/nativeAds/a/c;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auZ:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3a

    :cond_37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auZ:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :goto_3a
    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/mediation/nativeAds/a/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/nativeAds/a/c;->yR()V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/mediation/nativeAds/a/c;)Z
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/nativeAds/a/c;->yS()Z

    move-result p0

    return p0
.end method

.method private t(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private yQ()V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auX:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auX:Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auW:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/mediation/nativeAds/a/d;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/nativeAds/a/d;-><init>(Lcom/applovin/impl/mediation/nativeAds/a/c;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic yR()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auV:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auX:Z

    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auU:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/applovin/impl/mediation/nativeAds/a/c;->t(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-ne v3, v2, :cond_3e

    if-ne v4, v2, :cond_3e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_13

    :cond_3e
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_13

    :cond_5b
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->ava:Lcom/applovin/impl/mediation/nativeAds/a/c$a;

    if-eqz v1, :cond_62

    invoke-interface {v1, v3, v4}, Lcom/applovin/impl/mediation/nativeAds/a/c$a;->S(II)V

    :cond_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_4 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private synthetic yS()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/mediation/nativeAds/a/c;->yQ()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auV:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auU:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/nativeAds/a/c;->yQ()V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public a(Lcom/applovin/impl/mediation/nativeAds/a/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->ava:Lcom/applovin/impl/mediation/nativeAds/a/c$a;

    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->ava:Lcom/applovin/impl/mediation/nativeAds/a/c$a;

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auZ:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1e
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_23
    return-void
.end method

.method public k(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auV:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/c;->auU:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
