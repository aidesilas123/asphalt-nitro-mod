###### Class com.fyber.inneractive.sdk.network.v0.a (com.fyber.inneractive.sdk.network.v0$a)
.class public Lcom/fyber/inneractive/sdk/network/v0$a;
.super Lcom/fyber/inneractive/sdk/network/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final g:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/j;Lokhttp3/Response;)V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/network/j;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/v0$a;->g:Lokhttp3/Response;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/network/j;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/network/j;->b()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/network/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/network/j;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/network/j;->a(I)V

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

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/network/j;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/v0$a;->g:Lokhttp3/Response;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    :cond_a
    return-void
.end method
