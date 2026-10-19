###### Class com.moat.analytics.mobile.glft.m (com.moat.analytics.mobile.glft.m)
.class Lcom/moat/analytics/mobile/glft/m;
.super Lcom/moat/analytics/mobile/glft/MoatFactory;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/MoatFactory;-><init>()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/m;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x3

    const-string v1, "MoatFactory"

    const-string v2, "Failed to initialize MoatFactory. Please check that you\'ve initialized the Moat SDK correctly."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/glft/l;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/glft/l;-><init>()V

    throw v0
.end method

.method private a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;"
        }
    .end annotation

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/m$3;

    invoke-direct {p1, p0, v0, p2}, Lcom/moat/analytics/mobile/glft/m$3;-><init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    new-instance p2, Lcom/moat/analytics/mobile/glft/q$a;

    invoke-direct {p2}, Lcom/moat/analytics/mobile/glft/q$a;-><init>()V

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/glft/v;->a(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/glft/m$4;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/glft/m$4;-><init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/s$a;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/s$a;-><init>()V

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/glft/v;->a(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/glft/NativeVideoTracker;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/m$2;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/glft/m$2;-><init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;)V

    new-instance v0, Lcom/moat/analytics/mobile/glft/w$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/glft/w$a;-><init>()V

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/glft/v;->a(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/glft/WebAdTracker;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/m$1;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/glft/m$1;-><init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;)V

    new-instance v0, Lcom/moat/analytics/mobile/glft/w$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/glft/w$a;-><init>()V

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/glft/v;->a(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/glft/WebAdTracker;

    return-object p1
.end method

.method private a(Lcom/moat/analytics/mobile/glft/MoatPlugin;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/glft/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/glft/MoatPlugin;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/glft/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/glft/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/j;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/glft/MoatPlugin;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/glft/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/m;->a(Lcom/moat/analytics/mobile/glft/MoatPlugin;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/glft/MoatPlugin;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/glft/m;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$c;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$c;-><init>()V

    return-object p1
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/m;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$d;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$d;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/m;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/WebAdTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$f;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$f;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/m;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$f;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$f;-><init>()V

    return-object p1
.end method
