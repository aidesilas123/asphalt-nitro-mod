###### Class com.bytedance.sdk.component.e.a.f.a (com.bytedance.sdk.component.e.a.f.a)
.class public Lcom/bytedance/sdk/component/e/a/f/a;
.super Ljava/lang/Object;
.source "MyTrack.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/component/e/a/f/b;


# direct methods
.method public static a()Lcom/bytedance/sdk/component/e/a/f/b;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/e/a/f/a;->a:Lcom/bytedance/sdk/component/e/a/f/b;

    if-nez v0, :cond_2c

    const-class v0, Lcom/bytedance/sdk/component/e/a/f/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/e/a/f/a;->a:Lcom/bytedance/sdk/component/e/a/f/b;

    if-nez v1, :cond_27

    new-instance v1, Lcom/bytedance/sdk/component/e/a/f/c;

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/e/a/f/f;

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/component/e/a/f/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/e/a/f/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f/e;)V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/f/a;->a:Lcom/bytedance/sdk/component/e/a/f/b;

    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    :cond_2c
    :goto_2c
    sget-object v0, Lcom/bytedance/sdk/component/e/a/f/a;->a:Lcom/bytedance/sdk/component/e/a/f/b;

    return-object v0
.end method
