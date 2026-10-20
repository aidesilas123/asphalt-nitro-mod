###### Class com.moat.analytics.mobile.glft.j (com.moat.analytics.mobile.glft.j)
.class Lcom/moat/analytics/mobile/glft/j;
.super Lcom/moat/analytics/mobile/glft/MoatAnalytics;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/u$b;


# instance fields
.field a:Lcom/moat/analytics/mobile/glft/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/j;->c:Z

    return-void
.end method

.method private a(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V
    .registers 5

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/u;->f()V

    if-nez p2, :cond_a

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/j;->c:Z

    if-eqz v0, :cond_17

    const/4 p1, 0x3

    const-string p2, "MoatAnalytics"

    const-string v0, "Moat SDK has already been started."

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/j;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/j;->c:Z

    invoke-static {p2}, Lcom/moat/analytics/mobile/glft/a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u$b;)V

    iget-boolean p1, p1, Lcom/moat/analytics/mobile/glft/MoatOptions;->disableAdIdCollection:Z

    if-nez p1, :cond_36

    invoke-static {p2}, Lcom/moat/analytics/mobile/glft/p;->a(Landroid/content/Context;)V

    :cond_36
    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/j;->a:Lcom/moat/analytics/mobile/glft/f;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/moat/analytics/mobile/glft/f;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/moat/analytics/mobile/glft/f$a;->a:Lcom/moat/analytics/mobile/glft/f$a;

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/f;-><init>(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/f$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/j;->a:Lcom/moat/analytics/mobile/glft/f;

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing native display tracking with partner code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoatAnalytics"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/j;->c:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/j;->d()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/j;->d:Ljava/lang/String;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/u;->a()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object p1

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne p1, v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/j;->d()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_17
    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/glft/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/glft/MoatOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/moat/analytics/mobile/glft/j;->start(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/glft/j;->a(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method
