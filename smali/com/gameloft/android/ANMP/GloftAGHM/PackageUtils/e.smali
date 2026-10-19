###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.e (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.e)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/e;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImp.java"


# instance fields
.field a:Ljava/net/ProxySelector;


# direct methods
.method constructor <init>(Ljava/net/ProxySelector;)V
    .registers 3

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/e;->a:Ljava/net/ProxySelector;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/e;->a:Ljava/net/ProxySelector;

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 4

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "socket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/e;->a:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_20
    :goto_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
