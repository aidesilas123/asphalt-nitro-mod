###### Class com.iab.omid.library.gameloft.b.e (com.iab.omid.library.gameloft.b.e)
.class public Lcom/iab/omid/library/gameloft/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/gameloft/a/c;
.implements Lcom/iab/omid/library/gameloft/b/b$a;


# static fields
.field private static a:Lcom/iab/omid/library/gameloft/b/e;


# instance fields
.field private b:F

.field private final c:Lcom/iab/omid/library/gameloft/a/e;

.field private final d:Lcom/iab/omid/library/gameloft/a/b;

.field private e:Lcom/iab/omid/library/gameloft/a/d;

.field private f:Lcom/iab/omid/library/gameloft/b/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/gameloft/a/e;Lcom/iab/omid/library/gameloft/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/gameloft/b/e;->b:F

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/b/e;->c:Lcom/iab/omid/library/gameloft/a/e;

    iput-object p2, p0, Lcom/iab/omid/library/gameloft/b/e;->d:Lcom/iab/omid/library/gameloft/a/b;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/gameloft/b/e;
    .registers 3

    sget-object v0, Lcom/iab/omid/library/gameloft/b/e;->a:Lcom/iab/omid/library/gameloft/b/e;

    if-nez v0, :cond_15

    new-instance v0, Lcom/iab/omid/library/gameloft/a/b;

    invoke-direct {v0}, Lcom/iab/omid/library/gameloft/a/b;-><init>()V

    new-instance v1, Lcom/iab/omid/library/gameloft/a/e;

    invoke-direct {v1}, Lcom/iab/omid/library/gameloft/a/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/gameloft/b/e;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/gameloft/b/e;-><init>(Lcom/iab/omid/library/gameloft/a/e;Lcom/iab/omid/library/gameloft/a/b;)V

    sput-object v2, Lcom/iab/omid/library/gameloft/b/e;->a:Lcom/iab/omid/library/gameloft/b/e;

    :cond_15
    sget-object v0, Lcom/iab/omid/library/gameloft/b/e;->a:Lcom/iab/omid/library/gameloft/b/e;

    return-object v0
.end method

.method private e()Lcom/iab/omid/library/gameloft/b/a;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->f:Lcom/iab/omid/library/gameloft/b/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/a;->a()Lcom/iab/omid/library/gameloft/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->f:Lcom/iab/omid/library/gameloft/b/a;

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->f:Lcom/iab/omid/library/gameloft/b/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 4

    iput p1, p0, Lcom/iab/omid/library/gameloft/b/e;->b:F

    invoke-direct {p0}, Lcom/iab/omid/library/gameloft/b/e;->e()Lcom/iab/omid/library/gameloft/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/gameloft/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/gameloft/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a(F)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->d:Lcom/iab/omid/library/gameloft/a/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/a/b;->a()Lcom/iab/omid/library/gameloft/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/gameloft/b/e;->c:Lcom/iab/omid/library/gameloft/a/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/iab/omid/library/gameloft/a/e;->a(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/gameloft/a/a;Lcom/iab/omid/library/gameloft/a/c;)Lcom/iab/omid/library/gameloft/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/b/e;->e:Lcom/iab/omid/library/gameloft/a/d;

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/gameloft/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->a()V

    goto :goto_11

    :cond_a
    invoke-static {}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/gameloft/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->c()V

    :goto_11
    return-void
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/b;->a()Lcom/iab/omid/library/gameloft/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/gameloft/b/b;->a(Lcom/iab/omid/library/gameloft/b/b$a;)V

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/b;->a()Lcom/iab/omid/library/gameloft/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/b/b;->b()V

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/b;->a()Lcom/iab/omid/library/gameloft/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/gameloft/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->a()V

    :cond_1f
    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->e:Lcom/iab/omid/library/gameloft/a/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/a/d;->a()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/gameloft/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/walking/TreeWalker;->b()V

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/b;->a()Lcom/iab/omid/library/gameloft/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/b/b;->c()V

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/b/e;->e:Lcom/iab/omid/library/gameloft/a/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/a/d;->b()V

    return-void
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/iab/omid/library/gameloft/b/e;->b:F

    return v0
.end method
