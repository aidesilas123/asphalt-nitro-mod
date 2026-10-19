###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a (com.bytedance.sdk.component.adexpress.dynamic.a.a)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/d;
.implements Lcom/bytedance/sdk/component/adexpress/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/b/d<",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/b/k;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

.field private b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/component/adexpress/b/g;

.field private e:Lcom/bytedance/sdk/component/adexpress/b/h;

.field private f:Lcom/bytedance/sdk/component/adexpress/b/m;

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/g;Lcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c:Landroid/content/Context;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    iput-object p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setRenderListener(Lcom/bytedance/sdk/component/adexpress/b/k;)V

    iput-object p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_8
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1b
    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/e;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/e;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/e;->b()V

    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_2f

    :cond_10
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$3;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    if-nez v0, :cond_2b

    goto :goto_1c

    :cond_2b
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    goto :goto_1c

    :cond_2f
    :goto_2f
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->h()V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v5

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i()F

    move-result v6

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_82

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_82

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_82

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "logo-union"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->f()I

    move-result v2

    int-to-float v5, v2

    neg-float v2, v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->av()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    goto :goto_43

    :cond_82
    const/4 v5, 0x0

    :cond_83
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_15

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f(F)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    goto :goto_a4

    :cond_b9
    const/4 v2, 0x0

    :cond_ba
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l()Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    move-result-object v0

    if-nez v0, :cond_c1

    return-void

    :cond_c1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f()F

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c(F)V

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    cmpl-float v0, v2, v1

    if-lez v0, :cond_10a

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f(F)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    goto :goto_f5

    :cond_10a
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/b/m;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    return-void
.end method

.method private c(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 4

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    instance-of p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz p1, :cond_b

    const/16 p1, 0x7b

    goto :goto_d

    :cond_b
    const/16 p1, 0x71

    :goto_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->e(I)V

    :try_start_20
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_3b

    :catch_2a
    nop

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    instance-of p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz p1, :cond_34

    const/16 p1, 0x80

    goto :goto_36

    :cond_34
    const/16 p1, 0x76

    :goto_36
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    :goto_3b
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    return-object p0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->c(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz v0, :cond_22

    const/16 v0, 0x7b

    goto :goto_24

    :cond_22
    const/16 v0, 0x71

    :goto_24
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/d/b;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;->a(Lcom/bytedance/sdk/component/adexpress/b/m;)V

    return-void
.end method

.method private g()Z
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private h()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->g:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_13
    const-string v0, "DynamicRender"

    const-string v1, "WebView Render cancel timeout timer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/c;)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->e:Lcom/bytedance/sdk/component/adexpress/b/h;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/b/h;->a(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/c;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/g;)V
    .registers 6

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d:Lcom/bytedance/sdk/component/adexpress/b/g;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/m;->f()I

    move-result p1

    if-gez p1, :cond_1b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    instance-of p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz p1, :cond_13

    const/16 p1, 0x7f

    goto :goto_15

    :cond_13
    const/16 p1, 0x75

    :goto_15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    goto :goto_40

    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;I)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->b()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/b/m;->i()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_40
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->e:Lcom/bytedance/sdk/component/adexpress/b/h;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/n;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d:Lcom/bytedance/sdk/component/adexpress/b/g;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/b/g;->a(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/b/n;)V

    goto :goto_39

    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d:Lcom/bytedance/sdk/component/adexpress/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/n;->j()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/b/g;->a(I)V

    :goto_39
    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method public d()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    return-object v0
.end method

.method public synthetic e()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.AnonymousClass1 (com.bytedance.sdk.component.adexpress.dynamic.a.a$1)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$1;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$1;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$1;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.AnonymousClass2 (com.bytedance.sdk.component.adexpress.dynamic.a.a$2)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgMaterialCenterCalcColor(Ljava/util/Map;)V

    :cond_57
    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.AnonymousClass2.AnonymousClass1 (com.bytedance.sdk.component.adexpress.dynamic.a.a$2$1)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$2$1;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->c(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.AnonymousClass3 (com.bytedance.sdk.component.adexpress.dynamic.a.a$3)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$3;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$3;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)I
    .registers 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object p2

    if-eqz p1, :cond_23

    if-nez p2, :cond_15

    goto :goto_23

    :cond_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ap()I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ap()I

    move-result p2

    if-lt p1, p2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, -0x1

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    check-cast p2, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$3;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)I

    move-result p1

    return p1
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.RunnableC0102a (com.bytedance.sdk.component.adexpress.dynamic.a.a$a)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    const-string v0, "DynamicRender"

    const-string v1, "Dynamic parse time out"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->e(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz v0, :cond_19

    const/16 v0, 0x7f

    goto :goto_1b

    :cond_19
    const/16 v0, 0x75

    :goto_1b
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    :cond_24
    return-void
.end method
