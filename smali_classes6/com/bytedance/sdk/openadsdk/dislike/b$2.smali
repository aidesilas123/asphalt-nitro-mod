###### Class com.bytedance.sdk.openadsdk.dislike.b.AnonymousClass2 (com.bytedance.sdk.openadsdk.dislike.b$2)
.class Lcom/bytedance/sdk/openadsdk/dislike/b$2;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->b(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/dislike/c;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->b(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/dislike/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->b(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/dislike/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->c(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 6

    const-string v0, "TTAdDislikeImpl"

    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/core/t$a;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/core/t$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/t$a;->a(ILjava/lang/String;)V

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDislikeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3e

    goto :goto_44

    :catchall_3e
    move-exception p1

    const-string p2, "dislike callback selected error: "

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_44
    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeShow: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 4

    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeDismiss: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/core/t$a;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/core/t$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/t$a;->a()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception v1

    const-string v2, "dislike callback cancel error: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeOptionBack: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
