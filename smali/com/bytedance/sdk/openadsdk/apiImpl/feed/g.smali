###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.g (com.bytedance.sdk.openadsdk.apiImpl.feed.g)
.class public Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/apiImpl/feed/f;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .registers 3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .registers 2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .registers 3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.g.AnonymousClass1 (com.bytedance.sdk.openadsdk.apiImpl.feed.g$1)
.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$1;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdListener;->onAdClicked()V

    :cond_11
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.g.AnonymousClass2 (com.bytedance.sdk.openadsdk.apiImpl.feed.g$2)
.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->b(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$2;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdListener;->onAdClicked()V

    :cond_11
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.g.AnonymousClass3 (com.bytedance.sdk.openadsdk.apiImpl.feed.g$3)
.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$3;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdListener;->onAdShowed()V

    :cond_11
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.g.AnonymousClass4 (com.bytedance.sdk.openadsdk.apiImpl.feed.g$4)
.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g$4;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;->a(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/g;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdListener;->onAdDismissed()V

    :cond_11
    return-void
.end method
