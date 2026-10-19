###### Class io.didomi.drawable.P8 (io.didomi.sdk.P8)
.class public final Lio/didomi/sdk/P8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001d\u0010\u0015\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u001dJ\u001d\u0010\u001e\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ-\u0010\u0015\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00172\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\"J\r\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010\u001e\u001a\u00020&\u00a2\u0006\u0004\u0008\u001e\u0010\'J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010(\u001a\u00020&\u00a2\u0006\u0004\u0008\u0015\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010.R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010/R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u0008,\u00107R\u001b\u0010;\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00106\u001a\u0004\u00080\u0010:R\u0014\u0010>\u001a\u00020<8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lio/didomi/sdk/P8;",
        "",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/j0;",
        "dcsRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/M8;",
        "userRepository",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/j0;Lio/didomi/sdk/M2;Lio/didomi/sdk/M8;Lio/didomi/sdk/V8;)V",
        "Lio/didomi/sdk/consent/model/ConsentStatus;",
        "status",
        "",
        "a",
        "(Lio/didomi/sdk/consent/model/ConsentStatus;)Z",
        "Lio/didomi/sdk/models/UserStatus$Ids;",
        "e",
        "()Lio/didomi/sdk/models/UserStatus$Ids;",
        "",
        "",
        "vendorIDsWithEssentialPurposesOnly",
        "(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;",
        "b",
        "globalConsentVendorStatusIDs",
        "globalLegitimateVendorStatusIDs",
        "vendorsWithNoConsentNorLIPurposes",
        "(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;",
        "Lio/didomi/sdk/models/UserStatus;",
        "d",
        "()Lio/didomi/sdk/models/UserStatus;",
        "Lio/didomi/sdk/models/CurrentUserStatus;",
        "()Lio/didomi/sdk/models/CurrentUserStatus;",
        "currentUserStatus",
        "(Lio/didomi/sdk/models/CurrentUserStatus;)Z",
        "Lio/didomi/sdk/apiEvents/b;",
        "Lio/didomi/sdk/H;",
        "c",
        "Lio/didomi/sdk/V;",
        "Lio/didomi/sdk/j0;",
        "Lio/didomi/sdk/M2;",
        "f",
        "Lio/didomi/sdk/M8;",
        "g",
        "Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/Regulation;",
        "h",
        "Lkotlin/Lazy;",
        "()Lio/didomi/sdk/Regulation;",
        "regulation",
        "i",
        "()Z",
        "isNoRegulation",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "()Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/apiEvents/b;

.field private final b:Lio/didomi/sdk/H;

.field private final c:Lio/didomi/sdk/V;

.field private final d:Lio/didomi/sdk/j0;

.field private final e:Lio/didomi/sdk/M2;

.field private final f:Lio/didomi/sdk/M8;

.field private final g:Lio/didomi/sdk/V8;

.field private final h:Lkotlin/i;

.field private final i:Lkotlin/i;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/j0;Lio/didomi/sdk/M2;Lio/didomi/sdk/M8;Lio/didomi/sdk/V8;)V
    .registers 9

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dcsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/P8;->a:Lio/didomi/sdk/apiEvents/b;

    iput-object p2, p0, Lio/didomi/sdk/P8;->b:Lio/didomi/sdk/H;

    iput-object p3, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    iput-object p4, p0, Lio/didomi/sdk/P8;->d:Lio/didomi/sdk/j0;

    iput-object p5, p0, Lio/didomi/sdk/P8;->e:Lio/didomi/sdk/M2;

    iput-object p6, p0, Lio/didomi/sdk/P8;->f:Lio/didomi/sdk/M8;

    iput-object p7, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    new-instance p1, Lio/didomi/sdk/P8$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/P8$b;-><init>(Lio/didomi/sdk/P8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/P8;->h:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/P8$a;

    invoke-direct {p1, p0}, Lio/didomi/sdk/P8$a;-><init>(Lio/didomi/sdk/P8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/P8;->i:Lkotlin/i;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/P8;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/P8;->b:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a()Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Ids;"
        }
    .end annotation

    invoke-direct {p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p1, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object p2, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->s()Ljava/util/Set;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3, v0}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_4e

    :cond_14
    invoke-virtual {p1}, Lio/didomi/sdk/models/UserStatus$Ids;->getEnabled()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lio/didomi/sdk/models/UserStatus$Ids;->getEnabled()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/models/UserStatus$Ids;->getDisabled()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/models/UserStatus$Ids;->getDisabled()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->o()Ljava/util/Set;

    move-result-object p2

    iget-object p3, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {p3}, Lio/didomi/sdk/V8;->p()Ljava/util/Set;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    new-instance p3, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {p3, p2, p1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    move-object p1, p3

    :goto_4e
    return-object p1
.end method

.method private final a(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Ids;"
        }
    .end annotation

    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v4, v3}, Lio/didomi/sdk/V;->b(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v3, v4, :cond_19

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->o()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {v1, v0, p1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method

.method private final a(Lio/didomi/sdk/consent/model/ConsentStatus;)Z
    .registers 3

    sget-object v0, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-eq p1, v0, :cond_15

    invoke-direct {p0}, Lio/didomi/sdk/P8;->c()Lio/didomi/sdk/Regulation;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getMixed()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public static final synthetic b(Lio/didomi/sdk/P8;)Lio/didomi/sdk/Regulation;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/P8;->c()Lio/didomi/sdk/Regulation;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Ids;"
        }
    .end annotation

    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v4, v3}, Lio/didomi/sdk/V;->d(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v3, v4, :cond_15

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->p()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {v1, v0, p1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method

.method private final c()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/P8;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/Regulation;

    return-object v0
.end method

.method private final e()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 5

    invoke-direct {p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v1, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_56

    :cond_14
    iget-object v0, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->f()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct {v2, v1, v0}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    move-object v0, v2

    :goto_56
    return-object v0
.end method

.method private final f()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/P8;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/models/CurrentUserStatus;)Z
    .registers 17

    move-object v14, p0

    const-string v0, "currentUserStatus"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/g0;->a(Lio/didomi/sdk/models/CurrentUserStatus;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_17

    const-string v0, "currentUserStatus is not valid, user status not set"

    invoke-static {v0, v4, v3, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_17
    invoke-direct {p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "Regulation is NONE, user status not set"

    invoke-static {v0, v4, v3, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_23
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v14, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/CurrentUserStatus;->getPurposes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/CurrentUserStatus;->getPurposes()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;

    if-nez v7, :cond_66

    goto :goto_49

    :cond_66
    invoke-virtual {v6}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-virtual {v7}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;->getEnabled()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_76
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_79
    :goto_79
    invoke-virtual {v6}, Lio/didomi/sdk/models/InternalPurpose;->isConsent()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v7}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;->getEnabled()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_89
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_8d
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v14, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b0
    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/CurrentUserStatus;->getVendors()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12}, Lio/didomi/sdk/models/InternalVendor;->getDidomiId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lkotlin/collections/p;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_d3
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d7
    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/CurrentUserStatus;->getVendors()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10}, Lio/didomi/sdk/models/InternalVendor;->getDidomiId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    if-nez v11, :cond_f4

    goto :goto_d7

    :cond_f4
    invoke-static {v10}, Lio/didomi/sdk/q3;->f(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v12

    if-eqz v12, :cond_107

    invoke-virtual {v11}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result v12

    if-eqz v12, :cond_104

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_104
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_107
    :goto_107
    invoke-static {v10}, Lio/didomi/sdk/q3;->d(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v12

    if-eqz v12, :cond_d7

    invoke-virtual {v11}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result v11

    if-eqz v11, :cond_117

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    :cond_117
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    :cond_11b
    iget-object v0, v14, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    iget-object v11, v14, Lio/didomi/sdk/P8;->a:Lio/didomi/sdk/apiEvents/b;

    iget-object v12, v14, Lio/didomi/sdk/P8;->e:Lio/didomi/sdk/M2;

    const/4 v10, 0x1

    const-string v13, "external"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v13

    move-object v13, p0

    invoke-virtual/range {v0 .. v13}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    move-result v0

    return v0
.end method

.method public final b()Lio/didomi/sdk/models/CurrentUserStatus;
    .registers 15

    iget-object v0, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->k()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/d0;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/m;->coerceAtLeast(II)I

    move-result v2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v10

    if-nez v10, :cond_67

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->isConsent()Z

    move-result v10

    if-eqz v10, :cond_51

    iget-object v10, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/didomi/sdk/V;->a(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v10

    sget-object v11, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v10, v11, :cond_68

    :cond_51
    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest()Z

    move-result v10

    if-eqz v10, :cond_67

    iget-object v10, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lio/didomi/sdk/V;->c(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/consent/model/ConsentStatus;)Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_67
    const/4 v4, 0x1

    :cond_68
    invoke-direct {v8, v9, v4}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_7b
    iget-object v0, p0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/d0;->mapCapacity(I)I

    move-result v1

    invoke-static {v1, v3}, Lkotlin/ranges/m;->coerceAtLeast(II)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getDidomiId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ac

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_ac
    new-instance v7, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    invoke-direct {p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v8

    if-nez v8, :cond_e1

    invoke-static {v1}, Lio/didomi/sdk/q3;->d(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v8

    if-eqz v8, :cond_c8

    iget-object v8, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/didomi/sdk/V;->b(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v8

    sget-object v9, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v8, v9, :cond_df

    :cond_c8
    invoke-static {v1}, Lio/didomi/sdk/q3;->f(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v8

    if-eqz v8, :cond_e1

    iget-object v8, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lio/didomi/sdk/V;->d(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/consent/model/ConsentStatus;)Z

    move-result v1

    if-eqz v1, :cond_df

    goto :goto_e1

    :cond_df
    const/4 v1, 0x0

    goto :goto_e2

    :cond_e1
    :goto_e1
    const/4 v1, 0x1

    :goto_e2
    invoke-direct {v7, v3, v1}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;-><init>(Ljava/lang/String;Z)V

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    :cond_f5
    iget-object v0, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_101

    move-object v11, v1

    goto :goto_102

    :cond_101
    move-object v11, v0

    :goto_102
    iget-object v0, p0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10c

    move-object v10, v1

    goto :goto_10d

    :cond_10c
    move-object v10, v0

    :goto_10d
    sget-object v0, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/consent/model/ConsentToken;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11f

    move-object v8, v1

    goto :goto_120

    :cond_11f
    move-object v8, v3

    :goto_120
    invoke-direct {p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_130

    move-object v9, v1

    goto :goto_131

    :cond_130
    move-object v9, v0

    :goto_131
    iget-object v0, p0, Lio/didomi/sdk/P8;->f:Lio/didomi/sdk/M8;

    invoke-virtual {v0}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lio/didomi/sdk/P8;->d:Lio/didomi/sdk/j0;

    invoke-virtual {v0}, Lio/didomi/sdk/j0;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_141

    move-object v12, v1

    goto :goto_142

    :cond_141
    move-object v12, v0

    :goto_142
    invoke-direct {p0}, Lio/didomi/sdk/P8;->c()Lio/didomi/sdk/Regulation;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lio/didomi/sdk/models/CurrentUserStatus;

    move-object v4, v0

    move-object v6, v2

    invoke-direct/range {v4 .. v13}, Lio/didomi/sdk/models/CurrentUserStatus;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/models/UserStatus;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->w()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->x()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1}, Lio/didomi/sdk/P8;->a(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v3

    invoke-direct {v0, v1}, Lio/didomi/sdk/P8;->b(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2a

    new-instance v4, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v7, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v7}, Lio/didomi/sdk/V8;->m()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_4f

    :cond_2a
    new-instance v4, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v8

    invoke-virtual {v8}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    :goto_4f
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->e()Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v7

    iget-object v8, v0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v8}, Lio/didomi/sdk/V;->f()Ljava/util/Set;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v9

    if-eqz v9, :cond_6b

    new-instance v9, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v10, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v10}, Lio/didomi/sdk/V8;->j()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v6, v10, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_90

    :cond_6b
    new-instance v9, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v10

    invoke-virtual {v10}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v11

    invoke-virtual {v11}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    :goto_90
    new-instance v11, Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-direct {v11, v7, v4, v9, v8}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v4

    if-eqz v4, :cond_a7

    new-instance v4, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v7, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v7}, Lio/didomi/sdk/V8;->o()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_cc

    :cond_a7
    new-instance v4, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v8

    invoke-virtual {v8}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    :goto_cc
    move-object/from16 v16, v4

    invoke-direct {v0, v3, v1, v2}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v2

    if-eqz v2, :cond_e3

    new-instance v3, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v2, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->o()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v6, v2, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_e3
    move-object v14, v3

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v2

    if-eqz v2, :cond_f5

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v2, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->p()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v6, v2, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_f5
    move-object v15, v1

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->f()Z

    move-result v1

    if-eqz v1, :cond_108

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v2, v0, Lio/didomi/sdk/P8;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->p()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v6, v2, v5, v6}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    goto :goto_12d

    :cond_108
    new-instance v1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    :goto_12d
    move-object/from16 v17, v1

    new-instance v1, Lio/didomi/sdk/models/UserStatus$Vendors;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lio/didomi/sdk/models/UserStatus$Vendors;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;)V

    iget-object v2, v0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v2}, Lio/didomi/sdk/V;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_142

    move-object/from16 v17, v3

    goto :goto_144

    :cond_142
    move-object/from16 v17, v2

    :goto_144
    iget-object v2, v0, Lio/didomi/sdk/P8;->c:Lio/didomi/sdk/V;

    invoke-virtual {v2}, Lio/didomi/sdk/V;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14f

    move-object/from16 v16, v3

    goto :goto_151

    :cond_14f
    move-object/from16 v16, v2

    :goto_151
    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/consent/model/ConsentToken;->getCreated()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_163

    move-object v14, v3

    goto :goto_164

    :cond_163
    move-object v14, v4

    :goto_164
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->a()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_174

    move-object v15, v3

    goto :goto_175

    :cond_174
    move-object v15, v2

    :goto_175
    iget-object v2, v0, Lio/didomi/sdk/P8;->f:Lio/didomi/sdk/M8;

    invoke-virtual {v2}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lio/didomi/sdk/P8;->d:Lio/didomi/sdk/j0;

    invoke-virtual {v2}, Lio/didomi/sdk/j0;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_186

    move-object/from16 v18, v3

    goto :goto_188

    :cond_186
    move-object/from16 v18, v2

    :goto_188
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/P8;->c()Lio/didomi/sdk/Regulation;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Lio/didomi/sdk/models/UserStatus;

    move-object v10, v2

    move-object v12, v1

    invoke-direct/range {v10 .. v19}, Lio/didomi/sdk/models/UserStatus;-><init>(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Vendors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

###### Class io.didomi.sdk.P8.a (io.didomi.sdk.P8$a)
.class final Lio/didomi/sdk/P8$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/P8;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/j0;Lio/didomi/sdk/M2;Lio/didomi/sdk/M8;Lio/didomi/sdk/V8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/P8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/P8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/P8$a;->a:Lio/didomi/sdk/P8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/P8$a;->a:Lio/didomi/sdk/P8;

    invoke-static {v0}, Lio/didomi/sdk/P8;->b(Lio/didomi/sdk/P8;)Lio/didomi/sdk/Regulation;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/P8$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.P8.b (io.didomi.sdk.P8$b)
.class final Lio/didomi/sdk/P8$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/P8;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/j0;Lio/didomi/sdk/M2;Lio/didomi/sdk/M8;Lio/didomi/sdk/V8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/Regulation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Regulation;",
        "a",
        "()Lio/didomi/sdk/Regulation;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/P8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/P8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/P8$b;->a:Lio/didomi/sdk/P8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/P8$b;->a:Lio/didomi/sdk/P8;

    invoke-static {v0}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/P8;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/P8$b;->a()Lio/didomi/sdk/Regulation;

    move-result-object v0

    return-object v0
.end method
