###### Class com.bytedance.sdk.component.d.d.j (com.bytedance.sdk.component.d.d.j)
.class public Lcom/bytedance/sdk/component/d/d/j;
.super Lcom/bytedance/sdk/component/d/d/a;
.source "MemoryCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/d/a;-><init>()V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/component/d/c/c;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/c/f;->a()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    :cond_28
    return-object v1
.end method

.method private c(Lcom/bytedance/sdk/component/d/c/c;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/f;->a(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "memory_cache"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->l()Lcom/bytedance/sdk/component/d/u;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/d/u;->b:Lcom/bytedance/sdk/component/d/u;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/bytedance/sdk/component/d/u;->a:Lcom/bytedance/sdk/component/d/u;

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    move-object v0, v2

    goto :goto_2a

    :cond_10
    :goto_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->u()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->t()Lcom/bytedance/sdk/component/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_26

    :cond_21
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/d/j;->c(Lcom/bytedance/sdk/component/d/c/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2a

    :cond_26
    :goto_26
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/d/j;->b(Lcom/bytedance/sdk/component/d/c/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2a
    if-nez v0, :cond_35

    new-instance v0, Lcom/bytedance/sdk/component/d/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/d/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    goto :goto_3e

    :cond_35
    new-instance v1, Lcom/bytedance/sdk/component/d/d/m;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/d/d/m;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/d/f;Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    :goto_3e
    return-void
.end method
