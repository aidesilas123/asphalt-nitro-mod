###### Class io.didomi.drawable.G8 (io.didomi.sdk.G8)
.class public final Lio/didomi/sdk/G8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/G8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0015\u0018\u0000 \u00132\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u000fJ%\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0010H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J1\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\t\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u0017\u0010\u001eJ\u0015\u0010\t\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\t\u0010\u001eJ\u0015\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u0019\u0010\u001eJ\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001a\u0010\u001eJ\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001b\u0010\u001eJ\u001b\u0010\t\u001a\u00020\u000e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0010\u00a2\u0006\u0004\u0008\t\u0010 J\u001b\u0010\u001b\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0010\u00a2\u0006\u0004\u0008\u001b\u0010 R\"\u0010\'\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R(\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010 R(\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010(\u001a\u0004\u0008\u001b\u0010*\"\u0004\u0008\u0017\u0010 R(\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010(\u001a\u0004\u0008.\u0010*\"\u0004\u0008/\u0010 R(\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010(\u001a\u0004\u0008\u001a\u0010*\"\u0004\u0008\u0019\u0010 R(\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010(\u001a\u0004\u0008+\u0010*\"\u0004\u0008.\u0010 R(\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010(\u001a\u0004\u0008\u0017\u0010*\"\u0004\u0008\u001a\u0010 R(\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*\"\u0004\u0008\u0013\u0010 R(\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010(\u001a\u0004\u0008\u0019\u0010*\"\u0004\u0008)\u0010 \u00a8\u00066"
    }
    d2 = {
        "Lio/didomi/sdk/G8;",
        "",
        "<init>",
        "()V",
        "",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "purposes",
        "requiredPurposes",
        "",
        "a",
        "(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "legitimatePurposes",
        "",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;)V",
        "",
        "personalData",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;)V",
        "j",
        "requiredLegIntPurposes",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;Ljava/util/Collection;)V",
        "purpose",
        "c",
        "(Lio/didomi/sdk/models/InternalPurpose;)V",
        "e",
        "d",
        "b",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "requiredConsentPurposes",
        "(Ljava/util/Set;)V",
        "",
        "Z",
        "getReady",
        "()Z",
        "setReady",
        "(Z)V",
        "ready",
        "Ljava/util/Set;",
        "f",
        "()Ljava/util/Set;",
        "g",
        "enabledConsentPurposes",
        "disabledConsentPurposes",
        "h",
        "i",
        "enabledLegIntPurposes",
        "disabledLegIntPurposes",
        "enabledConsentVendors",
        "disabledConsentVendors",
        "enabledLegIntVendors",
        "disabledLegIntVendors",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final j:Lio/didomi/sdk/G8$a;

.field private static final k:Lio/didomi/sdk/G8;


# instance fields
.field private a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/G8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/G8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/G8;->j:Lio/didomi/sdk/G8$a;

    new-instance v0, Lio/didomi/sdk/G8;

    invoke-direct {v0}, Lio/didomi/sdk/G8;-><init>()V

    sput-object v0, Lio/didomi/sdk/G8;->k:Lio/didomi/sdk/G8;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a()Lio/didomi/sdk/G8;
    .registers 1

    sget-object v0, Lio/didomi/sdk/G8;->k:Lio/didomi/sdk/G8;

    return-object v0
.end method

.method private final a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz p2, :cond_9

    invoke-static {p2, v2}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    invoke-static {v0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/didomi/sdk/Y;->m(Lio/didomi/sdk/consent/model/ConsentToken;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p2}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    goto :goto_62

    :cond_14
    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {p1, v3}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_45
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    invoke-static {p2}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    :goto_62
    return-void
.end method

.method private final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/didomi/sdk/Y;->n(Lio/didomi/sdk/consent/model/ConsentToken;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {p0, p2}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "consentToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredPurposes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredLegIntPurposes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/didomi/sdk/G8;->a:Z

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/didomi/sdk/G8;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/didomi/sdk/G8;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_39
    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v2}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_50
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;)V

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    invoke-direct {p0, p1, p3}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimateVendors()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/didomi/sdk/G8;->a:Z

    return-void
.end method

.method public final a(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requiredConsentPurposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v1, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    invoke-static {v1, v0}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-void
.end method

.method public final b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final b(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requiredLegIntPurposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v1, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    invoke-static {v1, v0}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-void
.end method

.method public final c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    return-object v0
.end method

.method public final c(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    return-void
.end method

.method public final d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final d(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    return-void
.end method

.method public final e()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    return-object v0
.end method

.method public final e(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->b(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    return-void
.end method

.method public final e(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    return-void
.end method

.method public final f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final f(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    return-void
.end method

.method public final g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final g(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    return-void
.end method

.method public final h()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final h(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    return-void
.end method

.method public final i()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final i(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    return-void
.end method

.method public final j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/didomi/sdk/G8;->a:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/G8;->i:Ljava/util/Set;

    return-void
.end method

.method public final j(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/G8;->h:Ljava/util/Set;

    return-void
.end method
