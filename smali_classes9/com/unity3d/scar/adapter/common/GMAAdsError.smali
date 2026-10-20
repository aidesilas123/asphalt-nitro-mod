###### Class com.unity3d.scar.adapter.common.GMAAdsError (com.unity3d.scar.adapter.common.GMAAdsError)
.class public Lcom/unity3d/scar/adapter/common/GMAAdsError;
.super Lcom/unity3d/scar/adapter/common/j;
.source "GMAAdsError.java"


# direct methods
.method public varargs constructor <init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/scar/adapter/common/j;-><init>(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/scar/adapter/common/j;-><init>(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static AdNotLoadedError(Lcom/unity3d/scar/adapter/common/scarads/c;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cannot show ad that is not loaded for placement %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->t:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    const/4 p0, 0x2

    aput-object v1, v5, p0

    invoke-direct {v2, v4, v1, v5}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static AdapterCreationError(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 4

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->g:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static InternalLoadError(Lcom/unity3d/scar/adapter/common/scarads/c;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 7

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->n:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->d()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {v0, v1, p1, v2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static InternalShowError(Lcom/unity3d/scar/adapter/common/scarads/c;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 7

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->s:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->d()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {v0, v1, p1, v2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static InternalSignalsError(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 5

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->j:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static NoAdsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 7

    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->q:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-direct {v0, v1, p2, v2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static QueryNotFoundError(Lcom/unity3d/scar/adapter/common/scarads/c;)Lcom/unity3d/scar/adapter/common/GMAAdsError;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Missing queryInfoMetadata for ad %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->o:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/common/scarads/c;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    const/4 p0, 0x2

    aput-object v1, v5, p0

    invoke-direct {v2, v4, v1, v5}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    const-string v0, "GMA"

    return-object v0
.end method
