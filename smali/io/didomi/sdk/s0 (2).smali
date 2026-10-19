###### Class io.didomi.drawable.C1887s0 (io.didomi.sdk.s0)
.class public final Lio/didomi/sdk/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a+\u0010\u0004\u001a\u00020\u0003*\u0008\u0012\u0004\u0012\u00020\u00000\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/o0;",
        "Lio/didomi/sdk/A;",
        "translation",
        "",
        "a",
        "(Lio/didomi/sdk/o0;Lio/didomi/sdk/A;)V",
        "",
        "",
        "",
        "translations",
        "(Ljava/util/Set;Ljava/util/Map;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/o0;Lio/didomi/sdk/A;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {p0, v0}, Lio/didomi/sdk/o0;->setName(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {p0, v0}, Lio/didomi/sdk/o0;->setDescription(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Lio/didomi/sdk/A;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {p0, v0}, Lio/didomi/sdk/o0;->setDescriptionLegal(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p1}, Lio/didomi/sdk/A;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-interface {p0, p1}, Lio/didomi/sdk/o0;->setIllustrations(Ljava/util/List;)V

    :cond_2e
    return-void
.end method

.method public static final a(Ljava/util/Set;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lio/didomi/sdk/o0;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/o0;

    invoke-interface {v0}, Lio/didomi/sdk/o0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/A;

    if-eqz v1, :cond_e

    invoke-static {v0, v1}, Lio/didomi/sdk/s0;->a(Lio/didomi/sdk/o0;Lio/didomi/sdk/A;)V

    goto :goto_e

    :cond_2a
    return-void
.end method
