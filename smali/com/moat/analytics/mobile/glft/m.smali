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

###### Class com.moat.analytics.mobile.glft.m.AnonymousClass1 (com.moat.analytics.mobile.glft.m$1)
.class Lcom/moat/analytics/mobile/glft/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/m;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$a<",
        "Lcom/moat/analytics/mobile/glft/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/m;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/m$1;->b:Lcom/moat/analytics/mobile/glft/m;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/m$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Lcom/moat/analytics/mobile/glft/WebAdTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/m$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "MoatFactory"

    const/4 v2, 0x3

    if-nez v0, :cond_17

    const-string v0, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating WebAdTracker for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/glft/w;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/glft/w;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.glft.m.AnonymousClass2 (com.moat.analytics.mobile.glft.m$2)
.class Lcom/moat/analytics/mobile/glft/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/m;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$a<",
        "Lcom/moat/analytics/mobile/glft/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/m;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/m$2;->b:Lcom/moat/analytics/mobile/glft/m;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/m$2;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Lcom/moat/analytics/mobile/glft/WebAdTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/m$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "MoatFactory"

    const/4 v2, 0x3

    if-nez v0, :cond_17

    const-string v0, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating WebAdTracker for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/x;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->c()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_56

    const-string v3, ""

    goto :goto_58

    :cond_56
    const-string v3, "not "

    :goto_58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "found inside of ad container."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/glft/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/moat/analytics/mobile/glft/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/glft/w;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.glft.m.AnonymousClass3 (com.moat.analytics.mobile.glft.m$3)
.class Lcom/moat/analytics/mobile/glft/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/m;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$a<",
        "Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/moat/analytics/mobile/glft/m;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/m$3;->c:Lcom/moat/analytics/mobile/glft/m;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/m$3;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/glft/m$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/m$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "MoatFactory"

    const/4 v2, 0x3

    if-nez v0, :cond_17

    const-string v0, "Target view is null. Not creating NativeDisplayTracker."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/m$3;->b:Ljava/util/Map;

    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_56

    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating NativeDisplayTracker for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/glft/q;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/m$3;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/moat/analytics/mobile/glft/q;-><init>(Landroid/view/View;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_56
    :goto_56
    const-string v0, "adIds is null or empty. NativeDisplayTracker initialization failed."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.glft.m.AnonymousClass4 (com.moat.analytics.mobile.glft.m$4)
.class Lcom/moat/analytics/mobile/glft/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/m;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$a<",
        "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/m;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/m$4;->b:Lcom/moat/analytics/mobile/glft/m;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    const-string v1, "MoatFactory"

    const/4 v2, 0x3

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    const-string v0, "Creating NativeVideo tracker."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/glft/s;

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/glft/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_1f
    const-string v0, "partnerCode is null or empty. NativeVideoTracker initialization failed."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0
.end method
