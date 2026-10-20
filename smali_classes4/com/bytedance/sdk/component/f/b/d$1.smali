###### Class com.bytedance.sdk.component.f.b.d.AnonymousClass1 (com.bytedance.sdk.component.f.b.d$1)
.class Lcom/bytedance/sdk/component/f/b/d$1;
.super Ljava/lang/Object;
.source "PostExecutor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/f/a/a;

.field final synthetic b:Lcom/bytedance/sdk/component/f/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/f/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "content-type"

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz v0, :cond_103

    if-nez p2, :cond_15

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    new-instance p2, Ljava/io/IOException;

    const-string v1, "No response"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    return-void

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v3

    if-ge v2, v3, :cond_4a

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_47

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    if-nez v4, :cond_40

    const-string v3, ""

    goto :goto_44

    :cond_40
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_44
    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4a
    invoke-static {v5}, Lcom/bytedance/sdk/component/f/d/a;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_7a

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/p;->d()[B

    move-result-object p1

    new-instance v11, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_73
    .catchall {:try_start_16 .. :try_end_73} :catchall_e1

    :try_start_73
    invoke-virtual {v11, p1}, Lcom/bytedance/sdk/component/f/b;->a([B)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_db

    :catchall_77
    move-exception p1

    move-object v0, v11

    goto :goto_e2

    :cond_7a
    :try_start_7a
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/f/b/c;->g:Z

    if-eqz p1, :cond_b9

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/p;->d()[B

    move-result-object p1

    new-instance v6, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/b/a/p;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/b/a/i;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v6, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v11, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_b5
    .catchall {:try_start_7a .. :try_end_b5} :catchall_e1

    :try_start_b5
    invoke-virtual {v11, p1}, Lcom/bytedance/sdk/component/f/b;->a([B)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_77

    goto :goto_db

    :cond_b9
    :try_start_b9
    new-instance v11, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/p;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_e1

    :goto_db
    :try_start_db
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-static {p1, v11, p2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/f/b;Lcom/bytedance/sdk/component/b/a/o;)V
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_77

    goto :goto_e9

    :catchall_e1
    move-exception p1

    :goto_e2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v11, v0

    move-object v0, p2

    :goto_e9
    if-eqz v11, :cond_f3

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object p2, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-virtual {p1, p2, v11}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    goto :goto_103

    :cond_f3
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object p2, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    if-nez v0, :cond_100

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_100
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_103
    :goto_103
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_9
    return-void
.end method
