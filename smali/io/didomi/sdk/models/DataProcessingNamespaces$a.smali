###### Class io.didomi.sdk.models.DataProcessingNamespaces.a (io.didomi.sdk.models.DataProcessingNamespaces$a)
.class public final Lio/didomi/sdk/models/DataProcessingNamespaces$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/DataProcessingNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/didomi/sdk/models/DataProcessingNamespaces;",
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
.method public final a(Landroid/os/Parcel;)Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/DataProcessingNamespaces;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_17

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_17
    invoke-direct {v0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final a(I)[Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 2

    new-array p1, p1, [Lio/didomi/sdk/models/DataProcessingNamespaces;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces$a;->a(Landroid/os/Parcel;)Lio/didomi/sdk/models/DataProcessingNamespaces;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces$a;->a(I)[Lio/didomi/sdk/models/DataProcessingNamespaces;

    move-result-object p1

    return-object p1
.end method
