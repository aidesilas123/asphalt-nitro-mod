###### Class com.mbridge.msdk.dycreator.baseview.MBSplashClickView.AnonymousClass4 (com.mbridge.msdk.dycreator.baseview.MBSplashClickView$4)
.class Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;
.super Ljava/lang/Object;
.source "MBSplashClickView.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;Landroid/widget/ImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->c:Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    iget p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_9
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_2a

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->c:Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;

    invoke-static {p2}, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;->a(Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->c:Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;

    invoke-static {p2}, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;->a(Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1d
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2a

    :cond_23
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->a:Landroid/widget/ImageView;

    iget p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBSplashClickView$4;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2a
    :goto_2a
    return-void
.end method
