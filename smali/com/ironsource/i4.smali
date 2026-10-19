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

###### Class com.ironsource.i4.a (com.ironsource.i4$a)
.class Lcom/ironsource/i4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/i4;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/i4;


# direct methods
.method constructor <init>(Lcom/ironsource/i4;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    iput-object p2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/ironsource/wa;

    invoke-direct {v0}, Lcom/ironsource/wa;-><init>()V

    iget-object v1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v1}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/d4;->d()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "POST"

    iget-object v3, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v3}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/d4;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v0, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v0}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d4;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/w5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;

    move-result-object v0

    goto :goto_54

    :cond_32
    const-string v2, "GET"

    iget-object v3, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v3}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/d4;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v0, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v0}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d4;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/w5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;

    move-result-object v0

    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ironsource/wa;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/i4;->b(Lcom/ironsource/i4;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_71
    return-void
.end method
