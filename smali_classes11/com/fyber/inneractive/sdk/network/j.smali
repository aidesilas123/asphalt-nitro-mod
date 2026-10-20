###### Class com.fyber.inneractive.sdk.network.j (com.fyber.inneractive.sdk.network.j)
.class public Lcom/fyber/inneractive/sdk/network/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/j;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/network/j;->a:I

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/j;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/j;->d:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/network/j;->a:I

    return v0
.end method
