###### Class com.applovin.exoplayer2.g.e.d (com.applovin.exoplayer2.g.e.d)
.class public final Lcom/applovin/exoplayer2/g/e/d;
.super Lcom/applovin/exoplayer2/g/e/h;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/applovin/exoplayer2/g/e/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final JJ:[Lcom/applovin/exoplayer2/g/e/h;

.field public final JK:Ljava/lang/String;

.field public final JL:Z

.field public final JM:[Ljava/lang/String;

.field public final vd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/g/e/d$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/g/e/d$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/g/e/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/g/e/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/g/e/d;->JM:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Lcom/applovin/exoplayer2/g/e/h;

    iput-object v1, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    :goto_3c
    if-ge v2, v0, :cond_51

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    const-class v3, Lcom/applovin/exoplayer2/g/e/h;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/g/e/h;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/applovin/exoplayer2/g/e/h;)V
    .registers 7

    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/g/e/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    iput-object p4, p0, Lcom/applovin/exoplayer2/g/e/d;->JM:[Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    const-class v2, Lcom/applovin/exoplayer2/g/e/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3f

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/g/e/d;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    if-ne v2, v3, :cond_3d

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/d;->JM:[Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/g/e/d;->JM:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    iget-object p1, p1, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JL:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/g/e/d;->vd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JM:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/d;->JJ:[Lcom/applovin/exoplayer2/g/e/h;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_2b

    aget-object v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2b
    return-void
.end method

###### Class com.applovin.exoplayer2.g.e.d.AnonymousClass1 (com.applovin.exoplayer2.g.e.d$1)
.class Lcom/applovin/exoplayer2/g/e/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/g/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/applovin/exoplayer2/g/e/d;",
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
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/e/d$1;->m(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/e/d;

    move-result-object p1

    return-object p1
.end method

.method public dp(I)[Lcom/applovin/exoplayer2/g/e/d;
    .registers 2

    new-array p1, p1, [Lcom/applovin/exoplayer2/g/e/d;

    return-object p1
.end method

.method public m(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/e/d;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/g/e/d;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/g/e/d;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/e/d$1;->dp(I)[Lcom/applovin/exoplayer2/g/e/d;

    move-result-object p1

    return-object p1
.end method
