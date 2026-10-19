###### Class com.bytedance.sdk.openadsdk.core.m (com.bytedance.sdk.openadsdk.core.m)
.class public Lcom/bytedance/sdk/openadsdk/core/m;
.super Ljava/lang/Object;
.source "InitLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/utils/a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/m;
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m$a;->a()Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Z)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Z

    goto :goto_31

    :cond_13
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    goto :goto_31

    :catchall_29
    move-exception v0

    const-string v1, "registerActivityLifecycleError"

    const-string v2, "registerActivityLifecycle"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->a()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.m.a (com.bytedance.sdk.openadsdk.core.m$a)
.class Lcom/bytedance/sdk/openadsdk/core/m$a;
.super Ljava/lang/Object;
.source "InitLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/core/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/m$a;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/core/m;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m$a;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    return-object v0
.end method
