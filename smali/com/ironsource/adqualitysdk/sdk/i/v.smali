###### Class com.json.adqualitysdk.sdk.i.v (com.ironsource.adqualitysdk.sdk.i.v)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/v;
.super Lcom/ironsource/adqualitysdk/sdk/i/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/v$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ironsource/adqualitysdk/sdk/i/y<",
        "Landroid/webkit/WebView;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ad;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

.field private p:Lcom/ironsource/adqualitysdk/sdk/i/io;

.field private q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/adqualitysdk/sdk/i/v<",
            "TT;>.e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/io;)V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->p:Lcom/ironsource/adqualitysdk/sdk/i/io;

    return-void
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/v;Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/v;Ljava/lang/Object;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v;->n(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method private n(Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ad;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_13
    invoke-virtual {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﾒ(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->a(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ad;

    goto :goto_31

    :cond_2f
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_31
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﻛ(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method static synthetic p(Lcom/ironsource/adqualitysdk/sdk/i/v;)Lcom/ironsource/adqualitysdk/sdk/i/v$e;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    return-object p0
.end method


# virtual methods
.method abstract f()Lcom/ironsource/adqualitysdk/sdk/i/ad;
.end method

.method final h(Lcom/ironsource/adqualitysdk/sdk/i/io;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->p:Lcom/ironsource/adqualitysdk/sdk/i/io;

    return-void
.end method

.method j(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ad;

    goto :goto_18

    :cond_16
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_18
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﾒ()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method k(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v;->l(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method final l(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->i(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->g(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ad;

    goto :goto_2c

    :cond_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_2c
    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/v;->f()Lcom/ironsource/adqualitysdk/sdk/i/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_40
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_42
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/v;->m()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/p;)V

    :cond_49
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﾇ()V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->g(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->h(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->k(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v6

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->d(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v7

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->b(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v8

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->s(Ljava/lang/String;Ljava/util/List;ZZZZ)V

    invoke-virtual {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﻛ(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->e(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_7e

    invoke-super {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7e
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/v;->r(Ljava/lang/Object;Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->p:Lcom/ironsource/adqualitysdk/sdk/i/io;

    if-eqz v3, :cond_93

    invoke-interface {v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/io;->ﻐ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_93
    invoke-static {p3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﻛ(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->f(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_a5
    invoke-virtual {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v;->o(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b3

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/v$a;

    invoke-direct {v3, p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/v;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_b3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-super {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_bd
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->c(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-nez v0, :cond_d2

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/v;->n(Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    invoke-super {p0, p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_d2
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ｋ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/v$b;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/v$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/v;Ljava/lang/Object;Ljava/util/List;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method abstract m()Lcom/ironsource/adqualitysdk/sdk/i/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "Landroid/webkit/WebView;",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract o(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final q(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/v<",
            "TT;>.e;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    return-void
.end method

.method abstract r(Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final ﻐ(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->q:Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->j(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ad;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->o:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    :goto_13
    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﻐ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Landroid/webkit/WebView;

    invoke-super {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
