###### Class com.bytedance.sdk.openadsdk.core.settings.k (com.bytedance.sdk.openadsdk.core.settings.k)
.class public Lcom/bytedance/sdk/openadsdk/core/settings/k;
.super Ljava/lang/Object;
.source "SdkSwitch.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static a(I)V
    .registers 6

    const-string v0, "SdkSwitch"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v2, 0x2

    if-eq p0, v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x0

    :try_start_a
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    if-eq v4, p0, :cond_18

    :try_start_12
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_23

    :catchall_16
    move-exception p0

    goto :goto_1c

    :cond_18
    const/4 v1, 0x0

    goto :goto_23

    :catchall_1a
    move-exception p0

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    if-eqz v1, :cond_4a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch status changed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a()Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a/d;->b()V

    goto :goto_4a

    :cond_47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a/d;->c()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method
