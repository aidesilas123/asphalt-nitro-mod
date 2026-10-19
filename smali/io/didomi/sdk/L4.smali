###### Class io.didomi.drawable.C1821l4 (io.didomi.sdk.l4)
.class public final Lio/didomi/sdk/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/l4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u0011BA\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0014\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/didomi/sdk/l4;",
        "",
        "",
        "Lio/didomi/sdk/k$a$b$a$b;",
        "configRestrictions",
        "Lio/didomi/sdk/d3;",
        "iabConfiguration",
        "",
        "",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "availablePurposes",
        "",
        "Lio/didomi/sdk/models/InternalVendor;",
        "requiredVendors",
        "<init>",
        "(Ljava/util/List;Lio/didomi/sdk/d3;Ljava/util/Map;Ljava/util/Set;)V",
        "",
        "a",
        "()V",
        "Lio/didomi/sdk/d3;",
        "b",
        "Ljava/util/Map;",
        "c",
        "Ljava/util/Set;",
        "Lio/didomi/sdk/k4;",
        "d",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "publisherRestrictions",
        "e",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/l4$a;


# instance fields
.field private final a:Lio/didomi/sdk/d3;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/l4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/l4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/l4;->e:Lio/didomi/sdk/l4$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/didomi/sdk/d3;Ljava/util/Map;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k$a$b$a$b;",
            ">;",
            "Lio/didomi/sdk/d3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iabConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availablePurposes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredVendors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/didomi/sdk/l4;->a:Lio/didomi/sdk/d3;

    iput-object p3, p0, Lio/didomi/sdk/l4;->b:Ljava/util/Map;

    iput-object p4, p0, Lio/didomi/sdk/l4;->c:Ljava/util/Set;

    if-eqz p1, :cond_4b

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/didomi/sdk/k$a$b$a$b;

    sget-object p4, Lio/didomi/sdk/l4;->e:Lio/didomi/sdk/l4$a;

    iget-object v0, p0, Lio/didomi/sdk/l4;->a:Lio/didomi/sdk/d3;

    invoke-interface {v0}, Lio/didomi/sdk/d3;->f()I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/l4;->b:Ljava/util/Map;

    iget-object v2, p0, Lio/didomi/sdk/l4;->c:Ljava/util/Set;

    invoke-static {p4, v0, v1, v2, p3}, Lio/didomi/sdk/l4$a;->a(Lio/didomi/sdk/l4$a;ILjava/util/Map;Ljava/util/Set;Lio/didomi/sdk/k$a$b$a$b;)Lio/didomi/sdk/k4;

    move-result-object p3

    if-eqz p3, :cond_23

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_45
    invoke-static {p2}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4f

    :cond_4b
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_4f
    iput-object p1, p0, Lio/didomi/sdk/l4;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/l4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/k4;

    invoke-virtual {v1}, Lio/didomi/sdk/k4;->f()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lio/didomi/sdk/l4;->c:Ljava/util/Set;

    invoke-static {v4, v3}, Lio/didomi/sdk/q3;->a(Ljava/util/Collection;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v3

    if-eqz v3, :cond_1c

    sget-object v4, Lio/didomi/sdk/l4;->e:Lio/didomi/sdk/l4$a;

    invoke-virtual {v4, v3, v1}, Lio/didomi/sdk/l4$a;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/k4;)V

    goto :goto_1c

    :cond_36
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/l4;->d:Ljava/util/List;

    return-object v0
.end method
