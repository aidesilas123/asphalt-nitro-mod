###### Class com.kidoz.sdk.api.gif.decoder.GifDecoder.GifFrame (com.kidoz.sdk.api.gif.decoder.GifDecoder$GifFrame)
.class Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;->delay:I

    return-void
.end method
