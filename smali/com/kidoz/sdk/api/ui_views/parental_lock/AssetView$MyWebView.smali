###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.MyWebView (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$MyWebView)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;
.super Landroid/webkit/WebView;
.source "AssetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_13

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
