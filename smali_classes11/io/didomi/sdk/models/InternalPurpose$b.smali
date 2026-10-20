###### Class io.didomi.sdk.models.InternalPurpose.b (io.didomi.sdk.models.InternalPurpose$b)
.class public final Lio/didomi/sdk/models/InternalPurpose$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/InternalPurpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/didomi/sdk/models/InternalPurpose;",
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
.method public final a(Landroid/os/Parcel;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_2b

    const/4 v11, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v11, 0x0

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    const/4 v12, 0x1

    goto :goto_35

    :cond_34
    const/4 v12, 0x0

    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v13, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v13, 0x0

    :goto_3e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    const/4 v14, 0x1

    goto :goto_47

    :cond_46
    const/4 v14, 0x0

    :goto_47
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_53

    const/4 v2, 0x0

    goto :goto_59

    :cond_53
    sget-object v2, Lio/didomi/sdk/models/DataProcessingNamespaces;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    :goto_59
    move-object/from16 v16, v2

    check-cast v16, Lio/didomi/sdk/models/DataProcessingNamespaces;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    const/16 v17, 0x1

    goto :goto_68

    :cond_66
    const/16 v17, 0x0

    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    move-object v2, v1

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lio/didomi/sdk/models/InternalPurpose;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V

    return-object v1
.end method

.method public final a(I)[Lio/didomi/sdk/models/InternalPurpose;
    .registers 2

    new-array p1, p1, [Lio/didomi/sdk/models/InternalPurpose;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/InternalPurpose$b;->a(Landroid/os/Parcel;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/InternalPurpose$b;->a(I)[Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    return-object p1
.end method
