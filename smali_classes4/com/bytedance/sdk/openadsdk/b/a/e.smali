###### Class com.bytedance.sdk.openadsdk.b.a.e (com.bytedance.sdk.openadsdk.b.a.e)
.class public Lcom/bytedance/sdk/openadsdk/b/a/e;
.super Ljava/lang/Object;
.source "EventProviderWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# instance fields
.field private final a:Lcom/bytedance/sdk/component/e/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/e/a/b/b/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_e

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, "wrapper getType1"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/e;->a:Lcom/bytedance/sdk/component/e/a/b/b/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/b/b/b;->d()V

    :cond_7
    return-void
.end method
