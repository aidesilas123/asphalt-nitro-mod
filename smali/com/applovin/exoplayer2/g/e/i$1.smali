###### Class com.applovin.exoplayer2.g.e.i.AnonymousClass1 (com.applovin.exoplayer2.g.e.i$1)
.class Lcom/applovin/exoplayer2/g/e/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/g/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/applovin/exoplayer2/g/e/i;",
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

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/e/i$1;->p(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/e/i;

    move-result-object p1

    return-object p1
.end method

.method public du(I)[Lcom/applovin/exoplayer2/g/e/i;
    .registers 2

    new-array p1, p1, [Lcom/applovin/exoplayer2/g/e/i;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/g/e/i$1;->du(I)[Lcom/applovin/exoplayer2/g/e/i;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/os/Parcel;)Lcom/applovin/exoplayer2/g/e/i;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/g/e/i;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/g/e/i;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
