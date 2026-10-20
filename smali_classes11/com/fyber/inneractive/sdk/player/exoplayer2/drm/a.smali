###### Class com.fyber.inneractive.sdk.player.exoplayer2.drm.a (com.fyber.inneractive.sdk.player.exoplayer2.drm.a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

.field public b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    array-length p1, p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->c:I

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p2}, [Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    :cond_c
    invoke-static {p2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    :goto_10
    array-length v0, p2

    if-ge p1, v0, :cond_47

    add-int/lit8 v0, p1, -0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;)Ljava/util/UUID;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate data for uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    array-length p1, p2

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->c:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->b:Ljava/util/UUID;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    goto :goto_22

    :cond_18
    const/4 p1, 0x1

    goto :goto_22

    :cond_1a
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->b:Ljava/util/UUID;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;->b:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_22
    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->b:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->b:I

    :cond_c
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
