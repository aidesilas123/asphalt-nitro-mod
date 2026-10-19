###### Class com.nearme.game.sdk.common.model.biz.ReqUserInfoParam (com.nearme.game.sdk.common.model.biz.ReqUserInfoParam)
.class public Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
.super Ljava/lang/Object;
.source "ReqUserInfoParam.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x61c2c375cedc5b28L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$a;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$a;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.nearme.game.sdk.common.model.biz.ReqUserInfoParam.a (com.nearme.game.sdk.common.model.biz.ReqUserInfoParam$a)
.class final Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$a;
.super Ljava/lang/Object;
.source "ReqUserInfoParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;",
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
.method public final a(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    invoke-direct {v1, v0, p1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(I)[Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
    .registers 2

    new-array p1, p1, [Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$a;->a(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$a;->b(I)[Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    move-result-object p1

    return-object p1
.end method
