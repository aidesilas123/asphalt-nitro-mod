###### Class com.mbridge.msdk.out.NativeListener (com.mbridge.msdk.out.NativeListener)
.class public Lcom/mbridge/msdk/out/NativeListener;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/out/NativeListener$Template;,
        Lcom/mbridge/msdk/out/NativeListener$FilpListener;,
        Lcom/mbridge/msdk/out/NativeListener$TrackingExListener;,
        Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;,
        Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.mbridge.msdk.out.NativeListener.FilpListener (com.mbridge.msdk.out.NativeListener$FilpListener)
.class public interface abstract Lcom/mbridge/msdk/out/NativeListener$FilpListener;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilpListener"
.end annotation


# virtual methods
.method public abstract filpEvent(I)V
.end method

###### Class com.mbridge.msdk.out.NativeListener.NativeAdListener (com.mbridge.msdk.out.NativeListener$NativeAdListener)
.class public interface abstract Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdListener"
.end annotation


# virtual methods
.method public abstract onAdClick(Lcom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onAdFramesLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadError(Ljava/lang/String;)V
.end method

.method public abstract onAdLoaded(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onLoggingImpression(I)V
.end method

###### Class com.mbridge.msdk.out.NativeListener.NativeTrackingListener (com.mbridge.msdk.out.NativeListener$NativeTrackingListener)
.class public interface abstract Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
.super Ljava/lang/Object;
.source "NativeListener.java"

# interfaces
.implements Lcom/mbridge/msdk/out/BaseTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeTrackingListener"
.end annotation


# virtual methods
.method public abstract onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onInterceptDefaultLoadingDialog()Z
.end method

.method public abstract onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V
.end method

###### Class com.mbridge.msdk.out.NativeListener.Template (com.mbridge.msdk.out.NativeListener$Template)
.class public Lcom/mbridge/msdk/out/NativeListener$Template;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# instance fields
.field private adNum:I

.field private id:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->id:I

    iput p2, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    return-void
.end method


# virtual methods
.method public getAdNum()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->id:I

    return v0
.end method

.method public setAdNum(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/out/NativeListener$Template;->id:I

    return-void
.end method

###### Class com.mbridge.msdk.out.NativeListener.TrackingExListener (com.mbridge.msdk.out.NativeListener$TrackingExListener)
.class public interface abstract Lcom/mbridge/msdk/out/NativeListener$TrackingExListener;
.super Ljava/lang/Object;
.source "NativeListener.java"

# interfaces
.implements Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrackingExListener"
.end annotation


# virtual methods
.method public abstract onLeaveApp()V
.end method
