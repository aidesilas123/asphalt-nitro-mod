###### Class com.bytedance.sdk.component.adexpress.dynamic.animation.a.c (com.bytedance.sdk.component.adexpress.dynamic.animation.a.c)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;
.super Ljava/lang/Object;
.source "AnimatorFactory.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2b
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/j;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/j;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_3d
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "translate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/n;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/n;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_4f
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ripple"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_61
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "marquee"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/f;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/f;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_73
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "waggle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/o;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/o;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_85
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shine"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/k;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/k;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_97
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "swing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/m;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/m;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_a9
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fade"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/a;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/a;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_bb
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rubIn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_cd
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rotate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/h;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/h;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_df
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cutIn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/e;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/e;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-object v0

    :cond_f1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stretch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/l;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/l;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    :cond_102
    return-object v0
.end method
