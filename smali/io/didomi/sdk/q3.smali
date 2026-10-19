###### Class io.didomi.drawable.C1870q3 (io.didomi.sdk.q3)
.class public final Lio/didomi/sdk/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0011\u0010\u0004\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0003\u001a\u0011\u0010\u0007\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0003\u001a\u0011\u0010\u0008\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0003\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0003\u001a\u0019\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u000c\u001a%\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0004\u0008\u0005\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0003\u001a\u0011\u0010\u0013\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0003\u001a\u001b\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0016\u001a\u0019\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0005\u0010\u0018\u001a\u0019\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0002\u0010\u0018\u001a\'\u0010\u0005\u001a\u0004\u0018\u00010\u001c*\u00020\u00002\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u001a\"\u00020\u000e\u00a2\u0006\u0004\u0008\u0005\u0010\u001d\u001a\u0011\u0010\u001f\u001a\u00020\u001e*\u00020\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a!\u0010\u0005\u001a\u0004\u0018\u00010\u0000*\u0008\u0012\u0004\u0012\u00020\u00000!2\u0006\u0010\"\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0005\u0010#\u001a\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000$*\u0008\u0012\u0004\u0012\u00020\u00000!\u00a2\u0006\u0004\u0008\u0005\u0010%\u001a\'\u0010\u0005\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0008\u0010\"\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0005\u0010&\u001a)\u0010\u0002\u001a\u0004\u0018\u00010\u0000*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0008\u0010\"\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0002\u0010\'\u001aK\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00000!\u00a2\u0006\u0004\u0008\u0005\u0010)\u001a)\u0010\u0005\u001a\u0004\u0018\u00010\u0000*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0006\u0010\n\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lio/didomi/sdk/models/InternalVendor;",
        "",
        "b",
        "(Lio/didomi/sdk/models/InternalVendor;)Z",
        "c",
        "a",
        "g",
        "e",
        "f",
        "d",
        "didomiVendor",
        "",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)V",
        "",
        "",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "availablePurposes",
        "(Lio/didomi/sdk/models/InternalVendor;Ljava/util/Map;)V",
        "h",
        "i",
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "disclosures",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V",
        "purposeId",
        "(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;)Z",
        "purposeIabId",
        "",
        "languages",
        "Lio/didomi/sdk/Vendor$Url;",
        "(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;",
        "Lio/didomi/sdk/Vendor;",
        "j",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/Vendor;",
        "",
        "id",
        "(Ljava/util/Collection;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;",
        "",
        "(Ljava/util/Collection;)Ljava/util/List;",
        "(Ljava/util/Map;Ljava/lang/String;)Z",
        "(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;",
        "didomiVendors",
        "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;",
        "(Ljava/util/Map;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/models/InternalVendor;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private static final a(Lkotlin/jvm/b/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final varargs a(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/k;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/f;

    move-result-object p1

    new-instance v0, Lio/didomi/sdk/q3$a;

    invoke-direct {v0, p0}, Lio/didomi/sdk/q3$a;-><init>(Lio/didomi/sdk/models/InternalVendor;)V

    invoke-static {p1, v0}, Lkotlin/sequences/i;->mapNotNull(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/i;->firstOrNull(Lkotlin/sequences/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/Vendor$Url;

    return-object p0
.end method

.method public static final a(Ljava/util/Collection;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/didomi/sdk/models/InternalVendor;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :cond_37
    :goto_37
    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    return-object v0
.end method

.method private static final a(Ljava/util/Map;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/models/InternalVendor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lio/didomi/sdk/models/InternalVendor;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p1}, Lio/didomi/sdk/Vendor$Namespaces;->getIab2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-static {p0, v1}, Lio/didomi/sdk/q3;->b(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    return-object p0

    :cond_1d
    invoke-virtual {p1, v0}, Lio/didomi/sdk/Vendor$Namespaces;->setIab2(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/q3$b;->a:Lio/didomi/sdk/q3$b;

    new-instance v1, Lio/didomi/sdk/gf;

    invoke-direct {v1, v0}, Lio/didomi/sdk/gf;-><init>(Lkotlin/jvm/b/p;)V

    invoke-static {p0, v1}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availablePurposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "didomiVendors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {p0, v2}, Lio/didomi/sdk/q3;->a(Ljava/util/Map;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_50
    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v2}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)V

    :goto_5a
    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_62
    invoke-static {v2, p1}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_6d
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_75
    :goto_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalVendor;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_97
    return-object v1
.end method

.method public static final a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/models/InternalVendor;->setDeviceStorageDisclosureComplete(Z)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/InternalVendor;->setDeviceStorageDisclosures(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V

    return-void
.end method

.method public static final a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "didomiVendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/models/InternalVendor;->setIabId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/models/InternalVendor;->setId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/models/InternalVendor;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/InternalVendor;->setNamespaces(Lio/didomi/sdk/Vendor$Namespaces;)V

    return-void
.end method

.method public static final a(Lio/didomi/sdk/models/InternalVendor;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availablePurposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2e
    invoke-static {v1}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/models/InternalVendor;->setPurposeIds(Ljava/util/List;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_59
    invoke-static {v1}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/InternalVendor;->setLegIntPurposeIds(Ljava/util/List;)V

    return-void
.end method

.method public static final a(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getFeatureIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getDataDeclaration()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_54

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_55

    :cond_54
    const/4 v1, 0x0

    :cond_55
    return v1
.end method

.method public static final a(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method public static final a(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/didomi/sdk/q3;->b(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static final b(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/didomi/sdk/models/InternalVendor;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-nez v0, :cond_36

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getIabId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    :cond_36
    return-object v0
.end method

.method public static final b(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_12

    goto :goto_29

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1e

    goto :goto_29

    :cond_1e
    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public static final b(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purposeIabId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public static final d(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final e(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getNamespace()Ljava/lang/String;

    move-result-object p0

    const-string v0, "didomi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final f(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final g(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/q3;->f(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lio/didomi/sdk/q3;->d(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static final h(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getCookieMaxAgeSeconds()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getUsesNonCookieAccess()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static final i(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/q3;->h(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosureUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static final j(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/Vendor;
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getDidomiId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_f
    move-object v2, v0

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getFeatureIds()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getFlexiblePurposeIds()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialPurposeIds()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getUrls()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result v13

    new-instance p0, Lio/didomi/sdk/Vendor;

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lio/didomi/sdk/Vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object p0
.end method

.method public static synthetic k(Lkotlin/jvm/b/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/q3;->a(Lkotlin/jvm/b/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
