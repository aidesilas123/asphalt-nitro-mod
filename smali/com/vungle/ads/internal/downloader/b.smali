###### Class com.vungle.ads.internal.downloader.Downloader (com.vungle.ads.internal.downloader.b)
.class public interface abstract Lcom/vungle/ads/internal/downloader/b;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/b$a;,
        Lcom/vungle/ads/internal/downloader/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u000b\u000cJ\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u001c\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/Downloader;",
        "",
        "cancel",
        "",
        "request",
        "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
        "cancelAll",
        "download",
        "downloadRequest",
        "downloadListener",
        "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;",
        "NetworkType",
        "RequestException",
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
.method public abstract cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
.end method

###### Class com.vungle.ads.internal.downloader.Downloader.a (com.vungle.ads.internal.downloader.b$a)
.class public interface abstract annotation Lcom/vungle/ads/internal/downloader/b$a;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/b$a$a;
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
        "Lcom/vungle/ads/internal/downloader/Downloader$NetworkType;",
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
.field public static final Companion:Lcom/vungle/ads/internal/downloader/b$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/downloader/b$a$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/b$a$a;

    sput-object v0, Lcom/vungle/ads/internal/downloader/b$a;->Companion:Lcom/vungle/ads/internal/downloader/b$a$a;

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.Downloader.a.Companion (com.vungle.ads.internal.downloader.b$a$a)
.class public final Lcom/vungle/ads/internal/downloader/b$a$a;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;",
        "",
        "()V",
        "ANY",
        "",
        "getANY",
        "()I",
        "setANY",
        "(I)V",
        "CELLULAR",
        "getCELLULAR",
        "setCELLULAR",
        "WIFI",
        "getWIFI",
        "setWIFI",
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
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/b$a$a;

.field private static ANY:I

.field private static CELLULAR:I

.field private static WIFI:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/downloader/b$a$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/b$a$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/downloader/b$a$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/b$a$a;

    const/4 v0, 0x1

    sput v0, Lcom/vungle/ads/internal/downloader/b$a$a;->CELLULAR:I

    const/4 v1, 0x2

    sput v1, Lcom/vungle/ads/internal/downloader/b$a$a;->WIFI:I

    or-int/2addr v0, v1

    sput v0, Lcom/vungle/ads/internal/downloader/b$a$a;->ANY:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getANY()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/b$a$a;->ANY:I

    return v0
.end method

.method public final getCELLULAR()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/b$a$a;->CELLULAR:I

    return v0
.end method

.method public final getWIFI()I
    .registers 2

    sget v0, Lcom/vungle/ads/internal/downloader/b$a$a;->WIFI:I

    return v0
.end method

.method public final setANY(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/b$a$a;->ANY:I

    return-void
.end method

.method public final setCELLULAR(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/b$a$a;->CELLULAR:I

    return-void
.end method

.method public final setWIFI(I)V
    .registers 2

    sput p1, Lcom/vungle/ads/internal/downloader/b$a$a;->WIFI:I

    return-void
.end method

###### Class com.vungle.ads.internal.downloader.Downloader.b (com.vungle.ads.internal.downloader.b$b)
.class public final Lcom/vungle/ads/internal/downloader/b$b;
.super Ljava/lang/Exception;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/Downloader$RequestException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "message",
        "",
        "(Ljava/lang/String;)V",
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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
