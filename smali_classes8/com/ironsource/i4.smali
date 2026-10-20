###### Class com.json.i4 (com.ironsource.i4)
.class public Lcom/ironsource/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/b5;

.field private b:Lcom/ironsource/d4;

.field private c:Lcom/ironsource/j5;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/ironsource/d4;Lcom/ironsource/b5;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/ironsource/d4;->c()Lcom/ironsource/j5;

    move-result-object v0

    if-eqz v0, :cond_1c

    iput-object p1, p0, Lcom/ironsource/i4;->b:Lcom/ironsource/d4;

    iput-object p2, p0, Lcom/ironsource/i4;->a:Lcom/ironsource/b5;

    invoke-virtual {p1}, Lcom/ironsource/d4;->c()Lcom/ironsource/j5;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/i4;->c:Lcom/ironsource/j5;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/i4;->d:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_1c
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null formatter not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null configuration not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/ironsource/i4;)Lcom/ironsource/d4;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/i4;->b:Lcom/ironsource/d4;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/i4;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/i4;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/i4;->b:Lcom/ironsource/d4;

    invoke-virtual {v0}, Lcom/ironsource/d4;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "EventsTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private d(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/i4;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ironsource/i4$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/i4$a;-><init>(Lcom/ironsource/i4;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/i4;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/i4;->b:Lcom/ironsource/d4;

    invoke-virtual {v0}, Lcom/ironsource/d4;->a()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eventname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ironsource/i4;->a:Lcom/ironsource/b5;

    invoke-interface {p1}, Lcom/ironsource/b5;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/i4;->d(Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v0, p2}, Lcom/ironsource/i4;->d(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ironsource/i4;->c:Lcom/ironsource/j5;

    invoke-interface {p1, v0}, Lcom/ironsource/j5;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/i4;->e(Ljava/lang/String;)V

    return-void
.end method
