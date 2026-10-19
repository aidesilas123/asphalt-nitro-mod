###### Class com.json.adqualitysdk.sdk.i.jd (com.ironsource.adqualitysdk.sdk.i.jd)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jd;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/jd;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/jh;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ironsource/adqualitysdk/sdk/i/ij;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->c:Ljava/util/List;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->c(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized c(Landroid/view/View;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jh;->ﾒ(Landroid/view/View;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->b:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized f(Landroid/view/View;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jh;->ﻛ(Landroid/view/View;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jd;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jd;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    :cond_e
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1c

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iy;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iy;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;Lcom/ironsource/adqualitysdk/sdk/i/jh;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jd.a (com.ironsource.adqualitysdk.sdk.i.jd$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jd$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ij;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/jd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻐ()V
    .registers 6

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ｋ()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->b(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_79
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jd.b (com.ironsource.adqualitysdk.sdk.i.jd$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jd$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/jd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;Lcom/ironsource/adqualitysdk/sdk/i/jh;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-interface {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jh;->ﻛ(Landroid/view/View;)V

    goto :goto_a

    :cond_1c
    return-void
.end method
