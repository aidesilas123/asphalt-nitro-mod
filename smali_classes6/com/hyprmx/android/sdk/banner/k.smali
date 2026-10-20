###### Class com.hyprmx.android.sdk.banner.k (com.hyprmx.android.sdk.banner.k)
.class public final synthetic Lcom/hyprmx/android/sdk/banner/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/k;->a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/k;->a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    invoke-static {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    return-void
.end method
