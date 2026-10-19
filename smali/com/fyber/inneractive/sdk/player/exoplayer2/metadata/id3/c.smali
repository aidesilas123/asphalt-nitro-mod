###### Class com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.c (com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_41

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    const-class v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;)V
    .registers 10

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    iput-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    iput-wide p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    iput-object p8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;

    if-eq v3, v2, :cond_10

    goto :goto_45

    :cond_10
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;->g:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_2e

    aget-object v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.c.a (com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.c$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/c;

    return-object p1
.end method
