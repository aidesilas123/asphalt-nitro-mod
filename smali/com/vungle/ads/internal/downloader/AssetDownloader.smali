###### Class com.vungle.ads.internal.downloader.AssetDownloader (com.vungle.ads.internal.downloader.AssetDownloader)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.kt"

# interfaces
.implements Lcom/vungle/ads/internal/downloader/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloader$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 -2\u00020\u0001:\u0001-B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\"\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\r2\u0008\u0010!\u001a\u0004\u0018\u00010\u001bH\u0002J\"\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\r2\u0008\u0010!\u001a\u0004\u0018\u00010\u001bH\u0002J\u001c\u0010%\u001a\u00020\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0017H\u0002J\u0012\u0010)\u001a\u00020\u00132\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u001a\u0010,\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloader;",
        "Lcom/vungle/ads/internal/downloader/Downloader;",
        "downloadExecutor",
        "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;",
        "pathProvider",
        "Lcom/vungle/ads/internal/util/PathProvider;",
        "(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/PathProvider;)V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "progressStep",
        "",
        "transitioning",
        "",
        "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
        "cancel",
        "",
        "request",
        "cancelAll",
        "checkSpaceAvailable",
        "",
        "decodeGzipIfNeeded",
        "Lokhttp3/ResponseBody;",
        "networkResponse",
        "Lokhttp3/Response;",
        "deliverError",
        "downloadRequest",
        "downloadListener",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;",
        "downloadError",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;",
        "deliverProgress",
        "copy",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;",
        "listener",
        "deliverSuccess",
        "file",
        "Ljava/io/File;",
        "download",
        "getContentLength",
        "",
        "response",
        "isValidUrl",
        "httpUrl",
        "",
        "launchRequest",
        "Companion",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final MAX_PERCENT:J = 0x64L

.field private static final MINIMUM_SPACE_REQUIRED_MB:I = 0x1400000

.field private static final PROGRESS_STEP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AssetDownloader"

.field private static final TIMEOUT:I = 0x1e


# instance fields
.field private final downloadExecutor:Lcom/vungle/ads/internal/executor/d;

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private final pathProvider:Lcom/vungle/ads/internal/util/g;

.field private final progressStep:I

.field private final transitioning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/executor/d;Lcom/vungle/ads/internal/util/g;)V
    .registers 10

    const-string v0, "downloadExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/d;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/g;

    const/4 p1, 0x5

    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->progressStep:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    new-instance p1, Lokhttp3/OkHttpClient$a;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$a;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$a;->L(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$a;->d(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$a;->c(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$a;->e(Z)Lokhttp3/OkHttpClient$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$a;->f(Z)Lokhttp3/OkHttpClient$a;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/g;->INSTANCE:Lcom/vungle/ads/internal/g;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/g;->isCleverCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v0}, Lcom/vungle/ads/internal/g;->getCleverCacheDiskSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/vungle/ads/internal/g;->getCleverCacheDiskPercentage()I

    move-result v0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/g;->getCleverCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pathProvider.getCleverCacheDir().absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/vungle/ads/internal/util/g;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v5, v0

    mul-long v3, v3, v5

    const/16 v0, 0x64

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_79

    new-instance v2, Lokhttp3/Cache;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/g;->getCleverCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v2, p2, v0, v1}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient$a;->c(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$a;

    goto :goto_80

    :cond_79
    const-string p2, "AssetDownloader"

    const-string v0, "cache disk capacity size <=0, no clever cache active."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->b()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->download$lambda-0(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    return-void
.end method

.method public static final synthetic access$launchRequest(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    return-void
.end method

.method private final checkSpaceAvailable()Z
    .registers 14

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/g;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/g;->getVungleDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pathProvider.getVungleDir().absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/g;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v4, v0, v2

    if-gez v4, :cond_3a

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v6, 0x7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method private final decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 8

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    const-string v1, "Content-Encoding"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "gzip"

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    new-instance v1, Lokio/m;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/m;-><init>(Lokio/y;)V

    const-string v0, "Content-Type"

    invoke-static {p1, v0, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/http/d;

    const-wide/16 v2, -0x1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v1

    invoke-direct {v0, p1, v2, v3, v1}, Lokhttp3/internal/http/d;-><init>(Ljava/lang/String;JLokio/e;)V

    :cond_31
    return-object v0
.end method

.method private final deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-interface {p2, p3, p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener;->onError(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    :cond_5
    return-void
.end method

.method private final deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1b

    invoke-interface {p3, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener;->onProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    :cond_1b
    return-void
.end method

.method private final deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1b

    invoke-interface {p3, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener;->onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    :cond_1b
    return-void
.end method

.method private static final download$lambda-0(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    new-instance v1, Lcom/vungle/ads/d1;

    const/16 v2, 0xbb9

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vungle/ads/d1;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/n;)V

    sget-object v2, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->getINTERNAL_ERROR()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    return-void
.end method

.method private final getContentLength(Lokhttp3/Response;)J
    .registers 7

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_15

    goto :goto_17

    :cond_15
    const/4 v4, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v4, 0x1

    :goto_18
    if-eqz v4, :cond_27

    invoke-virtual {p1}, Lokhttp3/Response;->p()Lokhttp3/Response;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    const/4 v4, 0x2

    invoke-static {p1, v1, v0, v4, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_27
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_30

    :cond_2f
    const/4 v2, 0x1

    :cond_30
    const-wide/16 v3, -0x1

    if-eqz v2, :cond_35

    goto :goto_3a

    :cond_35
    :try_start_35
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3a

    move-wide v3, v0

    :catchall_3a
    :goto_3a
    return-wide v3
.end method

.method private final isValidUrl(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_19

    sget-object v2, Lokhttp3/HttpUrl;->a:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v2, p1}, Lokhttp3/HttpUrl$Companion;->g(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private final launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "status:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch request in thread:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " request: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AssetDownloader"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is cancelled before starting"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    sget-object v4, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getCANCELLED()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    invoke-direct {v1, v0, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    return-void

    :cond_67
    new-instance v6, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    invoke-direct {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setTimestampDownloadStart(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v7, :cond_87

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_85

    goto :goto_87

    :cond_85
    const/4 v9, 0x0

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v9, 0x1

    :goto_88
    const/4 v14, -0x1

    if-nez v9, :cond_67d

    invoke-direct {v1, v7}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_93

    goto/16 :goto_67d

    :cond_93
    if-eqz v0, :cond_9e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_9c

    goto :goto_9e

    :cond_9c
    const/4 v9, 0x0

    goto :goto_9f

    :cond_9e
    :goto_9e
    const/4 v9, 0x1

    :goto_9f
    if-eqz v9, :cond_b5

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    new-instance v4, Lcom/vungle/ads/n0;

    invoke-direct {v4}, Lcom/vungle/ads/n0;-><init>()V

    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->getFILE_NOT_FOUND_ERROR()I

    move-result v5

    invoke-direct {v0, v14, v4, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    return-void

    :cond_b5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    const/4 v13, 0x0

    if-lt v9, v10, :cond_d9

    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->checkSpaceAvailable()Z

    move-result v9

    if-nez v9, :cond_d9

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    new-instance v4, Lcom/vungle/ads/d1;

    const/16 v5, 0x2723

    const/4 v6, 0x2

    invoke-direct {v4, v5, v13, v6, v13}, Lcom/vungle/ads/d1;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/n;)V

    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->getDISK_ERROR()I

    move-result v5

    invoke-direct {v0, v14, v4, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    return-void

    :cond_d9
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v13

    const/4 v0, 0x0

    :goto_e0
    if-nez v0, :cond_67c

    :try_start_e2
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e6} :catch_4f8
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_4ea

    if-eqz v0, :cond_105

    :try_start_e8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_105

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f1} :catch_fd
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_f2

    goto :goto_105

    :catchall_f2
    move-exception v0

    move-object v7, v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v0, v13

    move-object v12, v0

    move-object/from16 v19, v12

    goto/16 :goto_4f4

    :catch_fd
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v12, v13

    move-object v14, v12

    goto/16 :goto_4fe

    :cond_105
    :goto_105
    :try_start_105
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_109} :catch_4f8
    .catchall {:try_start_105 .. :try_end_109} :catchall_4ea

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_112

    :try_start_10d
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v9
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_111} :catch_fd
    .catchall {:try_start_10d .. :try_end_111} :catchall_f2

    goto :goto_114

    :cond_112
    move-wide/from16 v9, v16

    :goto_114
    :try_start_114
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v7}, Lokhttp3/Request$Builder;->o(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11d} :catch_4f8
    .catchall {:try_start_114 .. :try_end_11d} :catchall_4ea

    :try_start_11d
    iget-object v13, v1, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v13, v0}, Lokhttp3/OkHttpClient;->b(Lokhttp3/Request;)Lokhttp3/c;

    move-result-object v19
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_127} :catch_4e3
    .catchall {:try_start_11d .. :try_end_127} :catchall_4dd

    :try_start_127
    invoke-interface/range {v19 .. v19}, Lokhttp3/c;->execute()Lokhttp3/Response;

    move-result-object v13
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12b} :catch_4d3
    .catchall {:try_start_127 .. :try_end_12b} :catchall_4c7

    :try_start_12b
    invoke-direct {v1, v13}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->getContentLength(Lokhttp3/Response;)J

    move-result-wide v20

    invoke-virtual {v13}, Lokhttp3/Response;->h()I

    move-result v0

    invoke-virtual {v13}, Lokhttp3/Response;->m()Z

    move-result v22

    if-eqz v22, :cond_47d

    invoke-virtual {v13}, Lokhttp3/Response;->f()Lokhttp3/Response;

    move-result-object v0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_13d} :catch_4bb
    .catchall {:try_start_12b .. :try_end_13d} :catchall_4af

    if-eqz v0, :cond_18b

    :try_start_13f
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v14, Lcom/vungle/ads/c2;

    sget-object v8, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CACHED_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v14, v8}, Lcom/vungle/ads/c2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getCreativeId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getEventId()Ljava/lang/String;

    move-result-object v25
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_154} :catch_17a
    .catchall {:try_start_13f .. :try_end_154} :catchall_169

    move-wide v2, v9

    move-object v9, v0

    move-object v10, v14

    move-object v14, v11

    move-object v11, v8

    move-object v8, v12

    move-object/from16 v12, v24

    move-object/from16 v18, v13

    move-object/from16 v13, v25

    move-object/from16 v27, v14

    move-object v14, v7

    :try_start_163
    invoke-virtual/range {v9 .. v14}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/c2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_168} :catch_1e5
    .catchall {:try_start_163 .. :try_end_168} :catchall_1d9

    goto :goto_191

    :catchall_169
    move-exception v0

    move-object v8, v12

    move-object/from16 v18, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v0

    move-object v15, v5

    move-object v5, v11

    :goto_174
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    goto/16 :goto_60e

    :catch_17a
    move-exception v0

    move-object v8, v12

    move-object/from16 v18, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object v5, v11

    move-object/from16 v16, v18

    :goto_186
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_502

    :cond_18b
    move-wide v2, v9

    move-object/from16 v27, v11

    move-object v8, v12

    move-object/from16 v18, v13

    :goto_191
    :try_start_191
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v0

    const-string v9, "Content-Encoding"

    invoke-virtual {v0, v9}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19b} :catch_472
    .catchall {:try_start_191 .. :try_end_19b} :catchall_466

    if-eqz v0, :cond_1f0

    :try_start_19d
    const-string v9, "gzip"

    invoke-static {v9, v0, v15}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1f0

    const-string v9, "identity"

    invoke-static {v9, v0, v15}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1ae

    goto :goto_1f0

    :cond_1ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAd: Unknown Content-Encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown Content-Encoding "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1d9} :catch_1e5
    .catchall {:try_start_19d .. :try_end_1d9} :catchall_1d9

    :catchall_1d9
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v0

    move-object v15, v5

    move-object/from16 v13, v18

    :goto_1e2
    move-object/from16 v5, v27

    goto :goto_174

    :catch_1e5
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v16, v18

    :goto_1ed
    move-object/from16 v5, v27

    goto :goto_186

    :cond_1f0
    :goto_1f0
    move-object/from16 v9, v18

    :try_start_1f2
    invoke-direct {v1, v9}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f6} :catch_45f
    .catchall {:try_start_1f2 .. :try_end_1f6} :catchall_458

    if-eqz v0, :cond_210

    :try_start_1f8
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object v10
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fc} :catch_207
    .catchall {:try_start_1f8 .. :try_end_1fc} :catchall_1fe

    move-object v13, v10

    goto :goto_211

    :catchall_1fe
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v0

    move-object v15, v5

    move-object v13, v9

    goto :goto_1e2

    :catch_207
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v16, v9

    goto :goto_1ed

    :cond_210
    const/4 v13, 0x0

    :goto_211
    :try_start_211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start download from bytes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v20, v20, v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "final offset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_243} :catch_44a
    .catchall {:try_start_211 .. :try_end_243} :catchall_43a

    cmp-long v10, v2, v16

    if-nez v10, :cond_269

    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_249
    invoke-static {v8, v14, v15, v12}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/w;

    move-result-object v10
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24d} :catch_25c
    .catchall {:try_start_249 .. :try_end_24d} :catchall_24e

    goto :goto_26f

    :catchall_24e
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v0

    move-object v15, v5

    move-object/from16 v24, v12

    move-object v0, v13

    move-object/from16 v5, v27

    goto/16 :goto_447

    :catch_25c
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v16, v9

    move-object v14, v12

    :goto_265
    move-object/from16 v5, v27

    goto/16 :goto_502

    :cond_269
    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_26b
    invoke-static {v8}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/w;

    move-result-object v10

    :goto_26f
    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v10
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_273} :catch_431
    .catchall {:try_start_26b .. :try_end_273} :catchall_428

    :try_start_273
    sget-object v11, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v11}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getSTARTED()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_27c} :catch_41b
    .catchall {:try_start_273 .. :try_end_27c} :catchall_40b

    if-eqz v0, :cond_29d

    :try_start_27e
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v22
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_282} :catch_293
    .catchall {:try_start_27e .. :try_end_282} :catchall_285

    move-wide/from16 v14, v22

    goto :goto_29f

    :catchall_285
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_28a
    move-object v7, v0

    move-object v15, v5

    move-object/from16 v24, v12

    move-object v0, v13

    :goto_28f
    move-object/from16 v5, v27

    goto/16 :goto_417

    :catch_293
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_298
    move-object v15, v5

    move-object/from16 v16, v9

    move-object v14, v10

    goto :goto_265

    :cond_29d
    move-wide/from16 v14, v16

    :goto_29f
    :try_start_29f
    invoke-virtual {v6, v14, v15}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setSizeBytes(J)V

    invoke-virtual {v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStartBytes(J)V
    :try_end_2a5
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2a5} :catch_41b
    .catchall {:try_start_29f .. :try_end_2a5} :catchall_40b

    move-wide v14, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_2aa
    invoke-direct {v1, v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    :try_end_2ad
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2ad} :catch_409
    .catchall {:try_start_2aa .. :try_end_2ad} :catchall_407

    move-wide/from16 v24, v16

    const/4 v0, 0x0

    :goto_2b0
    if-eqz v13, :cond_2d8

    :try_start_2b2
    invoke-interface {v10}, Lokio/d;->y()Lokio/Buffer;

    move-result-object v11
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b6} :catch_2d6
    .catchall {:try_start_2b2 .. :try_end_2b6} :catchall_2d4

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    const-wide/16 v4, 0x800

    :try_start_2bc
    invoke-interface {v13, v11, v4, v5}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v4
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2c0} :catch_2cb
    .catchall {:try_start_2bc .. :try_end_2c0} :catchall_2c1

    goto :goto_2de

    :catchall_2c1
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v12

    move-object v0, v13

    move-object/from16 v4, v22

    move-object/from16 v15, v26

    goto :goto_28f

    :catch_2cb
    move-exception v0

    move-object/from16 v16, v9

    move-object v14, v10

    move-object/from16 v4, v22

    move-object/from16 v15, v26

    goto :goto_265

    :catchall_2d4
    move-exception v0

    goto :goto_28a

    :catch_2d6
    move-exception v0

    goto :goto_298

    :cond_2d8
    move-object/from16 v22, v4

    move-object/from16 v26, v5

    const-wide/16 v4, -0x1

    :goto_2de
    :try_start_2de
    sget-object v11, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e0} :catch_401
    .catchall {:try_start_2de .. :try_end_2e0} :catchall_3fb

    cmp-long v11, v4, v16

    if-lez v11, :cond_368

    :try_start_2e4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_33e

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_2fa

    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getCANCELLED()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    goto :goto_368

    :cond_2fa
    invoke-interface {v10}, Lokio/d;->emit()Lokio/d;

    add-long v24, v24, v4

    add-long v4, v14, v24

    const-wide/16 v28, 0x64

    cmp-long v11, v20, v16

    if-lez v11, :cond_30c

    mul-long v4, v4, v28

    div-long v4, v4, v20

    long-to-int v0, v4

    :cond_30c
    :goto_30c
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getProgressPercent()I

    move-result v4

    iget v5, v1, Lcom/vungle/ads/internal/downloader/AssetDownloader;->progressStep:I

    add-int/2addr v4, v5

    if-gt v4, v0, :cond_338

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getProgressPercent()I

    move-result v4

    iget v5, v1, Lcom/vungle/ads/internal/downloader/AssetDownloader;->progressStep:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v11, v4, v28

    if-gtz v11, :cond_338

    sget-object v4, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getIN_PROGRESS()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getProgressPercent()I

    move-result v4

    iget v5, v1, Lcom/vungle/ads/internal/downloader/AssetDownloader;->progressStep:I

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setProgressPercent(I)V

    invoke-direct {v1, v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    goto :goto_30c

    :cond_338
    move-object/from16 v4, v22

    move-object/from16 v5, v26

    goto/16 :goto_2b0

    :cond_33e
    sget-object v30, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v31, 0x72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset save error "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1c

    const/16 v37, 0x0

    invoke-static/range {v30 .. v37}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v0, Lcom/vungle/ads/internal/downloader/b$b;

    const-string v4, "File is not existing"

    invoke-direct {v0, v4}, Lcom/vungle/ads/internal/downloader/b$b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_368} :catch_2cb
    .catchall {:try_start_2e4 .. :try_end_368} :catchall_2c1

    :cond_368
    :goto_368
    :try_start_368
    invoke-interface {v10}, Lokio/d;->flush()V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v0

    sget-object v4, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getIN_PROGRESS()I

    move-result v5
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_375} :catch_401
    .catchall {:try_start_368 .. :try_end_375} :catchall_3fb

    if-ne v0, v5, :cond_37e

    :try_start_377
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getDONE()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_37e} :catch_2cb
    .catchall {:try_start_377 .. :try_end_37e} :catchall_2c1

    :cond_37e
    invoke-virtual {v9}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_38d

    invoke-virtual {v9}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_38d

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_38d
    invoke-interface/range {v19 .. v19}, Lokhttp3/c;->cancel()V

    sget-object v0, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    invoke-virtual {v0, v10}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v0, v13}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v0

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getCANCELLED()I

    move-result v5

    if-ne v0, v5, :cond_3ac

    invoke-direct {v1, v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    :goto_3a5
    move-object/from16 v4, v22

    move-object/from16 v15, v26

    move-object/from16 v5, v27

    goto :goto_3f1

    :cond_3ac
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getDONE()I

    move-result v5

    if-ne v0, v5, :cond_3b6

    invoke-direct {v1, v8, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    goto :goto_3a5

    :cond_3b6
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getSTARTED()I

    move-result v5

    if-ne v0, v5, :cond_3c8

    move-object/from16 v5, v27

    if-eqz v5, :cond_3c3

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    :cond_3c3
    :goto_3c3
    move-object/from16 v4, v22

    move-object/from16 v15, v26

    goto :goto_3f1

    :cond_3c8
    move-object/from16 v5, v27

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getERROR()I

    move-result v4

    if-ne v0, v4, :cond_3d4

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_3c3

    :cond_3d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v26

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    :goto_3f1
    move-object v11, v5

    move-object/from16 v20, v7

    move-object/from16 v24, v12

    const/4 v12, -0x1

    const/16 v21, 0x0

    goto/16 :goto_5f4

    :catchall_3fb
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v15, v26

    goto :goto_411

    :catch_401
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v15, v26

    goto :goto_421

    :catchall_407
    move-exception v0

    goto :goto_410

    :catch_409
    move-exception v0

    goto :goto_420

    :catchall_40b
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_410
    move-object v15, v5

    :goto_411
    move-object/from16 v5, v27

    move-object v7, v0

    move-object/from16 v24, v12

    move-object v0, v13

    :goto_417
    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_60e

    :catch_41b
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_420
    move-object v15, v5

    :goto_421
    move-object/from16 v5, v27

    move-object/from16 v16, v9

    move-object v14, v10

    goto/16 :goto_502

    :catchall_428
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v5, v27

    goto :goto_443

    :catch_431
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v5, v27

    goto :goto_453

    :catchall_43a
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v5, v27

    const/4 v12, 0x0

    :goto_443
    move-object v7, v0

    move-object/from16 v24, v12

    move-object v0, v13

    :goto_447
    move-object v13, v9

    goto/16 :goto_60e

    :catch_44a
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v5, v27

    const/4 v12, 0x0

    :goto_453
    move-object/from16 v16, v9

    move-object v14, v12

    goto/16 :goto_502

    :catchall_458
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    goto :goto_46e

    :catch_45f
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    goto :goto_47a

    :catchall_466
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v9, v18

    :goto_46e
    move-object/from16 v5, v27

    const/4 v12, 0x0

    goto :goto_4aa

    :catch_472
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v5

    move-object/from16 v9, v18

    :goto_47a
    move-object/from16 v5, v27

    goto :goto_4c0

    :cond_47d
    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v9, v13

    const/4 v12, 0x0

    :try_start_482
    new-instance v10, Lcom/vungle/ads/o0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v7, v11, v13}, Lcom/vungle/ads/o0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    new-instance v10, Lcom/vungle/ads/internal/downloader/b$b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Code: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/downloader/b$b;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_4a9} :catch_4ad
    .catchall {:try_start_482 .. :try_end_4a9} :catchall_4a9

    :catchall_4a9
    move-exception v0

    :goto_4aa
    move-object v7, v0

    move-object v13, v9

    goto :goto_4b6

    :catch_4ad
    move-exception v0

    goto :goto_4c1

    :catchall_4af
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v9, v13

    const/4 v12, 0x0

    move-object v7, v0

    :goto_4b6
    move-object v0, v12

    move-object/from16 v24, v0

    goto/16 :goto_60e

    :catch_4bb
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v9, v13

    :goto_4c0
    const/4 v12, 0x0

    :goto_4c1
    move-object/from16 v16, v9

    move-object v13, v12

    move-object v14, v13

    goto/16 :goto_502

    :catchall_4c7
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    const/4 v12, 0x0

    move-object v7, v0

    move-object v0, v12

    move-object v13, v0

    move-object/from16 v24, v13

    goto/16 :goto_60e

    :catch_4d3
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    goto :goto_502

    :catchall_4dd
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    const/4 v12, 0x0

    goto :goto_4ef

    :catch_4e3
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    const/4 v12, 0x0

    move-object v13, v12

    goto :goto_4fd

    :catchall_4ea
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v12, v13

    :goto_4ef
    move-object v7, v0

    move-object v0, v12

    move-object v13, v0

    move-object/from16 v19, v13

    :goto_4f4
    move-object/from16 v24, v19

    goto/16 :goto_60e

    :catch_4f8
    move-exception v0

    move-object v15, v5

    move-object v5, v11

    move-object v8, v12

    move-object v12, v13

    :goto_4fd
    move-object v14, v13

    :goto_4fe
    move-object/from16 v16, v14

    move-object/from16 v19, v16

    :goto_502
    :try_start_502
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v9, v0, Ljava/net/ProtocolException;
    :try_end_50b
    .catchall {:try_start_502 .. :try_end_50b} :catchall_605

    if-eqz v9, :cond_53c

    :try_start_50d
    sget-object v28, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v29, 0x70

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load asset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1c

    const/16 v35, 0x0

    invoke-static/range {v28 .. v35}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_533
    .catchall {:try_start_50d .. :try_end_533} :catchall_534

    goto :goto_545

    :catchall_534
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v12

    move-object v0, v13

    move-object v12, v14

    goto/16 :goto_60c

    :cond_53c
    :try_start_53c
    instance-of v9, v0, Ljava/net/UnknownHostException;
    :try_end_53e
    .catchall {:try_start_53c .. :try_end_53e} :catchall_605

    if-nez v9, :cond_54f

    :try_start_540
    instance-of v9, v0, Ljava/io/IOException;
    :try_end_542
    .catchall {:try_start_540 .. :try_end_542} :catchall_534

    if-eqz v9, :cond_545

    goto :goto_54f

    :cond_545
    :goto_545
    move-object/from16 v20, v7

    move-object/from16 v24, v12

    move-object/from16 v38, v13

    move-object v7, v14

    const/16 v21, 0x0

    goto :goto_572

    :cond_54f
    :goto_54f
    :try_start_54f
    new-instance v17, Lcom/vungle/ads/o0;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v20
    :try_end_556
    .catchall {:try_start_54f .. :try_end_556} :catchall_605

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v9, v17

    move-object v10, v7

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    move-object/from16 v38, v13

    move/from16 v13, v21

    move-object/from16 v20, v7

    move-object v7, v14

    const/16 v21, 0x0

    move-object/from16 v14, v22

    :try_start_56c
    invoke-direct/range {v9 .. v14}, Lcom/vungle/ads/o0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    invoke-virtual/range {v17 .. v17}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :goto_572
    sget-object v9, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getERROR()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    new-instance v10, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    sget-object v11, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-virtual {v11}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->getREQUEST_ERROR()I

    move-result v11

    const/4 v12, -0x1

    invoke-direct {v10, v12, v0, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;-><init>(ILjava/lang/Throwable;I)V
    :try_end_587
    .catchall {:try_start_56c .. :try_end_587} :catchall_601

    if-eqz v16, :cond_58e

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v13

    goto :goto_590

    :cond_58e
    move-object/from16 v13, v24

    :goto_590
    if-eqz v13, :cond_59d

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_59d

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :cond_59d
    if-eqz v19, :cond_5a4

    invoke-interface/range {v19 .. v19}, Lokhttp3/c;->cancel()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :cond_5a4
    sget-object v0, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    invoke-virtual {v0, v7}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v13, v38

    invoke-virtual {v0, v13}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v0

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getCANCELLED()I

    move-result v5

    if-ne v0, v5, :cond_5bc

    invoke-direct {v1, v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    goto :goto_5f3

    :cond_5bc
    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getDONE()I

    move-result v5

    if-ne v0, v5, :cond_5c6

    invoke-direct {v1, v8, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    goto :goto_5f3

    :cond_5c6
    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getSTARTED()I

    move-result v5

    if-ne v0, v5, :cond_5d0

    invoke-direct {v1, v2, v3, v10}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_5f3

    :cond_5d0
    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getERROR()I

    move-result v5

    if-ne v0, v5, :cond_5da

    invoke-direct {v1, v2, v3, v10}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_5f3

    :cond_5da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v3, v10}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    :goto_5f3
    move-object v11, v10

    :goto_5f4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    move-object v12, v8

    move-object v5, v15

    move-object/from16 v7, v20

    move-object/from16 v13, v24

    const/4 v0, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x1

    goto/16 :goto_e0

    :catchall_601
    move-exception v0

    move-object/from16 v13, v38

    goto :goto_609

    :catchall_605
    move-exception v0

    move-object/from16 v24, v12

    move-object v7, v14

    :goto_609
    move-object v12, v7

    move-object v7, v0

    move-object v0, v13

    :goto_60c
    move-object/from16 v13, v16

    :goto_60e
    if-eqz v13, :cond_616

    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v9

    move-object/from16 v24, v9

    :cond_616
    if-eqz v24, :cond_623

    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_623

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->close()V

    sget-object v9, Lkotlin/v;->a:Lkotlin/v;

    :cond_623
    if-eqz v19, :cond_62a

    invoke-interface/range {v19 .. v19}, Lokhttp3/c;->cancel()V

    sget-object v9, Lkotlin/v;->a:Lkotlin/v;

    :cond_62a
    sget-object v9, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    invoke-virtual {v9, v12}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v9, v0}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v0

    sget-object v9, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getCANCELLED()I

    move-result v10

    if-eq v0, v10, :cond_678

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getDONE()I

    move-result v10

    if-eq v0, v10, :cond_674

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getSTARTED()I

    move-result v8

    if-ne v0, v8, :cond_650

    if-eqz v5, :cond_67b

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_67b

    :cond_650
    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->getERROR()I

    move-result v8

    if-ne v0, v8, :cond_65a

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_67b

    :cond_65a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v3, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    goto :goto_67b

    :cond_674
    invoke-direct {v1, v8, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    goto :goto_67b

    :cond_678
    invoke-direct {v1, v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    :cond_67b
    :goto_67b
    throw v7

    :cond_67c
    return-void

    :cond_67d
    :goto_67d
    const/4 v12, -0x1

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;

    new-instance v4, Lcom/vungle/ads/n0;

    invoke-direct {v4}, Lcom/vungle/ads/n0;-><init>()V

    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->getINTERNAL_ERROR()I

    move-result v5

    invoke-direct {v0, v12, v4, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancel()V

    :cond_c
    :goto_c
    return-void
.end method

.method public cancelAll()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/DownloadRequest;

    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/d;

    new-instance v1, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    new-instance v2, Lcom/vungle/ads/internal/downloader/a;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/a;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/executor/d;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloader.Companion (com.vungle.ads.internal.downloader.AssetDownloader$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader$a;
.super Ljava/lang/Object;
.source "AssetDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;",
        "",
        "()V",
        "CONTENT_ENCODING",
        "",
        "CONTENT_TYPE",
        "DOWNLOAD_CHUNK_SIZE",
        "",
        "GZIP",
        "IDENTITY",
        "MAX_PERCENT",
        "",
        "MINIMUM_SPACE_REQUIRED_MB",
        "PROGRESS_STEP",
        "TAG",
        "TIMEOUT",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$a;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloader.b (com.vungle.ads.internal.downloader.AssetDownloader$b)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader$b;
.super Lcom/vungle/ads/internal/task/e;
.source "AssetDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;->download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vungle/ads/internal/downloader/AssetDownloader$download$1",
        "Lcom/vungle/ads/internal/task/PriorityRunnable;",
        "priority",
        "",
        "getPriority",
        "()I",
        "run",
        "",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $downloadListener:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

.field final synthetic $downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field final synthetic this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 4

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->$downloadListener:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPriority()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->$downloadListener:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->access$launchRequest(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.a (com.vungle.ads.internal.downloader.a)
.class public final synthetic Lcom/vungle/ads/internal/downloader/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/AssetDownloader;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/a;->a:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/a;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/a;->c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/a;->a:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/a;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/a;->c:Lcom/vungle/ads/internal/downloader/AssetDownloadListener;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->a(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    return-void
.end method
