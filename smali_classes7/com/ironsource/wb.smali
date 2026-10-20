###### Class com.json.wb (com.ironsource.wb)
.class public Lcom/ironsource/wb;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/wb$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ironsource/wb;


# instance fields
.field private b:Lcom/ironsource/wb$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/ironsource/wb$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/wb$a;-><init>(Lcom/ironsource/wb;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/wb;->b:Lcom/ironsource/wb$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/ironsource/wb;->b:Lcom/ironsource/wb$a;

    invoke-virtual {v0}, Lcom/ironsource/wb$a;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/wb;
    .registers 2

    const-class v0, Lcom/ironsource/wb;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/wb;->a:Lcom/ironsource/wb;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/wb;

    invoke-direct {v1}, Lcom/ironsource/wb;-><init>()V

    sput-object v1, Lcom/ironsource/wb;->a:Lcom/ironsource/wb;

    :cond_e
    sget-object v1, Lcom/ironsource/wb;->a:Lcom/ironsource/wb;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/wb;->b:Lcom/ironsource/wb$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/ironsource/wb$a;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
