###### Class com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId (com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId)
.class public Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;
.super Ljava/lang/Object;
.source "UniquePlacementId.java"


# static fields
.field public static final NO_ID:Ljava/lang/String; = "-1"


# instance fields
.field private mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;->mPlacementId:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;->mPlacementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method
