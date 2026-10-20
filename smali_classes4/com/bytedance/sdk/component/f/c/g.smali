###### Class com.bytedance.sdk.component.f.c.g (com.bytedance.sdk.component.f.c.g)
.class public Lcom/bytedance/sdk/component/f/c/g;
.super Ljava/lang/Object;
.source "TncInstanceManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/component/f/c/g;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/f/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/f/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/f/c/g;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/f/c/g;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/bytedance/sdk/component/f/c/g;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/component/f/c/g;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/component/f/c/g;->a:Lcom/bytedance/sdk/component/f/c/g;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/bytedance/sdk/component/f/c/g;->a:Lcom/bytedance/sdk/component/f/c/g;

    if-nez v1, :cond_13

    new-instance v1, Lcom/bytedance/sdk/component/f/c/g;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/f/c/g;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/f/c/g;->a:Lcom/bytedance/sdk/component/f/c/g;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    :cond_18
    :goto_18
    sget-object v1, Lcom/bytedance/sdk/component/f/c/g;->a:Lcom/bytedance/sdk/component/f/c/g;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/f/c/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/f/c/a;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/bytedance/sdk/component/f/c/a;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/component/f/c/a;-><init>(Landroid/content/Context;I)V

    sget-object p2, Lcom/bytedance/sdk/component/f/c/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public a(I)Lcom/bytedance/sdk/component/f/c/e;
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/component/f/c/g;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/f/c/e;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/bytedance/sdk/component/f/c/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/f/c/e;-><init>(I)V

    sget-object v1, Lcom/bytedance/sdk/component/f/c/g;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method
