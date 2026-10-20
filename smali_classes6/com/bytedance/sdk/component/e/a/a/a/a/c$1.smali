###### Class com.bytedance.sdk.component.e.a.a.a.a.c.AnonymousClass1 (com.bytedance.sdk.component.e.a.a.a.a.c$1)
.class Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;
.super Ljava/lang/Object;
.source "DBInsertMemRepo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/e/a/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/e/a/a/a/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    iget-object v1, v1, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/a/a/a/c;Z)Z

    monitor-exit v0

    return-void

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    iget-object v3, v3, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->b:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    iget-object v3, v3, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->a(Lcom/bytedance/sdk/component/e/a/a/a/a/c;Z)Z

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_31

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/e/a/a/a/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/a/a/a/a/c;->d(Ljava/util/List;)V

    return-void

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method
