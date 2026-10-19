###### Class com.applovin.exoplayer2.d.e (com.applovin.exoplayer2.d.e)
.class public final Lcom/applovin/exoplayer2/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/applovin/exoplayer2/d/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/applovin/exoplayer2/d/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dS:I

.field private final tb:[Lcom/applovin/exoplayer2/d/e$a;

.field public final tc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final td:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/e$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/e$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    sget-object v0, Lcom/applovin/exoplayer2/d/e$a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/d/e$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/d/e$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    array-length p1, p1

    iput p1, p0, Lcom/applovin/exoplayer2/d/e;->td:I

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/applovin/exoplayer2/d/e$a;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    if-eqz p2, :cond_e

    invoke-virtual {p3}, [Lcom/applovin/exoplayer2/d/e$a;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/applovin/exoplayer2/d/e$a;

    :cond_e
    iput-object p3, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    array-length p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/d/e;->td:I

    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/applovin/exoplayer2/d/e$a;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/exoplayer2/d/e;-><init>(Ljava/lang/String;Z[Lcom/applovin/exoplayer2/d/e$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/applovin/exoplayer2/d/e$a;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/d/e$a;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/applovin/exoplayer2/d/e;-><init>(Ljava/lang/String;Z[Lcom/applovin/exoplayer2/d/e$a;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/applovin/exoplayer2/d/e$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/d/e;-><init>(Ljava/lang/String;[Lcom/applovin/exoplayer2/d/e$a;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lcom/applovin/exoplayer2/d/e;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Lcom/applovin/exoplayer2/d/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/d/e;-><init>(Ljava/lang/String;Z[Lcom/applovin/exoplayer2/d/e$a;)V

    return-object v0
.end method

.method public a(Lcom/applovin/exoplayer2/d/e$a;Lcom/applovin/exoplayer2/d/e$a;)I
    .registers 5

    sget-object v0, Lcom/applovin/exoplayer2/h;->aj:Ljava/util/UUID;

    iget-object v1, p1, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object p1, p2, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    goto :goto_1e

    :cond_14
    const/4 p1, 0x1

    goto :goto_1e

    :cond_16
    iget-object p1, p1, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    iget-object p2, p2, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_1e
    return p1
.end method

.method public bC(I)Lcom/applovin/exoplayer2/d/e$a;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/applovin/exoplayer2/d/e$a;

    check-cast p2, Lcom/applovin/exoplayer2/d/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/d/e;->a(Lcom/applovin/exoplayer2/d/e$a;Lcom/applovin/exoplayer2/d/e$a;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

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

    if-eqz p1, :cond_29

    const-class v2, Lcom/applovin/exoplayer2/d/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_29

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/d/e;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/d/e;->dS:I

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/d/e;->dS:I

    :cond_19
    iget v0, p0, Lcom/applovin/exoplayer2/d/e;->dS:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e;->tb:[Lcom/applovin/exoplayer2/d/e$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.e.AnonymousClass1 (com.applovin.exoplayer2.d.e$1)
.class Lcom/applovin/exoplayer2/d/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/applovin/exoplayer2/d/e;",
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
.method public a(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/d/e;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/d/e;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/d/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bD(I)[Lcom/applovin/exoplayer2/d/e;
    .registers 2

    new-array p1, p1, [Lcom/applovin/exoplayer2/d/e;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/d/e$1;->a(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/d/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/d/e$1;->bD(I)[Lcom/applovin/exoplayer2/d/e;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.d.e.a (com.applovin.exoplayer2.d.e$a)
.class public final Lcom/applovin/exoplayer2/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dS:I

.field public final eg:Ljava/lang/String;

.field public final ey:Ljava/util/UUID;

.field public final te:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tf:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/e$a$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/e$a$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/e$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;)Z
    .registers 4

    sget-object v0, Lcom/applovin/exoplayer2/h;->aj:Ljava/util/UUID;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/applovin/exoplayer2/d/e$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/d/e$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    iget-object v3, p1, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    iget-object p1, p1, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/d/e$a;->dS:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/d/e$a;->dS:I

    :cond_2b
    iget v0, p0, Lcom/applovin/exoplayer2/d/e$a;->dS:I

    return v0
.end method

.method public o([B)Lcom/applovin/exoplayer2/d/e$a;
    .registers 6
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/applovin/exoplayer2/d/e$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->ey:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->te:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->eg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.e.a.AnonymousClass1 (com.applovin.exoplayer2.d.e$a$1)
.class Lcom/applovin/exoplayer2/d/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/applovin/exoplayer2/d/e$a;",
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
.method public b(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/d/e$a;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/d/e$a;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bE(I)[Lcom/applovin/exoplayer2/d/e$a;
    .registers 2

    new-array p1, p1, [Lcom/applovin/exoplayer2/d/e$a;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/d/e$a$1;->b(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/d/e$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/d/e$a$1;->bE(I)[Lcom/applovin/exoplayer2/d/e$a;

    move-result-object p1

    return-object p1
.end method
