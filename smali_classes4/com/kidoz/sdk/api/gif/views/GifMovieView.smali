###### Class com.kidoz.sdk.api.gif.views.GifMovieView (com.kidoz.sdk.api.gif.views.GifMovieView)
.class public Lcom/kidoz/sdk/api/gif/views/GifMovieView;
.super Landroid/view/View;
.source "GifMovieView.java"


# instance fields
.field private mMovie:Landroid/graphics/Movie;

.field private mMoviestart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMovie:Landroid/graphics/Movie;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMoviestart:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_15

    iput-wide v0, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMoviestart:J

    :cond_15
    iget-wide v2, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMoviestart:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/views/GifMovieView;->mMovie:Landroid/graphics/Movie;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
