###### Class com.unity3d.services.banners.view.a (com.unity3d.services.banners.view.a)
.class public final synthetic Lcom/unity3d/services/banners/view/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/banners/view/ScarBannerContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/banners/view/ScarBannerContainer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/banners/view/a;->a:Lcom/unity3d/services/banners/view/ScarBannerContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/banners/view/a;->a:Lcom/unity3d/services/banners/view/ScarBannerContainer;

    invoke-static {v0}, Lcom/unity3d/services/banners/view/ScarBannerContainer;->lambda$destroy$0(Lcom/unity3d/services/banners/view/ScarBannerContainer;)V

    return-void
.end method
