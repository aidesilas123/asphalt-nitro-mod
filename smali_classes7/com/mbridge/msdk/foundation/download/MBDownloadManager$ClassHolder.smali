###### Class com.mbridge.msdk.foundation.download.MBDownloadManager.ClassHolder (com.mbridge.msdk.foundation.download.MBDownloadManager$ClassHolder)
.class final Lcom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;
.super Ljava/lang/Object;
.source "MBDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/MBDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassHolder"
.end annotation


# static fields
.field private static final MB_DOWNLOAD_MANAGER:Lcom/mbridge/msdk/foundation/download/MBDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/download/MBDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/download/MBDownloadManager;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadManager$1;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;->MB_DOWNLOAD_MANAGER:Lcom/mbridge/msdk/foundation/download/MBDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mbridge/msdk/foundation/download/MBDownloadManager;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;->MB_DOWNLOAD_MANAGER:Lcom/mbridge/msdk/foundation/download/MBDownloadManager;

    return-object v0
.end method
