###### Class com.fyber.inneractive.sdk.player.controller.n.d (com.fyber.inneractive.sdk.player.controller.n$d)
.class public Lcom/fyber/inneractive/sdk/player/controller/n$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/n;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/controller/n;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$d;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$d;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_40

    :cond_2b
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    :try_start_33
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_40

    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_40

    :catchall_40
    :cond_40
    :goto_40
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n$d;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->q:Landroid/os/AsyncTask;

    return-void
.end method
