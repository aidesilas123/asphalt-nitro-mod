###### Class com.vungle.ads.internal.load.a (com.vungle.ads.internal.load.a)
.class public final synthetic Lcom/vungle/ads/internal/load/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic b:Lcom/vungle/ads/internal/load/BaseAdLoader;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/a;->a:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/a;->b:Lcom/vungle/ads/internal/load/BaseAdLoader;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/a;->c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/a;->a:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/a;->b:Lcom/vungle/ads/internal/load/BaseAdLoader;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/a;->c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->a(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    return-void
.end method
