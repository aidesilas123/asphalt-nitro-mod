###### Class com.fyber.inneractive.sdk.util.z.c (com.fyber.inneractive.sdk.util.z$c)
.class public Lcom/fyber/inneractive/sdk/util/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/util/z;->a(Landroid/content/Context;Landroid/view/View;Lcom/fyber/inneractive/sdk/util/z$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/util/z;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/z;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/z$c;->b:Lcom/fyber/inneractive/sdk/util/z;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/z$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/z$c;->b:Lcom/fyber/inneractive/sdk/util/z;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/util/z$c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_83

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/util/z;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-eqz v1, :cond_83

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/util/z;->d:Lcom/fyber/inneractive/sdk/util/i;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/util/i;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fyber/inneractive/sdk/util/z$e;

    if-eqz v5, :cond_26

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/util/z;->c:Lcom/fyber/inneractive/sdk/util/i;

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/util/i;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_6e

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {v4, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int v6, v6, v8

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int v8, v8, v9

    int-to-float v8, v8

    div-float/2addr v6, v8

    :cond_6e
    invoke-interface {v5, v4, v6, v7}, Lcom/fyber/inneractive/sdk/util/z$e;->a(Landroid/view/View;FLandroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/util/z;->c:Lcom/fyber/inneractive/sdk/util/i;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/util/i;->a:Ljava/util/Queue;

    invoke-interface {v4, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_79
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/z;->d:Lcom/fyber/inneractive/sdk/util/i;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/i;->a:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_83
    const/4 v0, 0x1

    return v0
.end method
