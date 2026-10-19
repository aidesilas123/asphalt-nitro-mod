###### Class com.bytedance.sdk.openadsdk.core.d.a (com.bytedance.sdk.openadsdk.core.d.a)
.class public Lcom/bytedance/sdk/openadsdk/core/d/a;
.super Ljava/lang/Object;
.source "FrequentCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field private static volatile b:Z

.field private static volatile c:J


# instance fields
.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/core/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Lcom/bytedance/sdk/openadsdk/core/settings/e;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/settings/e;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Landroid/os/Handler;

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sput-wide p1, Lcom/bytedance/sdk/openadsdk/core/d/a;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/settings/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->x()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/settings/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->w()J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_4f

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-lt v5, v2, :cond_4f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/a$a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gtz v2, :cond_3f

    sub-long/2addr v3, v7

    invoke-direct {p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(J)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5c

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/a$a;

    invoke-direct {v3, v0, v1, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a$1;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_4f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/a$a;

    invoke-direct {v3, v0, v1, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a$1;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_5c

    :goto_59
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Z)V

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(J)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Z)V

    :goto_15
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/a$a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_3e
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_4a
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, -0x80000000

    const-string v3, ""

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_73

    if-ge v2, v5, :cond_56

    move-object v3, v4

    move v2, v5

    goto :goto_56

    :cond_71
    monitor-exit p0

    return-object v3

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.d.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.d.a$1)
.class Lcom/bytedance/sdk/openadsdk/core/d/a$1;
.super Ljava/lang/Object;
.source "FrequentCallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Z)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.d.a.C0133a (com.bytedance.sdk.openadsdk.core.d.a$a)
.class Lcom/bytedance/sdk/openadsdk/core/d/a$a;
.super Ljava/lang/Object;
.source "FrequentCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->a:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/a$a;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/d/a$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
