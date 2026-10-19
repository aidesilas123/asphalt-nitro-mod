###### Class com.json.adqualitysdk.sdk.i.kb (com.ironsource.adqualitysdk.sdk.i.kb)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/kb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/kb$h;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Z = false

.field private static e:Z = false

.field private static f:Lcom/ironsource/adqualitysdk/sdk/i/kb$h; = null

.field private static g:Lcom/ironsource/adqualitysdk/sdk/i/kb$h; = null

.field private static h:C = '\u0000'

.field private static i:C = '\u0000'

.field private static j:C = '\u0000'

.field private static k:C = '\u0000'

.field private static l:[C = null

.field private static m:J = 0x0L

.field private static n:I = 0x0

.field private static o:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a:Z

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->b:Z

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->d:Z

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->e:Z

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;-><init>(B)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->f:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;-><init>(B)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/ironsource/adqualitysdk/sdk/i/aw;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    if-ne v1, v2, :cond_29

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﭸ()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_34

    monitor-exit v0

    return-object v1

    :cond_29
    :try_start_29
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﭸ()Lcom/ironsource/adqualitysdk/sdk/i/aw;
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    const/4 v1, 0x0

    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    :try_start_33
    throw v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Landroid/webkit/WebView;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "Landroid/webkit/WebViewClient;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->i(Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->h()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->f:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->l(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/kb$h;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static c(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/webkit/WebView;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3f

    if-nez v0, :cond_11

    const/16 v0, 0x40

    goto :goto_13

    :cond_11
    const/16 v0, 0x3f

    :goto_13
    if-ne v0, v1, :cond_1a

    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method private static d(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    if-eqz v0, :cond_17

    goto :goto_1a

    :cond_17
    const/16 p1, 0xe

    :try_start_19
    div-int/2addr p1, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-object p0

    :catchall_1b
    move-exception p0

    throw p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->b:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->b:Z

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    const/4 v2, 0x0

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/kb$b;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb$b;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    const/16 v2, 0x33

    if-ne p0, v1, :cond_25

    const/16 p0, 0x2d

    goto :goto_27

    :cond_25
    const/16 p0, 0x33

    :goto_27
    if-eq p0, v2, :cond_2b

    const/4 v0, 0x1

    goto :goto_35

    :cond_2b
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p0, p0, 0x2

    :goto_35
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->d:Z

    :cond_37
    sget-boolean p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->d:Z

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method private static f(Landroid/webkit/WebView;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "Landroid/webkit/WebChromeClient;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3e

    if-nez v0, :cond_11

    const/16 v0, 0x3e

    goto :goto_13

    :cond_11
    const/16 v0, 0x43

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->i(Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->j()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->l(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/kb$h;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    const/4 v0, 0x1

    :goto_36
    if-eqz v0, :cond_39

    return-object p0

    :cond_39
    :try_start_39
    throw v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    throw p0

    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->i(Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->j()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->l(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/kb$h;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    :try_start_4c
    throw v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    throw p0
.end method

.method private static g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/kb$c;

    invoke-direct {v4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb$c;-><init>(Ljava/util/List;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static h()Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/kb$a;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$a;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static i(Landroid/content/Context;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a:Z

    if-eqz v0, :cond_96

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a:Z

    :try_start_11
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/kb$f;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb$f;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hd;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/kb$e;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/kb$e;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;-><init>(Landroid/webkit/WebChromeClient;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->h()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->k(Landroid/webkit/WebView;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    move-result-object p0

    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->f:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->j()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->k(Landroid/webkit/WebView;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    move-result-object p0

    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->g:Lcom/ironsource/adqualitysdk/sdk/i/kb$h;
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_61

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v1, 0x14

    if-nez p0, :cond_56

    const/16 p0, 0xb

    goto :goto_58

    :cond_56
    const/16 p0, 0x14

    :goto_58
    if-eq p0, v1, :cond_60

    const/16 p0, 0x5c

    :try_start_5c
    div-int/2addr p0, v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception p0

    throw p0

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "\uc914\u2675\ub773\ue0c6\ubd0e\u44ab\u37d4\u8e62\u4604\u30af\u89a3\u78df\ue4c2\u6f75\ubfca\ue815\u3e95\u0a2c\u61ef\uafa9\u4a1b\u2016\u3ca8\u644c\u160a\ucead\ubcb0\uc829\u2e74\u94ae\ue3c2\ue3b6"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0xc

    invoke-static {v3, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0x461b

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0x1f

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_96
    return-void
.end method

.method private static j()Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/kb$g;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$g;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static k(Landroid/webkit/WebView;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/kb$h;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/webkit/WebView;",
            "TT;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/kb$h;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;-><init>(B)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﾇ()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﻛ()I

    move-result v3

    invoke-static {p0, p2, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    if-eqz v1, :cond_21

    goto :goto_8d

    :cond_21
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_3f

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_8d

    :cond_3f
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﻐ()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﾒ()I

    move-result v2

    invoke-static {p0, p2, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->d(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    if-eqz p0, :cond_8d

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p2, p2, 0x1b

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_87

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x39

    if-ne p0, p1, :cond_6d

    const/16 p0, 0x43

    goto :goto_6f

    :cond_6d
    const/16 p0, 0x39

    :goto_6f
    if-eq p0, p2, :cond_8d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_81

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->c()V

    goto :goto_8d

    :cond_81
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->c()V

    :try_start_84
    throw v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p0

    throw p0

    :cond_87
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    :try_start_8a
    throw v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    throw p0

    :cond_8d
    :goto_8d
    return-object v0
.end method

.method private static l(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/kb$h;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/webkit/WebView;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/kb$h;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->e()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_b3

    if-eqz v2, :cond_e6

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9c

    :try_start_1e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﾇ()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﻛ()I

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b()Z

    move-result p2
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_b3

    if-eqz p2, :cond_83

    const/16 p2, 0x38

    if-eqz p0, :cond_3f

    const/16 v2, 0x38

    goto :goto_41

    :cond_3f
    const/16 v2, 0x3e

    :goto_41
    if-eq v2, p2, :cond_44

    goto :goto_83

    :cond_44
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 p2, p2, 0x47

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7f

    :try_start_50
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ﻐ()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_7e

    :cond_69
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﻐ()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﾒ()I

    move-result v2

    invoke-static {p2, p1, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->d(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    goto :goto_83

    :cond_7e
    :goto_7e
    return-object p0

    :cond_7f
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    throw v0
    :try_end_83
    .catchall {:try_start_50 .. :try_end_83} :catchall_b3

    :cond_83
    :goto_83
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-nez p1, :cond_92

    const/4 p1, 0x0

    goto :goto_93

    :cond_92
    const/4 p1, 0x1

    :goto_93
    if-eq p1, p2, :cond_9b

    const/16 p1, 0x24

    :try_start_97
    div-int/2addr p1, v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_99

    return-object p0

    :catchall_99
    move-exception p0

    throw p0

    :cond_9b
    return-object p0

    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﾇ()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﻛ()I

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b()Z

    throw v0
    :try_end_b3
    .catchall {:try_start_9c .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    shr-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0xc

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    shr-int/lit8 p2, p2, 0x16

    invoke-static {v1, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x461b

    int-to-char v2, v2

    invoke-static {p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const p2, -0xffffe6

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr p2, v2

    const-string v2, "\uc914\u2675\ub773\ue0c6\ubd0e\u44ab\ub8d1\ucfb3\uda81\u9bab\u89e8\ue77a\u5454\u8b57\ue1ce\u5546\uc196\u9579\u1532\u6fb9\ubfca\ue815\uc196\u9579\uc854\uc197"

    invoke-static {v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_e6
    return-object v0
.end method

.method private static m(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/kb;->l:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static n(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/kb;->j:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/kb;->k:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/kb;->h:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/kb;->i:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static o()V
    .registers 2

    const v0, 0x91e2

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->j:C

    const/16 v0, 0x1804

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->i:C

    const/16 v0, 0x2900

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->k:C

    const/16 v0, 0x423e

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->h:C

    const/16 v0, 0x2f

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->l:[C

    const-wide v0, -0x309f730a2cf978abL    # -2.339393994841404E74

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m:J

    return-void

    :array_22
    .array-data 2
        0x464cs
        -0x3ed5s
        0x48d3s
        -0x2c4es
        0x5b26s
        -0x1d29s
        0x6d92s
        -0xae3s
        0x7cc7s
        -0x7871s
        0xf25s
        -0x6931s
        0x43s
        -0x78c6s
        0xedfs
        -0x6a6ds
        0x1d30s
        -0x5b39s
        0x2bd9s
        -0x4cd9s
        0x3a88s
        -0x3e65s
        0x493bs
        -0x2f37s
        0x5798s
        -0x208fs
        0x66f1s
        -0x1262s
        0x7532s
        -0x31as
        -0x7c6es
        0xb3ds
        -0x6d35s
        0x1994s
        -0x5ed5s
        0x28e0s
        -0x506cs
        0x3724s
        -0x4139s
        0x4599s
        -0x32c8s
        0x5481s
        -0x2470s
        0x6322s
        -0x153bs
        0x7199s
        -0x6d2s
    .end array-data
.end method

.method private static p(Landroid/content/Context;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->c:Z

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;

    const/4 v2, 0x0

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/kb$d;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb$d;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;-><init>(Landroid/webkit/WebChromeClient;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p0, v1, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eq p0, v2, :cond_31

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3c

    :cond_31
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    :goto_3c
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->e:Z

    :cond_3e
    sget-boolean p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->e:Z

    return p0
.end method

.method public static ｋ(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_72

    goto :goto_26

    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eq v0, v1, :cond_26

    goto :goto_72

    :cond_26
    :goto_26
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ﺙ()Z

    move-result v0

    if-eqz v0, :cond_72

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    goto :goto_7e

    :cond_62
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    :try_start_65
    throw v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    throw p0

    :cond_68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->p(Landroid/content/Context;)Z

    :try_start_6f
    throw v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    throw p0

    :cond_72
    :goto_72
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->f(Landroid/webkit/WebView;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    if-eqz p0, :cond_7f

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebChromeClient;

    :goto_7e
    return-object p0

    :cond_7f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ｋ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p0, :cond_88

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x42

    if-nez v1, :cond_1b

    const/16 v1, 0x45

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x42

    :goto_1d
    if-ne v1, v0, :cond_81

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x5f

    if-nez v0, :cond_2a

    const/16 v0, 0x5f

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x24

    :goto_2c
    if-eq v0, v1, :cond_2f

    goto :goto_3f

    :cond_2f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_88

    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    const-string v2, "\u0de0\u8dfc\u5332\u5747\u20a0\u985d\u3058\u212c\u60c7\u3f5d\ucd38\uda1b\u5332\u5747\ue386\u5c76\u419d\u12b3\u5367\ue833\uec79\u4a53"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->ｋ([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 p1, p1, 0x4

    const-string v1, "\u5904\u813a\u8500\ua6f2"

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_88

    :cond_81
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    const/4 p0, 0x0

    :try_start_85
    throw p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p0

    throw p0

    :cond_88
    :goto_88
    return-void
.end method

.method public static ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/16 v2, 0x4b

    if-lt v0, v1, :cond_b

    const/16 v0, 0xc

    goto :goto_d

    :cond_b
    const/16 v0, 0x4b

    :goto_d
    if-eq v0, v2, :cond_38

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->a()Lcom/ironsource/adqualitysdk/sdk/i/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->ｋ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    if-eq v0, v1, :cond_38

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    goto :goto_44

    :cond_38
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->b(Landroid/webkit/WebView;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p0

    if-eqz p0, :cond_54

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewClient;

    :goto_44
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_50

    return-object p0

    :cond_50
    const/4 p0, 0x0

    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    throw p0

    :cond_54
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x21

    const-string v1, "\ub4bd\u8722\u8058\uf69a\u8883\uecc1\u6ec5\u0bb2\ubfca\ue815\u89e8\ue77a\udad4\u7208\ude77\u5296\u7ae2\ub189\uc196\u9579\u6927\u5bcd\ubcb0\uc829\u2e74\u94ae\u852e\u2b6f\u4d2a\ub82e\u13aa\u9137\u61b3\u5d32"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﾒ(Landroid/webkit/WebView;)Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object p0

    instance-of p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-nez v0, :cond_21

    const/16 v0, 0x55

    goto :goto_23

    :cond_21
    const/16 v0, 0x2d

    :goto_23
    if-eq v0, v1, :cond_2c

    const/16 v0, 0x30

    :try_start_27
    div-int/lit8 v0, v0, 0x0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    return p0

    :catchall_2a
    move-exception p0

    throw p0

    :cond_2c
    return p0
.end method

.method public static ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_a6

    const/4 v1, 0x1

    :try_start_10
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_a5
    .catchall {:try_start_10 .. :try_end_14} :catchall_a6

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x12

    if-eqz v2, :cond_25

    const/16 v2, 0x11

    goto :goto_27

    :cond_25
    const/16 v2, 0x12

    :goto_27
    const/4 v4, 0x0

    const-string v5, "\u296b\u9665\u28ed\ub0e9\u67aa\ub1fb\u42ba\ubcf6\u89e8\ue77a\u866d\uf167\u1532\u6fb9\ud8c0\u2327\u419d\u12b3\uff94\ue73e\u3e95\u0a2c\uca96\u0401\u3041\u5c33\u37b9\u65d7\u993b\ufdac\ue445\uf190\u2190\u3aa1"

    if-eq v2, v3, :cond_4e

    :try_start_2c
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    div-int/lit8 v2, v2, 0x5e

    rsub-int/lit8 v2, v2, 0x5e

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4a

    const/4 v3, 0x0

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x1

    :goto_4b
    if-eqz v3, :cond_6a

    goto :goto_80

    :cond_4e
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x21

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_80

    :cond_6a
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x21

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_80
    :goto_80
    const-string v2, "\u1a30\ub43d\u645b\u9548\u296b\u9665\u28ed\ub0e9\u67aa\ub1fb\u42ba\ubcf6\ub53e\u0110\u07b8\u08d0\u57c5\u0f43\u581a\u80dd\u37e0\ue0a4\u63d2\uc484\u4ab6\u64f5\u419d\u12b3\uea27\ufb62\u9688\ub1b6\ueb61\ub6ef"

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x22

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_97
    .catchall {:try_start_2c .. :try_end_97} :catchall_a6

    :try_start_97
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_97 .. :try_end_9a} :catch_a5
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a6

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/kb;->o:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :catch_a5
    return v0

    :catchall_a6
    move-exception p0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit16 v2, v2, 0x45eb

    int-to-char v2, v2

    invoke-static {p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->m(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {v1, v1, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x21

    const-string v2, "\uc914\u2675\ub773\ue0c6\ubd0e\u44ab\u89e8\ue77a\u1959\u8a08\u47a4\u3bd9\ud986\u6046\u0ded\ue87b\ue858\ub7c7\uc874\u1d5c\u866d\uf167\uc56f\u4afb\u1285\u4014\u1cb3\u367e\u07b8\u08d0\u57c5\u0f43\ua689\u80b4"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.a (com.ironsource.adqualitysdk.sdk.i.kb$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->h()Lcom/ironsource/adqualitysdk/sdk/i/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 3

    const-class v0, Landroid/webkit/WebViewClient;

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ﻐ()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.b (com.ironsource.adqualitysdk.sdk.i.kb$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$b;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->e(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.c (com.ironsource.adqualitysdk.sdk.i.kb$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Ljava/lang/Object;)[Ljava/lang/reflect/Field;
    .registers 5

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$c;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {p1, v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ｋ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.d (com.ironsource.adqualitysdk.sdk.i.kb$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$d;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->p(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.e (com.ironsource.adqualitysdk.sdk.i.kb$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$e;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.f (com.ironsource.adqualitysdk.sdk.i.kb$f)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$f;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.g (com.ironsource.adqualitysdk.sdk.i.kb$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->j()Lcom/ironsource/adqualitysdk/sdk/i/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 3

    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ﻐ()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.kb.h (com.ironsource.adqualitysdk.sdk.i.kb$h)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;-><init>()V

    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    return v0
.end method


# virtual methods
.method final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    return-void
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return v0
.end method

.method final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return-void
.end method

.method final e()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->d()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method
