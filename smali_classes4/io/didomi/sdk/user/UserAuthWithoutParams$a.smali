###### Class io.didomi.sdk.user.UserAuthWithoutParams.a (io.didomi.sdk.user.UserAuthWithoutParams$a)
.class public final Lio/didomi/sdk/user/UserAuthWithoutParams$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/user/UserAuthWithoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/didomi/sdk/user/UserAuthWithoutParams;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lio/didomi/sdk/user/UserAuthWithoutParams;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/user/UserAuthWithoutParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/user/UserAuthWithoutParams;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(I)[Lio/didomi/sdk/user/UserAuthWithoutParams;
    .registers 2

    new-array p1, p1, [Lio/didomi/sdk/user/UserAuthWithoutParams;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/user/UserAuthWithoutParams$a;->a(Landroid/os/Parcel;)Lio/didomi/sdk/user/UserAuthWithoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/user/UserAuthWithoutParams$a;->a(I)[Lio/didomi/sdk/user/UserAuthWithoutParams;

    move-result-object p1

    return-object p1
.end method
