###### Class io.didomi.drawable.C1902t5 (io.didomi.sdk.t5)
.class public final Lio/didomi/sdk/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\n\u001a\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u001a\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0004\u001a\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0004\u001a\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0004\u001a\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0004\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\n\u0010\u0004\u001a\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
        "",
        "",
        "e",
        "(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;",
        "a",
        "g",
        "c",
        "f",
        "b",
        "h",
        "d",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getConsentPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getDisabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final b(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getConsentVendors()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getDisabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final c(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getLiPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getDisabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final d(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getLiVendors()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getDisabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final e(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getConsentPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getEnabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final f(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getConsentVendors()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getEnabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final g(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getLiPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getEnabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static final h(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/user/sync/model/ResponseConsents;->getLiVendors()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/consent/model/ConsentChoices;->getEnabled()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method
