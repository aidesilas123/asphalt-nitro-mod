###### Class com.bytedance.sdk.component.b.AnonymousClass3 (com.bytedance.sdk.component.b$3)
.class Lcom/bytedance/sdk/component/b$3;
.super Ljava/lang/Object;
.source "TTPropHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b$b;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/component/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b;Lcom/bytedance/sdk/component/b$b;Z)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/component/b$3;->c:Lcom/bytedance/sdk/component/b;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b$3;->a:Lcom/bytedance/sdk/component/b$b;

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/b$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$3;->c:Lcom/bytedance/sdk/component/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/b;->h(Lcom/bytedance/sdk/component/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$3;->c:Lcom/bytedance/sdk/component/b;

    iget-object v2, p0, Lcom/bytedance/sdk/component/b$3;->a:Lcom/bytedance/sdk/component/b$b;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/b$3;->b:Z

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/component/b;->b(Lcom/bytedance/sdk/component/b;Lcom/bytedance/sdk/component/b$b;Z)V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_10} :catch_13
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_25

    :catch_13
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$3;->c:Lcom/bytedance/sdk/component/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/b;->b(Lcom/bytedance/sdk/component/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Lcom/bytedance/sdk/component/b$3;->c:Lcom/bytedance/sdk/component/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/b;->i(Lcom/bytedance/sdk/component/b;)I

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v0

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_11

    throw v1
.end method
