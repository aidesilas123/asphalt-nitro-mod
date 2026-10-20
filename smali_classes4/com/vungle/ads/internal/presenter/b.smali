###### Class com.vungle.ads.internal.presenter.b (com.vungle.ads.internal.presenter.b)
.class public final synthetic Lcom/vungle/ads/internal/presenter/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/b;->a:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    iput-boolean p2, p0, Lcom/vungle/ads/internal/presenter/b;->b:Z

    iput-object p3, p0, Lcom/vungle/ads/internal/presenter/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/b;->a:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/presenter/b;->b:Z

    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->b(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
