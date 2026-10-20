###### Class com.fyber.inneractive.sdk.network.l0 (com.fyber.inneractive.sdk.network.l0)
.class public Lcom/fyber/inneractive/sdk/network/l0;
.super Lcom/fyber/inneractive/sdk/network/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/network/f0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/global/s;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/fyber/inneractive/sdk/network/x;->a()Lcom/fyber/inneractive/sdk/network/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/fyber/inneractive/sdk/network/f0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/network/g;Lcom/fyber/inneractive/sdk/config/global/s;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/l0;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Lcom/fyber/inneractive/sdk/network/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p3, Lcom/fyber/inneractive/sdk/network/b0;

    invoke-direct {p3}, Lcom/fyber/inneractive/sdk/network/b0;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Pictures"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/l0;->r:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/fyber/inneractive/sdk/network/l0;->a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_46
    .catchall {:try_start_6 .. :try_end_34} :catchall_44

    :try_start_34
    invoke-static {p1, v1}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3b
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    move-object v0, p2

    goto :goto_3e

    :catchall_39
    move-exception p1

    goto :goto_54

    :catch_3b
    move-object v0, v1

    goto :goto_46

    :cond_3d
    move-object v1, v0

    :goto_3e
    :try_start_3e
    iput-object v0, p3, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_40} :catch_3b
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_4f

    :catchall_41
    move-exception p1

    move-object v0, v1

    goto :goto_53

    :catchall_44
    move-exception p1

    goto :goto_53

    :catch_46
    :goto_46
    :try_start_46
    const-string p1, "failed to download and save the image file."

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_44

    move-object v1, v0

    :goto_4f
    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/io/Closeable;)V

    return-object p3

    :goto_53
    move-object v1, v0

    :goto_54
    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/io/Closeable;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/l0;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1c

    const-string v1, "text/html"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_1d

    :cond_1c
    move-object p2, v0

    :goto_1d
    const/4 v1, 0x0

    if-eqz p2, :cond_27

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_27
    if-eqz v0, :cond_6f

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    :goto_30
    if-ge v1, v0, :cond_6f

    aget-object v2, p2, v1

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_6f
    :goto_6f
    return-object p1
.end method

.method public i()Lcom/fyber/inneractive/sdk/network/o0;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/o0;->LOW:Lcom/fyber/inneractive/sdk/network/o0;

    return-object v0
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/fyber/inneractive/sdk/network/z;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/z;->GET:Lcom/fyber/inneractive/sdk/network/z;

    return-object v0
.end method

.method public v()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
