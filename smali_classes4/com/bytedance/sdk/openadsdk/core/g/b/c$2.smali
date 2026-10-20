###### Class com.bytedance.sdk.openadsdk.core.g.b.c.AnonymousClass2 (com.bytedance.sdk.openadsdk.core.g.b.c$2)
.class final Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/b/c;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->b:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .registers 13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    if-eqz p1, :cond_81

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz p1, :cond_81

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p1, 0x1

    move-object v5, v0

    const/4 v4, 0x1

    goto :goto_55

    :cond_16
    if-eqz p2, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->b:Z

    if-nez v1, :cond_53

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_48

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_53

    :cond_48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->f()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    move-object v5, v0

    const/4 v4, 0x0

    :goto_55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aS()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->c:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->b:Z

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;Ljava/lang/String;Z)V

    if-eqz p2, :cond_81

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_81

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_81

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->g()V

    :cond_81
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .registers 9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    if-eqz p1, :cond_23

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aS()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    move-object v1, p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->b:Z

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;Ljava/lang/String;Z)V

    :cond_23
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->b:Z

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    if-eqz p1, :cond_36

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->f()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method
