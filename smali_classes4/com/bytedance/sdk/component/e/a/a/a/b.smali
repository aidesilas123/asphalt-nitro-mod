###### Class com.bytedance.sdk.component.e.a.a.a.b (com.bytedance.sdk.component.e.a.a.a.b)
.class Lcom/bytedance/sdk/component/e/a/a/a/b;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/e/a/a/a/b$a;,
        Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    if-nez p1, :cond_14

    new-instance p1, Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;-><init>(Lcom/bytedance/sdk/component/e/a/a/a/b;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    :catchall_14
    :cond_14
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/a/b;->a:Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    return-object v0
.end method
