###### Class com.facebook.ads.redexgen.X.C0976Dx (com.facebook.ads.redexgen.X.Dx)
.class public final Lcom/facebook/ads/redexgen/X/Dx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadManager$TaskState$State;
    }
.end annotation


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

.field public final A05:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dx;->A02:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dx;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Dx;->A01:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Dx;->A00:F

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Dx;->A03:J

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Dx;->A05:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/Dn;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Dx;-><init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method
