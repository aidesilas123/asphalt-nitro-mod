###### Class com.mbridge.msdk.foundation.same.net.i (com.mbridge.msdk.foundation.same.net.i)
.class public Lcom/mbridge/msdk/foundation/same/net/i;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

.field private c:Lcom/mbridge/msdk/foundation/same/net/h;

.field private d:Lcom/mbridge/msdk/foundation/same/net/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/foundation/same/net/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/i;->a()V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/f/a;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/i;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    invoke-direct {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/f/a;-><init>(Lcom/mbridge/msdk/foundation/same/net/stack/b;Lcom/mbridge/msdk/foundation/same/net/c;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->c:Lcom/mbridge/msdk/foundation/same/net/h;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/foundation/same/net/c;Lcom/mbridge/msdk/foundation/same/net/stack/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/i;->a()V

    goto :goto_b

    :cond_9
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/i;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    :goto_b
    new-instance p2, Lcom/mbridge/msdk/foundation/same/net/f/a;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    invoke-direct {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/f/a;-><init>(Lcom/mbridge/msdk/foundation/same/net/stack/b;Lcom/mbridge/msdk/foundation/same/net/c;)V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/i;->c:Lcom/mbridge/msdk/foundation/same/net/h;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    return-void
.end method

.method private a()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/stack/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/net/stack/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/stack/OkHttpStack;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/net/stack/OkHttpStack;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/foundation/same/net/j;)V
    .registers 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->c(Lcom/mbridge/msdk/foundation/same/net/j;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/j;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "network-discard-cancelled"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V

    goto :goto_63

    :cond_20
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->d(Lcom/mbridge/msdk/foundation/same/net/j;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->c:Lcom/mbridge/msdk/foundation/same/net/h;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/h;->a(Lcom/mbridge/msdk/foundation/same/net/j;)Lcom/mbridge/msdk/foundation/same/net/f/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v1, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_34
    .catch Lcom/mbridge/msdk/foundation/same/net/b/a; {:try_start_5 .. :try_end_34} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    goto :goto_63

    :catch_35
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    new-instance v1, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    goto :goto_63

    :catch_5d
    move-exception v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/i;->d:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v1, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    :goto_63
    return-void
.end method
