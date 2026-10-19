###### Class com.vungle.ads.internal.downloader.AssetDownloadListener (com.vungle.ads.internal.downloader.AssetDownloadListener)
.class public interface abstract Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;,
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u000e\u000fJ\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;",
        "",
        "onError",
        "",
        "error",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;",
        "downloadRequest",
        "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
        "onProgress",
        "progress",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;",
        "onSuccess",
        "file",
        "Ljava/io/File;",
        "DownloadError",
        "Progress",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
.end method

.method public abstract onProgress(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.Progress (com.vungle.ads.internal.downloader.AssetDownloadListener$Progress)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;,
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0011\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;",
        "",
        "()V",
        "progressPercent",
        "",
        "getProgressPercent",
        "()I",
        "setProgressPercent",
        "(I)V",
        "sizeBytes",
        "",
        "getSizeBytes",
        "()J",
        "setSizeBytes",
        "(J)V",
        "startBytes",
        "getStartBytes",
        "setStartBytes",
        "status",
        "getStatus$annotations",
        "getStatus",
        "setStatus",
        "timestampDownloadStart",
        "getTimestampDownloadStart",
        "setTimestampDownloadStart",
        "Companion",
        "ProgressStatus",
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
.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;


# instance fields
.field private progressPercent:I

.field private sizeBytes:J

.field private startBytes:J

.field private status:I

.field private timestampDownloadStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getStatus$annotations()V
    .registers 0
    .annotation runtime Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getProgressPercent()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->progressPercent:I

    return v0
.end method

.method public final getSizeBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    return-wide v0
.end method

.method public final getStartBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->startBytes:J

    return-wide v0
.end method

.method public final getStatus()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->status:I

    return v0
.end method

.method public final getTimestampDownloadStart()J
    .registers 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    return-wide v0
.end method

.method public final setProgressPercent(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->progressPercent:I

    return-void
.end method

.method public final setSizeBytes(J)V
    .registers 3

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    return-void
.end method

.method public final setStartBytes(J)V
    .registers 3

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->startBytes:J

    return-void
.end method

.method public final setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->status:I

    return-void
.end method

.method public final setTimestampDownloadStart(J)V
    .registers 3

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.Progress.Companion (com.vungle.ads.internal.downloader.AssetDownloadListener$Progress$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$Companion;",
        "",
        "()V",
        "copy",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;",
        "progress",
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;)Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
    .registers 5

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getProgressPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setProgressPercent(I)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getTimestampDownloadStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setTimestampDownloadStart(J)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setSizeBytes(J)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStartBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStartBytes(J)V

    return-object v0
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.Progress.b (com.vungle.ads.internal.downloader.AssetDownloadListener$Progress$b)
.class public interface abstract annotation Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.Progress.b.Companion (com.vungle.ads.internal.downloader.AssetDownloadListener$Progress$b$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;",
        "",
        "()V",
        "CANCELLED",
        "",
        "getCANCELLED",
        "()I",
        "setCANCELLED",
        "(I)V",
        "DONE",
        "getDONE",
        "setDONE",
        "ERROR",
        "getERROR",
        "setERROR",
        "IN_PROGRESS",
        "getIN_PROGRESS",
        "setIN_PROGRESS",
        "LOST_CONNECTION",
        "getLOST_CONNECTION",
        "setLOST_CONNECTION",
        "PAUSED",
        "getPAUSED",
        "setPAUSED",
        "STARTED",
        "getSTARTED",
        "setSTARTED",
        "STATE_CHANGED",
        "getSTATE_CHANGED",
        "setSTATE_CHANGED",
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
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

.field private static CANCELLED:I

.field private static DONE:I

.field private static ERROR:I

.field private static IN_PROGRESS:I

.field private static LOST_CONNECTION:I

.field private static PAUSED:I

.field private static STARTED:I

.field private static STATE_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;

    const/4 v0, 0x1

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->IN_PROGRESS:I

    const/4 v0, 0x2

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->PAUSED:I

    const/4 v0, 0x3

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->CANCELLED:I

    const/4 v0, 0x4

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->DONE:I

    const/4 v0, 0x5

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->LOST_CONNECTION:I

    const/4 v0, 0x6

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->STATE_CHANGED:I

    const/4 v0, 0x7

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCANCELLED()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->CANCELLED:I

    return v0
.end method

.method public final getDONE()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->DONE:I

    return v0
.end method

.method public final getERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->ERROR:I

    return v0
.end method

.method public final getIN_PROGRESS()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->IN_PROGRESS:I

    return v0
.end method

.method public final getLOST_CONNECTION()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->LOST_CONNECTION:I

    return v0
.end method

.method public final getPAUSED()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->PAUSED:I

    return v0
.end method

.method public final getSTARTED()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->STARTED:I

    return v0
.end method

.method public final getSTATE_CHANGED()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->STATE_CHANGED:I

    return v0
.end method

.method public final setCANCELLED(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->CANCELLED:I

    return-void
.end method

.method public final setDONE(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->DONE:I

    return-void
.end method

.method public final setERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->ERROR:I

    return-void
.end method

.method public final setIN_PROGRESS(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->IN_PROGRESS:I

    return-void
.end method

.method public final setLOST_CONNECTION(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->LOST_CONNECTION:I

    return-void
.end method

.method public final setPAUSED(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->PAUSED:I

    return-void
.end method

.method public final setSTARTED(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->STARTED:I

    return-void
.end method

.method public final setSTATE_CHANGED(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$b$a;->STATE_CHANGED:I

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.a (com.vungle.ads.internal.downloader.AssetDownloadListener$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;,
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\n\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;",
        "",
        "serverCode",
        "",
        "cause",
        "",
        "reason",
        "(ILjava/lang/Throwable;I)V",
        "getCause",
        "()Ljava/lang/Throwable;",
        "getReason",
        "()I",
        "getServerCode",
        "Companion",
        "ErrorReason",
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
.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;

.field public static final DEFAULT_SERVER_CODE:I = -0x1


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final reason:I
    .annotation runtime Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;
    .end annotation
.end field

.field private final serverCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .registers 5

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->serverCode:I

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->cause:Ljava/lang/Throwable;

    iput p3, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->reason:I

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getReason()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->reason:I

    return v0
.end method

.method public final getServerCode()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;->serverCode:I

    return v0
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.a.Companion (com.vungle.ads.internal.downloader.AssetDownloadListener$a$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$Companion;",
        "",
        "()V",
        "DEFAULT_SERVER_CODE",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$a;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.a.b (com.vungle.ads.internal.downloader.AssetDownloadListener$a$b)
.class public interface abstract annotation Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.AssetDownloadListener.a.b.Companion (com.vungle.ads.internal.downloader.AssetDownloadListener$a$b$a)
.class public final Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;",
        "",
        "()V",
        "CONNECTION_ERROR",
        "",
        "getCONNECTION_ERROR",
        "()I",
        "setCONNECTION_ERROR",
        "(I)V",
        "DISK_ERROR",
        "getDISK_ERROR",
        "setDISK_ERROR",
        "FILE_NOT_FOUND_ERROR",
        "getFILE_NOT_FOUND_ERROR",
        "setFILE_NOT_FOUND_ERROR",
        "INTERNAL_ERROR",
        "getINTERNAL_ERROR",
        "setINTERNAL_ERROR",
        "REQUEST_ERROR",
        "getREQUEST_ERROR",
        "setREQUEST_ERROR",
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
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

.field private static CONNECTION_ERROR:I

.field private static DISK_ERROR:I

.field private static FILE_NOT_FOUND_ERROR:I

.field private static INTERNAL_ERROR:I

.field private static REQUEST_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;

    const/4 v0, 0x1

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->REQUEST_ERROR:I

    const/4 v0, 0x2

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->DISK_ERROR:I

    const/4 v0, 0x3

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->FILE_NOT_FOUND_ERROR:I

    const/4 v0, 0x4

    sput v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->INTERNAL_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONNECTION_ERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->CONNECTION_ERROR:I

    return v0
.end method

.method public final getDISK_ERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->DISK_ERROR:I

    return v0
.end method

.method public final getFILE_NOT_FOUND_ERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->FILE_NOT_FOUND_ERROR:I

    return v0
.end method

.method public final getINTERNAL_ERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->INTERNAL_ERROR:I

    return v0
.end method

.method public final getREQUEST_ERROR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->REQUEST_ERROR:I

    return v0
.end method

.method public final setCONNECTION_ERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->CONNECTION_ERROR:I

    return-void
.end method

.method public final setDISK_ERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->DISK_ERROR:I

    return-void
.end method

.method public final setFILE_NOT_FOUND_ERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->FILE_NOT_FOUND_ERROR:I

    return-void
.end method

.method public final setINTERNAL_ERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->INTERNAL_ERROR:I

    return-void
.end method

.method public final setREQUEST_ERROR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$a$b$a;->REQUEST_ERROR:I

    return-void
.end method
