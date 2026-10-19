###### Class io.didomi.drawable.Y (io.didomi.sdk.Y)
.class public final Lio/didomi/sdk/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u001a\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0004\u001a\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0004\u001a\u001b\u0010\u0007\u001a\u00020\t*\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\n\u001a\u001b\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\n\u001a\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u0004\u001a\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0004\u001a\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u0004\u001a\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0004\u001a\u001b\u0010\u000f\u001a\u00020\t*\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0012\u001a\u001b\u0010\u0005\u001a\u00020\t*\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\n\u001a\u001b\u0010\u0007\u001a\u00020\t*\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0012\u001a\u0011\u0010\u0014\u001a\u00020\u0013*\u00020\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\u0013*\u00020\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0015\u001a\u0011\u0010\u0017\u001a\u00020\u0013*\u00020\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0015\u001a\u0011\u0010\u0018\u001a\u00020\u0013*\u00020\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0015\u001a\u0011\u0010\u0019\u001a\u00020\u0013*\u00020\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0015\u001a\u0091\u0001\u0010\u000b\u001a\u00020\u0013*\u00020\u00002\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u000b\u0010#\u001a\u0011\u0010\u000b\u001a\u00020\u0000*\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "",
        "",
        "h",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;",
        "d",
        "f",
        "b",
        "id",
        "Lio/didomi/sdk/consent/model/ConsentStatus;",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;",
        "a",
        "i",
        "e",
        "g",
        "c",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;",
        "",
        "l",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)Z",
        "j",
        "m",
        "n",
        "k",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "enabledPurposes",
        "disabledPurposes",
        "enabledLegitimatePurposes",
        "disabledLegitimatePurposes",
        "enabledVendors",
        "disabledVendors",
        "enabledLegIntVendors",
        "disabledLegIntVendors",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_1f
    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    :goto_21
    return-object p0
.end method

.method public static final a(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x100f

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Lio/didomi/sdk/consent/model/ConsentToken;->copy$default(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IILjava/lang/Object;)Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 p0, 0x0

    return p0

    :cond_9f
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v1, 0xa

    if-eqz p1, :cond_d2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    :cond_cf
    invoke-static {v0, v2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_d2
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p2, :cond_103

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :cond_100
    invoke-static {p1, v0}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_103
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p3, :cond_134

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p3, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_119
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_119

    :cond_131
    invoke-static {p1, p2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_134
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p4, :cond_165

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p4, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_162

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {p4}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14a

    :cond_162
    invoke-static {p1, p2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_165
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p5, :cond_196

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p5, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_17b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_193

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p4}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    :cond_193
    invoke-static {p1, p2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_196
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p6, :cond_1c7

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p6, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1ac
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1c4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p4}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1ac

    :cond_1c4
    invoke-static {p1, p2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_1c7
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p7, :cond_1f8

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p7, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1dd
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1f5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p4}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1dd

    :cond_1f5
    invoke-static {p1, p2}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_1f8
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    if-eqz p8, :cond_229

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p8, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_226

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p3}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20e

    :cond_226
    invoke-static {p0, p1}, Lkotlin/collections/d0;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_229
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p0, p1}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_1f
    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    :goto_21
    return-object p0
.end method

.method public static final b(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/q3;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lio/didomi/sdk/q3;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_1f
    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    :goto_21
    return-object p0
.end method

.method public static final c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/q3;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lio/didomi/sdk/q3;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_1f
    sget-object p0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    :goto_21
    return-object p0
.end method

.method public static final d(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lio/didomi/sdk/consent/model/ConsentToken;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/Y;->k(Lio/didomi/sdk/consent/model/ConsentToken;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public static final k(Lio/didomi/sdk/consent/model/ConsentToken;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :cond_60
    :goto_60
    return v1
.end method

.method public static final l(Lio/didomi/sdk/consent/model/ConsentToken;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_31

    :cond_1c
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    return v1
.end method

.method public static final m(Lio/didomi/sdk/consent/model/ConsentToken;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static final n(Lio/didomi/sdk/consent/model/ConsentToken;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2f

    :cond_18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v1}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_58

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_5a

    :cond_42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v0}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_46

    :goto_58
    const/4 p0, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p0, 0x1

    :goto_5b
    return p0
.end method
