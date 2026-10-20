###### Class com.vungle.ads.internal.ImpressionTracker.c (com.vungle.ads.internal.ImpressionTracker$c)
.class public final Lcom/vungle/ads/internal/ImpressionTracker$c;
.super Ljava/lang/Object;
.source "ImpressionTracker.kt"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;",
        "",
        "()V",
        "impressionListener",
        "Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;",
        "getImpressionListener",
        "()Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;",
        "setImpressionListener",
        "(Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;)V",
        "minViewablePercent",
        "",
        "getMinViewablePercent",
        "()I",
        "setMinViewablePercent",
        "(I)V",
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
.field private impressionListener:Lcom/vungle/ads/internal/ImpressionTracker$b;

.field private minViewablePercent:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImpressionListener()Lcom/vungle/ads/internal/ImpressionTracker$b;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$c;->impressionListener:Lcom/vungle/ads/internal/ImpressionTracker$b;

    return-object v0
.end method

.method public final getMinViewablePercent()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$c;->minViewablePercent:I

    return v0
.end method

.method public final setImpressionListener(Lcom/vungle/ads/internal/ImpressionTracker$b;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$c;->impressionListener:Lcom/vungle/ads/internal/ImpressionTracker$b;

    return-void
.end method

.method public final setMinViewablePercent(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$c;->minViewablePercent:I

    return-void
.end method
