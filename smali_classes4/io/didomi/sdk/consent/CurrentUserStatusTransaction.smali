###### Class io.didomi.drawable.consent.CurrentUserStatusTransaction (io.didomi.sdk.consent.CurrentUserStatusTransaction)
.class public final Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0012\"\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J!\u0010\u0017\u001a\u00020\u00002\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0012\"\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J!\u0010\u001b\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0012\"\u00020\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u0015\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u0011J!\u0010\u001d\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0012\"\u00020\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J\r\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\"R \u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\'0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010&R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00080)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001a\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u0006/"
    }
    d2 = {
        "Lio/didomi/sdk/consent/CurrentUserStatusTransaction;",
        "",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "<init>",
        "(Lio/didomi/sdk/P8;Lio/didomi/sdk/V8;)V",
        "",
        "method",
        "itemType",
        "itemId",
        "",
        "logInvalidItem",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "purposeId",
        "enablePurpose",
        "(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;",
        "",
        "purposeIds",
        "enablePurposes",
        "([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;",
        "disablePurpose",
        "disablePurposes",
        "vendorId",
        "enableVendor",
        "vendorIds",
        "enableVendors",
        "disableVendor",
        "disableVendors",
        "",
        "commit",
        "()Z",
        "Lio/didomi/sdk/P8;",
        "Lio/didomi/sdk/V8;",
        "",
        "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
        "purposes",
        "Ljava/util/Map;",
        "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
        "vendors",
        "",
        "requiredPurposeIds",
        "Ljava/util/Set;",
        "",
        "requiredVendorDidomiIds",
        "Ljava/util/List;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final purposes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredPurposeIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredVendorDidomiIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userStatusRepository:Lio/didomi/sdk/P8;

.field private final vendorRepository:Lio/didomi/sdk/V8;

.field private final vendors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/P8;Lio/didomi/sdk/V8;)V
    .registers 5

    const-string v0, "userStatusRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->userStatusRepository:Lio/didomi/sdk/P8;

    iput-object p2, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->vendorRepository:Lio/didomi/sdk/V8;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->purposes:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->vendors:Ljava/util/Map;

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredPurposeIds:Ljava/util/Set;

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getDidomiId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_4e
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_52
    iput-object p2, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredVendorDidomiIds:Ljava/util/List;

    return-void
.end method

.method private final logInvalidItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " update for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", as it is not part of the required "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s of the Notice Config."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p1, p2, p3, p2}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final commit()Z
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->userStatusRepository:Lio/didomi/sdk/P8;

    invoke-virtual {v0}, Lio/didomi/sdk/P8;->b()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->purposes:Ljava/util/Map;

    invoke-static {v0, v1}, Lio/didomi/sdk/g0;->a(Lio/didomi/sdk/models/CurrentUserStatus;Ljava/util/Map;)Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->vendors:Ljava/util/Map;

    invoke-static {v1, v2}, Lio/didomi/sdk/g0;->b(Lio/didomi/sdk/models/CurrentUserStatus;Ljava/util/Map;)Lio/didomi/sdk/models/CurrentUserStatus;

    iget-object v1, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->userStatusRepository:Lio/didomi/sdk/P8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/models/CurrentUserStatus;)Z

    move-result v0

    return v0
.end method

.method public final disablePurpose(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredPurposeIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->purposes:Ljava/util/Map;

    new-instance v1, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_19
    const-string v0, "disablePurpose"

    const-string v1, "purpose"

    invoke-direct {p0, v0, v1, p1}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->logInvalidItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object p0
.end method

.method public final varargs disablePurposes([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "purposeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->disablePurpose(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-object p0
.end method

.method public final disableVendor(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredVendorDidomiIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->vendors:Ljava/util/Map;

    new-instance v1, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_19
    const-string v0, "disableVendor"

    const-string v1, "vendor"

    invoke-direct {p0, v0, v1, p1}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->logInvalidItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object p0
.end method

.method public final varargs disableVendors([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "vendorIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->disableVendor(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-object p0
.end method

.method public final enablePurpose(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredPurposeIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->purposes:Ljava/util/Map;

    new-instance v1, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_19
    const-string v0, "enablePurpose"

    const-string v1, "purpose"

    invoke-direct {p0, v0, v1, p1}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->logInvalidItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object p0
.end method

.method public final varargs enablePurposes([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "purposeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->enablePurpose(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-object p0
.end method

.method public final enableVendor(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->requiredVendorDidomiIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->vendors:Ljava/util/Map;

    new-instance v1, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_19
    const-string v0, "enableVendor"

    const-string v1, "vendor"

    invoke-direct {p0, v0, v1, p1}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->logInvalidItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object p0
.end method

.method public final varargs enableVendors([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 5

    const-string v0, "vendorIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;->enableVendor(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-object p0
.end method
