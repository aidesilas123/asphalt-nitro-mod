###### Class com.fyber.inneractive.sdk.network.i.a (com.fyber.inneractive.sdk.network.i$a)
.class public Lcom/fyber/inneractive/sdk/network/i$a;
.super Lcom/fyber/inneractive/sdk/network/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final g:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;ILjava/io/InputStream;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "I",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/network/j;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/i$a;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/j;->a(I)V

    invoke-virtual {p0, p3}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/io/InputStream;)V

    invoke-virtual {p0, p4}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/util/Map;)V

    invoke-virtual {p0, p5}, Lcom/fyber/inneractive/sdk/network/j;->a(Ljava/lang/String;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/i$a;->g:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    invoke-super {p0}, Lcom/fyber/inneractive/sdk/network/j;->a()V

    return-void
.end method
