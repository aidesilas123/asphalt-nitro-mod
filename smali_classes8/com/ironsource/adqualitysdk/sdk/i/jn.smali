###### Class com.json.adqualitysdk.sdk.i.jn (com.ironsource.adqualitysdk.sdk.i.jn)
.class public Lcom/ironsource/adqualitysdk/sdk/i/jn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ji;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/webkit/WebView;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

.field private d:Z

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->b:Ljava/lang/String;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/jo;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jo;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->d:Z

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ﾒ(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;

    invoke-direct {p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ｋ(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Lcom/ironsource/adqualitysdk/sdk/i/jo;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    return-object p0
.end method

.method public static ﻛ(Landroid/webkit/WebView;Ljava/lang/String;Z)Lcom/ironsource/adqualitysdk/sdk/i/jn;
    .registers 4

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    if-nez v0, :cond_14

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jn;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method


# virtual methods
.method public final ﻐ()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ｋ()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final ﻐ(Landroid/webkit/WebView;)V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ji;

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ji;->ﻐ(Landroid/webkit/WebView;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﻐ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ji;

    if-eqz v1, :cond_b

    invoke-interface {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ji;->ﻐ(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﻐ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ji;

    if-eqz v1, :cond_b

    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ji;->ﻐ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ﾒ(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ji;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/jl;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/jl;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ji;

    if-eqz v1, :cond_b

    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ji;->ﾇ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﾇ()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ﻛ()Z

    move-result v0

    return v0
.end method

.method public final ﾒ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c:Lcom/ironsource/adqualitysdk/sdk/i/jo;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ｋ(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ji;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
