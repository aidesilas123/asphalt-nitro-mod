###### Class com.vungle.ads.e0 (com.vungle.ads.e0)
.class public final synthetic Lcom/vungle/ads/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/e0;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/vungle/ads/e0;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/e0;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vungle/ads/e0;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/vungle/ads/NativeAd$c;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
