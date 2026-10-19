###### Class com.moat.analytics.mobile.glft.i (com.moat.analytics.mobile.glft.i)
.class Lcom/moat/analytics/mobile/glft/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/i$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/glft/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:J

.field private j:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/moat/analytics/mobile/glft/i$a;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/glft/i$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/glft/i;->b:I

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->c:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/moat/analytics/mobile/glft/i$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/glft/i$2;-><init>(Lcom/moat/analytics/mobile/glft/i;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/moat/analytics/mobile/glft/i$3;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/glft/i$3;-><init>(Lcom/moat/analytics/mobile/glft/i;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/i;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/glft/i;->e:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/i;->l:Lcom/moat/analytics/mobile/glft/i$a;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->j:Lcom/moat/analytics/mobile/glft/a/b/a;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->k:Ljava/util/List;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/moat/analytics/mobile/glft/i;->i:J

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "UPDATE_METADATA"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v2, "UPDATE_VIEW_INFO"

    invoke-direct {p2, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :try_start_6f
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->b()Z

    move-result p1

    const/4 p2, 0x3

    const-string v0, "MoatJavaScriptBridge"

    if-eqz p1, :cond_7b

    const-string p1, "bridge installed"

    goto :goto_7d

    :cond_7b
    const-string p1, "bridge not installed"

    :goto_7d
    invoke-static {p2, v0, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_85
    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/i;)I
    .registers 1

    iget p0, p0, Lcom/moat/analytics/mobile/glft/i;->b:I

    return p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/i;I)I
    .registers 2

    iput p1, p0, Lcom/moat/analytics/mobile/glft/i;->b:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "MoatJavaScriptBridge"

    const/4 v2, 0x6

    if-nez p1, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView is null. Can\'t "

    :goto_d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1b
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    if-nez p1, :cond_2d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript is not enabled in the given WebView. Can\'t "

    goto :goto_d

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->f()V

    return-void
.end method

.method private b()Z
    .registers 4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "installBridge"

    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/glft/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->a:Z

    invoke-static {}, Lcom/moat/analytics/mobile/glft/h;->a()Lcom/moat/analytics/mobile/glft/h;

    move-result-object v1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/moat/analytics/mobile/glft/h;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/i;)V

    return v0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/glft/i;)I
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/glft/i;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/glft/i;->b:I

    return v0
.end method

.method private c()V
    .registers 6

    const-string v0, "MoatJavaScriptBridge"

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v1

    :try_start_6
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/u;->a()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v1

    sget-object v2, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v1, v2, :cond_f

    return-void

    :cond_f
    iget-boolean v1, p0, Lcom/moat/analytics/mobile/glft/i;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    const/4 v1, 0x3

    const-string v3, "Ready for communication (setting environment variables)."

    invoke-static {v1, v0, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/glft/i;->d:Z

    :cond_1c
    const-string v1, "javascript:(function(d,l){function m(){function d(a){var b=a.c,c=a.a,f=a.b;a=a.f;var g=[];if(c)b[c]&&g.push(b[c].fn[0]);else for(key in b)if(b[key])for(var e=0,h=b[key].fn.length;e<h;e++)g.push(b[key].fn[e]);e=0;for(h=g.length;e<h;e++){var k=g[e];if(\'function\'===typeof k)try{f?k(f):k()}catch(l){}a&&delete b[c]}}function f(a,b,c){\'function\'===typeof a&&(b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]})}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};this.g=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea;c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={c:iymv,b:a,a:ewat};briz?d(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={c:bjmk,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.egpw=function(a){var b=a||kuea;ryup[b]=!0;var c={c:uqaj,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.sglu=function(a){var b={c:yhgt,b:a.event||a,f:!1};(a.adKey||kuea)!==kuea&&(b.a=a.adKey);d(b);return 0<Object.keys(yhgt).length}}\'undefined\'===typeof d.MoatMAK&&(d.MoatMAK=new m,d.MoatMAK.g(l),d.__zMoatInit__=!0)})(window,%s);"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception v1

    const-string v2, "Failed to initialize communication (did not set environment variables)."

    invoke-static {v0, p0, v2, v1}, Lcom/moat/analytics/mobile/glft/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->a:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bridge is not installed in the given WebView. Can\'t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MoatJavaScriptBridge"

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/u;->a()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->e:Ljava/lang/ref/WeakReference;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_d5

    const-string v1, "MoatJavaScriptBridge"

    const/4 v2, 0x3

    if-eqz v0, :cond_a5

    :try_start_14
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/i;->c:Z

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    goto/16 :goto_a5

    :cond_2a
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/glft/i;->c:Z

    :cond_37
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moat/analytics/mobile/glft/b;

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_68

    :cond_5b
    const-string v5, "Tracker has no subject"

    invoke-static {v2, v1, p0, v5}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/moat/analytics/mobile/glft/b;->c:Z

    if-nez v5, :cond_68

    invoke-virtual {p0, v4}, Lcom/moat/analytics/mobile/glft/i;->c(Lcom/moat/analytics/mobile/glft/b;)Z

    goto :goto_41

    :cond_68
    iget-boolean v5, v4, Lcom/moat/analytics/mobile/glft/b;->d:Z

    if-eqz v5, :cond_41

    const-string v5, "javascript: MoatMAK.mqjh(\"%s\")"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/glft/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "javascript: MoatMAK.sglu(%s)"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_9d

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v5

    new-instance v6, Lcom/moat/analytics/mobile/glft/i$1;

    invoke-direct {v6, p0}, Lcom/moat/analytics/mobile/glft/i$1;-><init>(Lcom/moat/analytics/mobile/glft/i;)V

    invoke-virtual {v5, v4, v6}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_41

    :cond_9d
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_41

    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_af

    const-string v0, "WebView ref became null, stopping tracking loop"

    :goto_ab
    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d1

    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView became null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_c2

    const-string v3, ""

    goto :goto_c4

    :cond_c2
    const-string v3, "based on null url"

    :goto_c4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stopping tracking loop"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :goto_d1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->f()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_d4} :catch_d5

    return-void

    :catch_d5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->f()V

    :cond_dc
    return-void
.end method

.method private d(Lcom/moat/analytics/mobile/glft/b;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Stopping view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/moat/analytics/mobile/glft/h;->a()Lcom/moat/analytics/mobile/glft/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/glft/h;->a(Lcom/moat/analytics/mobile/glft/b;)V

    :cond_11
    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private e()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Stopping metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/h;->a()Lcom/moat/analytics/mobile/glft/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/glft/h;->a(Lcom/moat/analytics/mobile/glft/i;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/i;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->c()V

    return-void
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/glft/i;)J
    .registers 3

    iget-wide v0, p0, Lcom/moat/analytics/mobile/glft/i;->i:J

    return-wide v0
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/glft/b;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/glft/i;->d(Lcom/moat/analytics/mobile/glft/b;)V

    goto :goto_15

    :cond_2b
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/i;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private g()Landroid/content/Context;
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/glft/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/glft/j;

    iget-object v0, v0, Lcom/moat/analytics/mobile/glft/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->d()V

    return-void
.end method

.method private h()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private i()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->j:Lcom/moat/analytics/mobile/glft/a/b/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->j:Lcom/moat/analytics/mobile/glft/a/b/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_11
    const-string v0, "_unknown_"

    :try_start_13
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/i;->j:Lcom/moat/analytics/mobile/glft/a/b/a;

    goto :goto_49

    :cond_3c
    const/4 v1, 0x3

    const-string v2, "MoatJavaScriptBridge"

    const-string v3, "Can\'t get app name, WebView is null."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_49
    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->j()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/glft/p;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/i;->l:Lcom/moat/analytics/mobile/glft/i$a;

    sget-object v5, Lcom/moat/analytics/mobile/glft/i$a;->a:Lcom/moat/analytics/mobile/glft/i$a;

    if-ne v4, v5, :cond_1c

    const-string v4, "0"

    goto :goto_1e

    :cond_1c
    const-string v4, "1"

    :goto_1e
    const-string v5, "versionHash"

    const-string v6, "0bbafd1ca55aa33048dfa8f9ed6e5644a7625d79"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appName"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "namespace"

    const-string v5, "GLFT"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v5, "2.1.0"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceOS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isNative"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_49

    const-string v1, "aqzx"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    const-string v0, "{}"

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "webViewReady"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcom/moat/analytics/mobile/glft/b;)V
    .registers 5

    if-eqz p1, :cond_22

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding tracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoatJavaScriptBridge"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript: MoatMAK.crts(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    goto :goto_1d

    :cond_18
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:%s.dispatchEvent(%s);"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    goto :goto_2a

    :cond_25
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2a
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "flushDispatchQueue"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_68

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    :goto_1f
    const/16 v5, 0xa

    if-ge v4, v5, :cond_31

    iget-object v5, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_31
    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    div-int/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v4, :cond_52

    iget-object v6, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_52
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_56

    :cond_68
    const/4 v0, 0x0

    :goto_69
    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c4

    if-ge v0, v3, :cond_c4

    add-int/lit8 v0, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_7b
    iget-object v6, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_af

    if-ge v0, v3, :cond_af

    add-int/lit8 v0, v0, 0x1

    iget-object v6, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_9d

    goto :goto_af

    :cond_9d
    iget-object v7, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-eqz v5, :cond_a6

    const/4 v5, 0x0

    goto :goto_ab

    :cond_a6
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ab
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_af
    :goto_af
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "javascript:%s.dispatchMany([%s])"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    goto :goto_69

    :cond_c4
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method b(Lcom/moat/analytics/mobile/glft/b;)Z
    .registers 8

    const-string v0, "startTracking"

    const-string v1, "MoatJavaScriptBridge"

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/moat/analytics/mobile/glft/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/glft/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_64

    :cond_1c
    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x3

    if-nez v0, :cond_32

    iget-boolean v0, p1, Lcom/moat/analytics/mobile/glft/b;->c:Z

    if-nez v0, :cond_2d

    const-string p1, "Tracker subject is null, won\'t start tracking"

    invoke-static {v3, v1, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_2d
    const-string v0, "Tracker subject is null at start"

    invoke-static {v3, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting tracking on tracker"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascript: MoatMAK.mqjh(\"%s\")"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/h;->a()Lcom/moat/analytics/mobile/glft/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->g()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lcom/moat/analytics/mobile/glft/h;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/b;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_65

    return v3

    :cond_64
    :goto_64
    return v2

    :catch_65
    move-exception p1

    const-string v0, "Failed to initialize impression start."

    invoke-static {v1, p0, v0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method c(Lcom/moat/analytics/mobile/glft/b;)Z
    .registers 8

    const-string v0, "MoatJavaScriptBridge"

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->h()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    const-string v4, "stopTracking"

    invoke-direct {p0, v1, v4}, Lcom/moat/analytics/mobile/glft/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-direct {p0, v4}, Lcom/moat/analytics/mobile/glft/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x3

    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ending tracking on tracker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, p0, v4}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javascript: MoatMAK.egpw(\"%s\")"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/glft/i;->d(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception v1

    const-string v2, "Failed to end impression."

    invoke-static {v0, p0, v2, v1}, Lcom/moat/analytics/mobile/glft/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    const/4 v2, 0x1

    :cond_4a
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->l:Lcom/moat/analytics/mobile/glft/i$a;

    sget-object v1, Lcom/moat/analytics/mobile/glft/i$a;->b:Lcom/moat/analytics/mobile/glft/i$a;

    if-ne v0, v1, :cond_54

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/i;->d(Lcom/moat/analytics/mobile/glft/b;)V

    goto :goto_57

    :cond_54
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->f()V

    :goto_57
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method protected finalize()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "finalize"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/i;->f()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_13
    return-void
.end method
