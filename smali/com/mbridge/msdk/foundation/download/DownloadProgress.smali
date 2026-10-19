###### Class com.mbridge.msdk.foundation.download.DownloadProgress (com.mbridge.msdk.foundation.download.DownloadProgress)
.class public Lcom/mbridge/msdk/foundation/download/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mbridge/msdk/foundation/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:J

.field private currentDownloadRate:I

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadProgress$1;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/download/DownloadProgress$1;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->current:J

    iput-wide p3, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->total:J

    iput p5, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->currentDownloadRate:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->current:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->total:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->currentDownloadRate:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->current:J

    return-wide v0
.end method

.method public getCurrentDownloadRate()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->currentDownloadRate:I

    return v0
.end method

.method public getTotal()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->total:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->current:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->currentDownloadRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.download.DownloadProgress.AnonymousClass1 (com.mbridge.msdk.foundation.download.DownloadProgress$1)
.class final Lcom/mbridge/msdk/foundation/download/DownloadProgress$1;
.super Ljava/lang/Object;
.source "DownloadProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/DownloadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mbridge/msdk/foundation/download/DownloadProgress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mbridge/msdk/foundation/download/DownloadProgress;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadProgress$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mbridge/msdk/foundation/download/DownloadProgress;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/mbridge/msdk/foundation/download/DownloadProgress;
    .registers 2

    new-array p1, p1, [Lcom/mbridge/msdk/foundation/download/DownloadProgress;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadProgress$1;->newArray(I)[Lcom/mbridge/msdk/foundation/download/DownloadProgress;

    move-result-object p1

    return-object p1
.end method
