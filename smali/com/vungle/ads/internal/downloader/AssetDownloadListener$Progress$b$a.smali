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
