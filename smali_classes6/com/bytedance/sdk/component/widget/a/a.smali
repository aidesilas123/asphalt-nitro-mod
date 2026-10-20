###### Class com.bytedance.sdk.component.widget.a.a (com.bytedance.sdk.component.widget.a.a)
.class public Lcom/bytedance/sdk/component/widget/a/a;
.super Ljava/lang/Object;
.source "BaseAdapterInstance.java"


# static fields
.field private static volatile b:Lcom/bytedance/sdk/component/widget/a/a;


# instance fields
.field private volatile a:Lcom/bytedance/sdk/component/widget/a/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/widget/a/a;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/widget/a/a;->b:Lcom/bytedance/sdk/component/widget/a/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/component/widget/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/widget/a/a;->b:Lcom/bytedance/sdk/component/widget/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/component/widget/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/widget/a/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/widget/a/a;->b:Lcom/bytedance/sdk/component/widget/a/a;

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
    sget-object v0, Lcom/bytedance/sdk/component/widget/a/a;->b:Lcom/bytedance/sdk/component/widget/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/widget/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/a/a;->a:Lcom/bytedance/sdk/component/widget/a/b;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/component/widget/a/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/a/a;->a:Lcom/bytedance/sdk/component/widget/a/b;

    return-object v0
.end method
