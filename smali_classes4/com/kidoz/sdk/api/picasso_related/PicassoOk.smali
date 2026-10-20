###### Class com.kidoz.sdk.api.picasso_related.PicassoOk (com.kidoz.sdk.api.picasso_related.PicassoOk)
.class public Lcom/kidoz/sdk/api/picasso_related/PicassoOk;
.super Ljava/lang/Object;
.source "PicassoOk.java"


# static fields
.field private static mPicassoInstance:Lcom/squareup/imagelib/Picasso;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->mPicassoInstance:Lcom/squareup/imagelib/Picasso;

    if-nez v0, :cond_14

    new-instance v0, Lcom/squareup/imagelib/Picasso$b;

    invoke-direct {v0, p0}, Lcom/squareup/imagelib/Picasso$b;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/squareup/imagelib/Picasso$b;->b(Z)Lcom/squareup/imagelib/Picasso$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/imagelib/Picasso$b;->a()Lcom/squareup/imagelib/Picasso;

    move-result-object p0

    sput-object p0, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->mPicassoInstance:Lcom/squareup/imagelib/Picasso;

    :cond_14
    sget-object p0, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->mPicassoInstance:Lcom/squareup/imagelib/Picasso;

    return-object p0
.end method
