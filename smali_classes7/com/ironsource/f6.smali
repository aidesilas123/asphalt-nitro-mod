###### Class com.json.f6 (com.ironsource.f6)
.class public Lcom/ironsource/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/y6;


# static fields
.field private static final a:Ljava/lang/String; = "f6"


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/ironsource/d6;

.field private f:Lcom/ironsource/y5;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/b6;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/y5;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ironsource/f6;->g:Landroid/content/Context;

    new-instance p2, Lcom/ironsource/d6;

    invoke-direct {p2}, Lcom/ironsource/d6;-><init>()V

    iput-object p2, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    invoke-virtual {p2, p3}, Lcom/ironsource/d6;->g(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ironsource/f6;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    invoke-virtual {p2, p1}, Lcom/ironsource/d6;->a(Lcom/ironsource/b6;)V

    iput-object p4, p0, Lcom/ironsource/f6;->f:Lcom/ironsource/y5;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/f6;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/f6;->g:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/f6;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/f6;Lcom/ironsource/d6;)Lcom/ironsource/d6;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    return-object p1
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ironsource/f6;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/ironsource/f6;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/f6;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ironsource/f6;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_20
    return-object p1
.end method

.method static synthetic g(Lcom/ironsource/f6;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/f6;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/ironsource/f6;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/f6;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ironsource/f6;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/f6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/f6;->a:Ljava/lang/String;

    const-string v1, "ISNAdViewWebPresenter | createWebView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/f6;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/c6;

    invoke-direct {v1, p0}, Lcom/ironsource/c6;-><init>(Lcom/ironsource/f6;)V

    const-string v2, "containerMsgHandler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/e6;

    new-instance v2, Lcom/ironsource/f6$c;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/f6$c;-><init>(Lcom/ironsource/f6;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ironsource/e6;-><init>(Lcom/ironsource/y6$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/ironsource/od;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    iget-object v0, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/ironsource/d6;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic k(Lcom/ironsource/f6;)Lcom/ironsource/d6;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    return-object p0
.end method

.method private l(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private m(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic n(Lcom/ironsource/f6;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/f6;->o()V

    return-void
.end method

.method private declared-synchronized o()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/f6;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/f6;->g:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/ironsource/f6;->a:Ljava/lang/String;

    const-string v1, "performCleanup"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/q5;->a:Lcom/ironsource/q5;

    new-instance v1, Lcom/ironsource/f6$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/f6$b;-><init>(Lcom/ironsource/f6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "action parameter empty"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/f6;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-object v0, Lcom/ironsource/f6;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to perform WebView Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_22
    const-string v0, "onPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p1, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    :goto_2f
    iget-object p1, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    goto :goto_40

    :cond_32
    const-string v0, "onResume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    goto :goto_2f

    :goto_40
    invoke-virtual {p1, p2}, Lcom/ironsource/d6;->f(Ljava/lang/String;)V

    goto :goto_4f

    :cond_44
    const-string p1, "action not supported"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/f6;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_49} :catch_4a

    goto :goto_4f

    :catch_4a
    const-string p1, "failed to perform action"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/f6;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    invoke-virtual {p1, p2}, Lcom/ironsource/d6;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception p1

    sget-object p2, Lcom/ironsource/f6;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHandleGetViewVisibility fail with reason: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/f6;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/d6;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/ironsource/q5;->a:Lcom/ironsource/q5;

    new-instance v1, Lcom/ironsource/f6$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ironsource/f6$a;-><init>(Lcom/ironsource/f6;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/ironsource/d6;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/d6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    sget-object p2, Lcom/ironsource/f6;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageToAd fail message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lcom/ironsource/y5;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/f6;->f:Lcom/ironsource/y5;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/f6;->c:Ljava/lang/String;

    return-void
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/f6;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessageFromAd(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/f6;->e:Lcom/ironsource/d6;

    invoke-virtual {v0, p1}, Lcom/ironsource/d6;->c(Ljava/lang/String;)V

    return-void
.end method
