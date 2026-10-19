###### Class com.applovin.exoplayer2.g.g.g (com.applovin.exoplayer2.g.g.g)
.class public final Lcom/applovin/exoplayer2/g/g/g;
.super Lcom/applovin/exoplayer2/g/g/b;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/applovin/exoplayer2/g/g/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final KK:J

.field public final KL:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/g/g/g$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/g/g/g$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/g/g/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/g/g/b;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/g/g/g;->KK:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/g/g/g;->KL:J

    return-void
.end method

.method synthetic constructor <init>(JJLcom/applovin/exoplayer2/g/g/g$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/g/g/g;-><init>(JJ)V

    return-void
.end method

.method static b(Lcom/applovin/exoplayer2/l/y;JLcom/applovin/exoplayer2/l/ag;)Lcom/applovin/exoplayer2/g/g/g;
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/g/g/g;->e(Lcom/applovin/exoplayer2/l/y;J)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    move-result-wide p2

    new-instance v0, Lcom/applovin/exoplayer2/g/g/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/exoplayer2/g/g/g;-><init>(JJ)V

    return-object v0
.end method

.method static e(Lcom/applovin/exoplayer2/l/y;J)J
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_21

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_26

    :cond_21
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_26
    return-wide p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/applovin/exoplayer2/g/g/g;->KK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/g/g/g;->KL:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

###### Class com.applovin.exoplayer2.g.g.g.AnonymousClass1 (com.applovin.exoplayer2.g.g.g$1)
.class Lcom/applovin/exoplayer2/g/g/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/g/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/applovin/exoplayer2/g/g/g;",
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
.method public J(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/g/g;
    .registers 9

    new-instance v6, Lcom/applovin/exoplayer2/g/g/g;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/g/g/g;-><init>(JJLcom/applovin/exoplayer2/g/g/g$1;)V

    return-object v6
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/g/g$1;->J(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/g/g;

    move-result-object p1

    return-object p1
.end method

.method public dI(I)[Lcom/applovin/exoplayer2/g/g/g;
    .registers 2

    new-array p1, p1, [Lcom/applovin/exoplayer2/g/g/g;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/g/g$1;->dI(I)[Lcom/applovin/exoplayer2/g/g/g;

    move-result-object p1

    return-object p1
.end method
