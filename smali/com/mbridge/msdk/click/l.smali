###### Class com.mbridge.msdk.click.l (com.mbridge.msdk.click.l)
.class public Lcom/mbridge/msdk/click/l;
.super Ljava/lang/Object;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/click/l$a;
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static final d:Ljava/lang/String; = "l"


# instance fields
.field b:Z

.field c:Z

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/mbridge/msdk/c/e;

.field private i:Lcom/mbridge/msdk/click/l$a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/mbridge/msdk/click/l;->e:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mbridge/msdk/click/l;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/l;->p:Z

    new-instance v0, Lcom/mbridge/msdk/click/l$4;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/l$4;-><init>(Lcom/mbridge/msdk/click/l;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/click/l$5;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/l$5;-><init>(Lcom/mbridge/msdk/click/l;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->s:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->h:Lcom/mbridge/msdk/c/e;

    if-nez v0, :cond_45

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->h:Lcom/mbridge/msdk/c/e;

    :cond_45
    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->h:Lcom/mbridge/msdk/c/e;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->V()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/l;->m:Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->h:Lcom/mbridge/msdk/c/e;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aa()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/mbridge/msdk/click/l;->e:I

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->h:Lcom/mbridge/msdk/c/e;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aa()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/mbridge/msdk/click/l;->f:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/l;I)I
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/click/l;->o:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    new-instance v1, Lcom/mbridge/msdk/click/l$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/mbridge/msdk/click/l$2;-><init>(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/mbridge/msdk/click/l$3;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/click/l$3;-><init>(Lcom/mbridge/msdk/click/l;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    :cond_14
    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/click/l$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mbridge/msdk/click/l$1;-><init>(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/mbridge/msdk/click/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/click/l;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/mbridge/msdk/click/l;->f:I

    iput p1, p0, Lcom/mbridge/msdk/click/l;->e:I

    sget-object p1, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/l;->k:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mbridge/msdk/click/l;->k:Ljava/lang/String;

    const-string v3, "*/*"

    const-string v4, "utf-8"

    move-object v1, p4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_31
    iget-boolean p1, p0, Lcom/mbridge/msdk/click/l;->m:Z

    if-eqz p1, :cond_53

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4d

    const-string p2, "Referer"

    iget-object p3, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object p2, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p2, p4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6f

    :cond_53
    iget-object p1, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    goto :goto_6f

    :catchall_59
    move-exception p1

    :try_start_5a
    iget-object p2, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    if-eqz p2, :cond_6f

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->n:Ljava/lang/String;

    invoke-interface {p2, p3, p4, p1, v0}, Lcom/mbridge/msdk/click/l$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/l;->q:Z

    return p1
.end method

.method private b()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->d()V

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->c()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/l;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/l;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/l;->p:Z

    return p1
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/click/l;)V
    .registers 5

    sget-object v0, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    if-eqz v1, :cond_29

    iget-object v2, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/l;->p:Z

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p0}, Lcom/mbridge/msdk/click/l$a;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_1f
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    goto :goto_29

    :catchall_14
    move-exception p0

    :try_start_15
    sget-object v1, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catch_1f
    move-exception p0

    sget-object v1, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    return-object p0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/click/l;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->c()V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->s:Ljava/lang/Runnable;

    iget p0, p0, Lcom/mbridge/msdk/click/l;->e:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/click/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->d()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/click/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->c()V

    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/click/l;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/l;->m:Z

    return p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/click/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->b()V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/click/l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/click/l;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->d()V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->r:Ljava/lang/Runnable;

    iget p0, p0, Lcom/mbridge/msdk/click/l;->f:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/click/l;)V
    .registers 5

    sget-object v0, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/mbridge/msdk/click/l;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    if-eqz v1, :cond_2e

    iget-object v2, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/l;->p:Z

    iget-object p0, p0, Lcom/mbridge/msdk/click/l;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p0}, Lcom/mbridge/msdk/click/l$a;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_24
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_2e

    :catchall_19
    move-exception p0

    :try_start_1a
    sget-object v1, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :catch_24
    move-exception p0

    sget-object v1, Lcom/mbridge/msdk/click/l;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V
    .registers 7

    const-string v0, "OverrideUrlLoadingListener can not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V
    .registers 8

    const-string v0, "OverrideUrlLoadingListener can not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/mbridge/msdk/click/l;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/l;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/click/l;->i:Lcom/mbridge/msdk/click/l$a;

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

###### Class com.mbridge.msdk.click.l.AnonymousClass1 (com.mbridge.msdk.click.l$1)
.class final Lcom/mbridge/msdk/click/l$1;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$1;->d:Lcom/mbridge/msdk/click/l;

    iput-object p2, p0, Lcom/mbridge/msdk/click/l$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/l$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/l$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$1;->d:Lcom/mbridge/msdk/click/l;

    iget-object v1, p0, Lcom/mbridge/msdk/click/l$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/click/l$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/click/l$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class com.mbridge.msdk.click.l.AnonymousClass2 (com.mbridge.msdk.click.l$2)
.class final Lcom/mbridge/msdk/click/l$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-object p2, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/l$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_3
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    :try_start_0
    const-string p3, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_19

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    return-void

    :cond_19
    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-boolean v0, p3, Lcom/mbridge/msdk/click/l;->c:Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_2a

    const-string p3, "has_first_started"

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_2a
    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-boolean v0, p1, Lcom/mbridge/msdk/click/l;->b:Z

    :goto_2e
    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_61

    :try_start_33
    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3, p2}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p3

    if-eqz p3, :cond_57

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/mbridge/msdk/click/l$a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2, v0}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    goto :goto_5c

    :cond_57
    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->e(Lcom/mbridge/msdk/click/l;)V

    :goto_5c
    monitor-exit p1

    goto :goto_65

    :catchall_5e
    move-exception p2

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_33 .. :try_end_60} :catchall_5e

    :try_start_60
    throw p2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p4

    monitor-enter p4

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->j(Lcom/mbridge/msdk/click/l;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p4
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_32

    iget-object p4, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p4}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p4

    if-eqz p4, :cond_31

    iget-object p4, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p4}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->k(Lcom/mbridge/msdk/click/l;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, p1, p3, v0}, Lcom/mbridge/msdk/click/l$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    :try_start_0
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->IS_SP_CBT_CF:Z

    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_9
    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/click/l;->c:Z

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->f(Lcom/mbridge/msdk/click/l;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->g(Lcom/mbridge/msdk/click/l;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p1

    return v1

    :cond_21
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mbridge/msdk/click/l$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->g(Lcom/mbridge/msdk/click/l;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p1

    return v1

    :cond_4b
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_88

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->h(Lcom/mbridge/msdk/click/l;)Z

    move-result p1

    if-eqz p1, :cond_7e

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    const-string v0, "Referer"

    iget-object v2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v2}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_87

    :cond_7e
    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_87
    return v1

    :catchall_88
    move-exception p2

    :try_start_89
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p2
.end method

###### Class com.mbridge.msdk.click.l.AnonymousClass3 (com.mbridge.msdk.click.l$3)
.class final Lcom/mbridge/msdk/click/l$3;
.super Landroid/webkit/WebChromeClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$3;->a:Lcom/mbridge/msdk/click/l;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    const/4 p1, 0x1

    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_34

    :try_start_4
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$3;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;)Z

    move-result p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$3;->a:Lcom/mbridge/msdk/click/l;

    iget-boolean v0, p2, Lcom/mbridge/msdk/click/l;->c:Z

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->l(Lcom/mbridge/msdk/click/l;)V

    :cond_1a
    iget-object p2, p0, Lcom/mbridge/msdk/click/l$3;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$3;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/click/l$a;->c(Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_34
    return-void
.end method

###### Class com.mbridge.msdk.click.l.AnonymousClass4 (com.mbridge.msdk.click.l$4)
.class final Lcom/mbridge/msdk/click/l$4;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$4;->a:Lcom/mbridge/msdk/click/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$4;->a:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$4;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$4;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->m(Lcom/mbridge/msdk/click/l;)V

    return-void
.end method

###### Class com.mbridge.msdk.click.l.AnonymousClass5 (com.mbridge.msdk.click.l$5)
.class final Lcom/mbridge/msdk/click/l$5;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$5;->a:Lcom/mbridge/msdk/click/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$5;->a:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$5;->a:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$5;->a:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->m(Lcom/mbridge/msdk/click/l;)V

    return-void
.end method

###### Class com.mbridge.msdk.click.l.a (com.mbridge.msdk.click.l$a)
.class interface abstract Lcom/mbridge/msdk/click/l$a;
.super Ljava/lang/Object;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method
