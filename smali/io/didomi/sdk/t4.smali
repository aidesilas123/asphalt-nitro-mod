###### Class io.didomi.drawable.C1901t4 (io.didomi.sdk.t4)
.class public final Lio/didomi/sdk/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/t4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a+\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0011\u0010\u0006\u001a\u00020\u0008*\u00020\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\t\u001a=\u0010\u0006\u001a\u00020\u000c*\u00020\u00012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\r\u001a/\u0010\u0006\u001a\u00020\u000c*\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u000e\u001a/\u0010\u000f\u001a\u00020\u000c*\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "",
        "",
        "availablePurposeIds",
        "",
        "a",
        "(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;",
        "alreadyListedCategoriesIds",
        "alreadyListedPurposesIds",
        "",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Companion:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getTypeAsString$android_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availablePurposeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-static {v4}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v5

    invoke-static {v4, v1, v0, p1}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_37
    sget-object v6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne v5, v6, :cond_56

    invoke-virtual {v4}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1d

    :cond_56
    sget-object v6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne v5, v6, :cond_61

    invoke-virtual {v4}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_61
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-static {v8, v0, p1}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_84
    invoke-virtual {v8}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_8c
    invoke-interface {v6, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_99
    invoke-interface {p0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/t4$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 p0, 0x2

    if-eq v0, p0, :cond_20

    const/4 p0, 0x3

    if-ne v0, p0, :cond_16

    goto :goto_20

    :cond_16
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_1c
    invoke-static {p0, p1, p2}, Lio/didomi/sdk/t4;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    :cond_20
    :goto_20
    return v1
.end method

.method private static final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/t4$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1c

    const/4 p0, 0x3

    if-ne v0, p0, :cond_16

    goto :goto_43

    :cond_16
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_1c
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_27

    goto :goto_43

    :cond_27
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_32

    goto :goto_43

    :cond_32
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_43

    :cond_3d
    const/4 v1, 0x0

    goto :goto_43

    :cond_3f
    invoke-static {p0, p2, p3}, Lio/didomi/sdk/t4;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    :goto_43
    return v1
.end method

.method private static final b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_2d

    :cond_b
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    :goto_2e
    return p0
.end method

###### Class io.didomi.drawable.C1901t4.a (io.didomi.sdk.t4$a)
.class public final synthetic Lio/didomi/sdk/t4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->values()[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Unknown:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/didomi/sdk/t4$a;->a:[I

    return-void
.end method
