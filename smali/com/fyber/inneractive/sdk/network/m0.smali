###### Class com.fyber.inneractive.sdk.network.m0 (com.fyber.inneractive.sdk.network.m0)
.class public Lcom/fyber/inneractive/sdk/network/m0;
.super Lcom/fyber/inneractive/sdk/network/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/network/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/network/f0<",
        "Lcom/fyber/inneractive/sdk/network/m0$a;",
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
            "Lcom/fyber/inneractive/sdk/network/m0$a;",
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

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/m0;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 16
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

    new-instance v0, Lcom/fyber/inneractive/sdk/network/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fyber/inneractive/sdk/network/m0$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_d
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    if-eqz p1, :cond_95

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/f0;->a(Ljava/util/Map;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/d0;->a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int p2, v9, v10

    new-array v11, p2, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_32
    if-ge v4, p2, :cond_40

    aget v5, v11, v4

    if-eqz v4, :cond_3c

    if-eq v5, v3, :cond_3d

    const/4 p2, 0x1

    goto :goto_41

    :cond_3c
    move v3, v5

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_40
    const/4 p2, 0x0

    :goto_41
    if-nez p2, :cond_44

    goto :goto_52

    :cond_44
    iput-object p1, v0, Lcom/fyber/inneractive/sdk/network/m0$a;->a:Landroid/graphics/Bitmap;

    const-string p1, "SimpleImageLoader: Got a valid bitmap %s"

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/network/m0;->r:Ljava/lang/String;

    aput-object v3, p2, v2

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_95

    :cond_52
    :goto_52
    const-string p1, "SimpleImageLoader: Got an invalid bitmap"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Got an invalid bitmap"

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/network/m0$a;->b:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5d} :catch_7a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_5d} :catch_5e

    goto :goto_95

    :catch_5e
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "SimpleImageLoader: OutOfMemoryError on load image %s"

    invoke-static {v1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/network/m0$a;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_73

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_73
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/network/m0$a;->b:Ljava/lang/String;

    goto :goto_95

    :catch_7a
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "SimpleImageLoader: Exception on load image %s %s"

    invoke-static {v1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/network/m0$a;->b:Ljava/lang/String;

    :cond_95
    :goto_95
    iput-object v0, p3, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;

    return-object p3
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/m0;->r:Ljava/lang/String;

    return-object v0
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

###### Class com.fyber.inneractive.sdk.network.m0.a (com.fyber.inneractive.sdk.network.m0$a)
.class public Lcom/fyber/inneractive/sdk/network/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/m0$a;->a:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/m0$a;->b:Ljava/lang/String;

    return-void
.end method
