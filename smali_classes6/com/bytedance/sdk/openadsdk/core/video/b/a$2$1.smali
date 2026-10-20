###### Class com.bytedance.sdk.openadsdk.core.video.b.a.AnonymousClass2.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.video.b.a$2$1)
.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "PlayableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

.field final synthetic b:Lcom/bytedance/sdk/component/f/b;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;Lcom/bytedance/sdk/component/f/b;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->b:Lcom/bytedance/sdk/component/f/b;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    if-eqz v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;->c(J)Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->b:Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    if-eqz v1, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;->d(J)Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    :cond_2c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$b;->b()J

    move-result-wide v4

    goto :goto_3e

    :cond_3d
    move-wide v4, v2

    :goto_3e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;JJ)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->c:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_60

    :try_start_4e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->c:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_76

    goto :goto_76

    :catchall_60
    move-exception v0

    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    const/16 v2, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;ILjava/lang/String;)V

    const/4 v0, 0x0

    :catchall_76
    :goto_76
    :try_start_76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->b:Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_7f

    :catchall_7f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->d:Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;Z)V

    return-void
.end method
