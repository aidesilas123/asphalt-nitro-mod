###### Class com.bytedance.sdk.openadsdk.core.f (com.bytedance.sdk.openadsdk.core.f)
.class Lcom/bytedance/sdk/openadsdk/core/f;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/f$b;,
        Lcom/bytedance/sdk/openadsdk/core/f$a;,
        Lcom/bytedance/sdk/openadsdk/core/f$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/f$c;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    if-nez p1, :cond_1b

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/f$c;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1b

    :catchall_1b
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/f$c;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    return-object v0
.end method
