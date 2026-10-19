###### Class com.mbridge.msdk.mbbid.out.SplashBidRequestParams (com.mbridge.msdk.mbbid.out.SplashBidRequestParams)
.class public Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;
.super Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;
.source "SplashBidRequestParams.java"


# static fields
.field private static b:I = 0x1

.field private static c:I

.field private static d:I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget v5, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->b:I

    sget v6, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->d:I

    sget v7, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->c:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .registers 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->a:Z

    sput p5, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->b:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/w;->l(Landroid/content/Context;)I

    move-result p2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/w;->m(Landroid/content/Context;)I

    move-result p3

    sget p5, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->b:I

    const/4 v0, 0x1

    if-ne p5, v0, :cond_3e

    mul-int/lit8 p5, p7, 0x4

    if-le p3, p5, :cond_37

    sub-int/2addr p3, p7

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setHeight(I)V

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setWidth(I)V

    goto :goto_53

    :cond_37
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setHeight(I)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setWidth(I)V

    goto :goto_53

    :cond_3e
    const/4 p7, 0x2

    if-ne p5, p7, :cond_53

    mul-int/lit8 p5, p6, 0x4

    if-le p2, p5, :cond_4d

    sub-int/2addr p2, p6

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setWidth(I)V

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setHeight(I)V

    goto :goto_53

    :cond_4d
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setHeight(I)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->setWidth(I)V

    :cond_53
    :goto_53
    iput-boolean p4, p0, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIII)V
    .registers 15

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->a:Z

    return v0
.end method

.method public getOrientation()I
    .registers 2

    sget v0, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;->b:I

    return v0
.end method
