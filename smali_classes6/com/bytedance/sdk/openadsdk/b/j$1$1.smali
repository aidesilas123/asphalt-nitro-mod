###### Class com.bytedance.sdk.openadsdk.b.j.AnonymousClass1.C01271 (com.bytedance.sdk.openadsdk.b.j$1$1)
.class Lcom/bytedance/sdk/openadsdk/b/j$1$1;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/j$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/j$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/j$1;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j$1$1;->a:Lcom/bytedance/sdk/openadsdk/b/j$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .registers 4

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/settings/f;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j$1$1;->a:Lcom/bytedance/sdk/openadsdk/b/j$1;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/b/j$1;->c:Lcom/bytedance/sdk/openadsdk/b/j;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/b/j$1;->b:I

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/b/j$1;->a:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Lcom/bytedance/sdk/openadsdk/b/j;ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p1

    const-string p2, "LandingPageLog"

    const-string v0, "TTWebViewClient : onPageFinished"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .registers 3

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "send landing page js error"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
