###### Class com.mbridge.msdk.out.BannerSize (com.mbridge.msdk.out.BannerSize)
.class public Lcom/mbridge/msdk/out/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.java"


# static fields
.field public static final DEV_SET_TYPE:I = 0x5

.field public static final LARGE_TYPE:I = 0x1

.field public static final MEDIUM_TYPE:I = 0x2

.field public static final SMART_TYPE:I = 0x3

.field public static final STANDARD_TYPE:I = 0x4


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/16 v1, 0x140

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_15

    goto :goto_34

    :cond_15
    iput p3, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    iput p2, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_34

    :cond_1a
    const/16 p1, 0x32

    iput p1, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    iput v1, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_34

    :cond_21
    invoke-direct {p0}, Lcom/mbridge/msdk/out/BannerSize;->setSmartMode()V

    goto :goto_34

    :cond_25
    const/16 p1, 0xfa

    iput p1, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    const/16 p1, 0x12c

    iput p1, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_34

    :cond_2e
    const/16 p1, 0x5a

    iput p1, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    iput v1, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    :goto_34
    return-void
.end method

.method private setSmartMode()V
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/w;->m(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_19

    const/16 v0, 0x32

    iput v0, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_21

    :cond_19
    const/16 v0, 0x5a

    iput v0, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    const/16 v0, 0x2d8

    iput v0, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    :goto_21
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/BannerSize;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/BannerSize;->width:I

    return v0
.end method
