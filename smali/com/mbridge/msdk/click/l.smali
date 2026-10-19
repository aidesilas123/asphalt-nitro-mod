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
