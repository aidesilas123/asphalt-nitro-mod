###### Class com.mbridge.msdk.mbbid.out.BannerBidRequestParams (com.mbridge.msdk.mbbid.out.BannerBidRequestParams)
.class public Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;
.super Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;
.source "BannerBidRequestParams.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->a:I

    iput p3, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p5, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->a:I

    iput p4, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->b:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->a:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->b:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->a:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;->b:I

    return-void
.end method
