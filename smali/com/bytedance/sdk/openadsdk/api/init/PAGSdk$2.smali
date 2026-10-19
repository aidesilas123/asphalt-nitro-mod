###### Class com.bytedance.sdk.openadsdk.api.init.PAGSdk.AnonymousClass2 (com.bytedance.sdk.openadsdk.api.init.PAGSdk$2)
.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$2;
.super Ljava/lang/Object;
.source "PAGSdk.java"

# interfaces
.implements Lcom/bytedance/sdk/component/widget/SSWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .registers 5

    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_8
    if-nez p3, :cond_10

    :try_start_a
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_15

    :cond_10
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    nop

    if-nez p3, :cond_1f

    new-instance p3, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_25

    :cond_1f
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object p3, v0

    :goto_25
    return-object p3
.end method
