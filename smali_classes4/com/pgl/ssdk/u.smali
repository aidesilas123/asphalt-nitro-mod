###### Class com.pgl.ssdk.u (com.pgl.ssdk.u)
.class public Lcom/pgl/ssdk/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/pgl/ssdk/x;

.field private b:Lcom/pgl/ssdk/r;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pgl/ssdk/x;->a(I)Lcom/pgl/ssdk/x;

    move-result-object v0

    iput-object v0, p0, Lcom/pgl/ssdk/u;->a:Lcom/pgl/ssdk/x;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pgl/ssdk/s;)V
    .registers 2

    invoke-direct {p0}, Lcom/pgl/ssdk/u;-><init>()V

    return-void
.end method

.method public static a()Lcom/pgl/ssdk/u;
    .registers 1

    invoke-static {}, Lcom/pgl/ssdk/t;->a()Lcom/pgl/ssdk/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/pgl/ssdk/r;
    .registers 5

    iget-object v0, p0, Lcom/pgl/ssdk/u;->b:Lcom/pgl/ssdk/r;

    if-nez v0, :cond_40

    const-class v0, Lcom/pgl/ssdk/u;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/pgl/ssdk/u;->b:Lcom/pgl/ssdk/r;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3d

    if-nez v1, :cond_3b

    const-string v1, "ssdk_io_handler"

    :try_start_d
    iget-object v2, p0, Lcom/pgl/ssdk/u;->a:Lcom/pgl/ssdk/x;

    invoke-virtual {v2}, Lcom/pgl/ssdk/x;->a()Lcom/pgl/ssdk/w;

    move-result-object v2

    check-cast v2, Lcom/pgl/ssdk/v;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v3}, Lcom/pgl/ssdk/v;->a(Lcom/pgl/ssdk/q;)V

    invoke-virtual {v2, v1}, Lcom/pgl/ssdk/v;->a(Ljava/lang/String;)V

    goto :goto_39

    :cond_1f
    invoke-static {}, Lcom/pgl/ssdk/m;->b()Lcom/pgl/ssdk/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pgl/ssdk/m;->a()Z

    move-result v2

    if-nez v2, :cond_38

    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/pgl/ssdk/v;

    invoke-direct {v1, v2, v3}, Lcom/pgl/ssdk/v;-><init>(Landroid/os/HandlerThread;Lcom/pgl/ssdk/q;)V

    move-object v2, v1

    goto :goto_39

    :cond_38
    move-object v2, v3

    :goto_39
    iput-object v2, p0, Lcom/pgl/ssdk/u;->b:Lcom/pgl/ssdk/r;

    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_3d

    throw v1

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/pgl/ssdk/u;->b:Lcom/pgl/ssdk/r;

    return-object v0
.end method
